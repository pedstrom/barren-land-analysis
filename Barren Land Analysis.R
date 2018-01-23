# Barren Land Analysis R file
#
# use: Rscript Barren\ Land\ Analysis.R "0 292 399 307"
# use: Rscript Barren\ Land\ Analysis.R "48 192 351 207" "48 392 351 407" "120 52 135 547" "260 52 275 547"
#
# Peter Edstrom
# peter@edstrom.net
# January 2018
#

library(ggplot2)
args <- commandArgs(trailingOnly = TRUE)

# setup the grid and a few vars 
#dfFlood <- expand.grid(x = 0:399, y = 0:599)
dfFlood <- expand.grid(x = 0:9, y = 0:9)
dfFlood$z <- 1
results <- c()
Q <- data.frame(x=integer(), y=integer())

setBarren <- function(df, barren_lands, val=0){
  for (bString in barren_lands){
    b <- unlist(strsplit(bString,"[ ]")) #split on spaces
    b <- as.numeric(b)                   #convert string to numbers
    df$z[df$x >= b[1] & df$x <= b[3] & df$y >= b[2] & df$y <= b[4]] <- val
  }
  return(df)
}

# z=0 is barren land
# z=1 is fertile land
# z=.75 is marked fertile land that we are currently counting
floodFill <- function(xCord, yCord) {
  paste("floodFill2")
  paste(xCord,yCord)
  
  zVal <- dfFlood[dfFlood$x==xCord & dfFlood$y==yCord,]$z
  if (is.na(zVal) | zVal == .75 | zVal == 0) { 
    return()
  } else { 
    dfFlood[dfFlood$x==xCord & dfFlood$y==yCord,]$z <<- .75
    if (xCord > 0) { Q[nrow(Q)+1,] <<- c(xCord-1, yCord) }   #left
    if (xCord < 399) { Q[nrow(Q)+1,] <<- c(xCord+1, yCord) } #right
    if (yCord < 599) { Q[nrow(Q)+1,] <<- c(xCord, yCord+1) } #up
    if (yCord > 0) { Q[nrow(Q)+1,] <<- c(xCord, yCord-1) }   #down
  }
}

prepQ <- function() {
  nextFertile <- dfFlood[dfFlood$z==1,][1,] # find next area
  floodFill(nextFertile$x,nextFertile$y)    # prime the Q
}

# prep the Q and areas
dfFlood <- setBarren(dfFlood, args)
prepQ()

while ( nrow(Q) > 0 ) {
  
  # process the queue and set all of the area to .75
  while ( nrow(Q) > 0 ) {
    floodFill(Q[1,]$x, Q[1,]$y) #set and add neighbors to queue
    Q <<- Q[-1,]                #remove row 1
  }
  area <- nrow(dfFlood[dfFlood$z==.75,]) # count the area
  results <<- c(results, area)           # save the area into the results
  dfFlood[dfFlood$z==.75,]$z <- 0        # mark the area as done
  
  prepQ()                                # find the next area if there is one
}

results[order(results)]
