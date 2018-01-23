# Barren Land Analysis Case Study

## About Me

Hi! I'm Peter Edstrom. I build teams to solve complex software problems. I see myself as a straightforward and methodical team player. I have about 20 years of software experience ranging from UX to data science to machine learning. As an engineering leader, I work to actively bring about positive change in technical organizations.

I have a [LinkedIn Profile](https://www.linkedin.com/in/peteredstrom/) and you can reach me by email: [peter@edstrom.net](mailto:peter@edstrom.net). 

## Decision on Study:

* After reviewing the 3 case studies, I decided to give the 2nd case study go: _Barren Land Analysis_.
* _Barren Land Analysis_ represents to me an interesting GIS and mapping application, and one that piques my data science interests. I’m not sure how to do it. But I have some ideas to explore in R and potentially in PostgreSQL (it has good mapping tools built in, I’m told). 
* _myRetail RESTful services_ could be done with Rails and scaffolding would get you well on the way (there are views built in for json, right?). NoSQL is a tool I haven’t had need to dig into up to this point in my career, and it would be fun to do so. But for now I’ll pass. 
* _Document Search_ - I think I’d do this one with Elastic Search, though at least for the first pass at the first 2 methods a command line tool like grep might work fine. 

## The Choice to use R Project for Statistical Computing

There was no requirement to choose a specific language and I chose to address this challenge using [R Project](https://www.r-project.org).

There are a few reasons for this choice: 

* Data science is an active interest of many people right now, and the scientists seem to favor either R or Python languages.
* I suspect that there are tools to help with this sort of spacial analysis, but I'm not sure. 
* Notebooks - a technology available in R and Python (plus a few others) - is an excellent way to document a thought process.
* I like R. It's been around for a long time ( [24 years!](https://en.wikipedia.org/wiki/R_(programming_language)) ) and I feel it is an under-appreciated tool given the power it brings to processing data.

## A note on constraints

* I was given one week to complete the challenge.
* My primary computer for the last 15 months has been an iPad Pro. While the iPad has been sufficient for more than 90% of my computing tasks, coding is one area that it falls short in. I needed to make a shift to address the coding challenge.
* My secondary computer is an aging 2011 iMac. This is a shared computer used heavily by all of the other members of my family. This will work, but it is clearly not an ideal situation.

## Challenge

You have a farm of 400m by 600m where coordinates of the field are from (0, 0) to (399, 599). A portion of the farm is barren, and all the barren land is in the form of rectangles. Due to these rectangles of barren land, the remaining area of fertile land is in no particular shape. An area of fertile land is defined as the largest area of land that is not covered by any of the rectangles of barren land. 
Read input from STDIN. Print output to STDOUT 

#### Input 

You are given a set of rectangles that contain the barren land. These rectangles are defined in a string, which consists of four integers separated by single spaces, with no additional spaces in the string. The first two integers are the coordinates of the bottom left corner in the given rectangle, and the last two integers are the coordinates of the top right corner. 

#### Output 

Output all the fertile land area in square meters, sorted from smallest area to greatest, separated by a space.

#### Sample

Sample Input | Sample Output
--- | ---
`{“0 292 399 307”}` | `116800  116800`
`{“48 192 351 207”, “48 392 351 407”, “120 52 135 547”, “260 52 275 547”}` | `22816 192608 `

## Research - Visualization

* To start, I’d like to be able to see what this plot looks like. Partially because visualizations are cool, but more seriously because they help with understanding the problem space. It’s easy to get lost in a sea of numbers.
* Since I know very little about these types of tools, I’m also expecting that the visualization tools will guide me towards a reasonable internal data model. 
* Google searches are turning up potential terms and tools to narrow in on: Waffle Chart, Heatmap, Spatial, geom_tile(), ggmap(). The waffle chart on [this page](http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html) is intriguing. 
* Getting closer ... [geom_bin2d() and stat_bin_2d()](http://ggplot2.tidyverse.org/reference/geom_bin2d.html)
* geom_tile, part of [Tidyverse/ggplot2](http://ggplot2.tidyverse.org/reference/geom_tile.html)

## Writing the Algorithm

please follow my thought process in [Barren Land Analysis.Rmd](Barren Land Analysis.Rmd). The [pdf](Barren Land Analysis.pdf) and [html](Barren Land Analysis.nb.html) files will also include the code-execution results.

## Making this runnable on the command line

TODO

### A note on Optimization

* Use an array instead of a dataframe.
* Look for ways to minimize double-checking existing areas.

## Thank You

Thank you for taking the time to review my approach to this challenge!

Peter Edstrom
peter@edstrom.net
January 2018