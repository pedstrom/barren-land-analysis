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

## Research - Visualization

* To start, I’d like to be able to see what this plot looks like. Partially because visualizations are cool, but more seriously because they help with understanding the problem space. It’s easy to get lost in a sea of numbers.
* Since I know very little about these types of tools, I’m also expecting that the visualization tools will guide me towards a reasonable internal data model. 
* Google searches are turning up potential terms and tools to narrow in on: Waffle Chart, Heatmap, Spatial, geom_tile(), ggmap(). The waffle chart on [this page](http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html) is intriguing. 
* Getting closer ... [geom_bin2d() and stat_bin_2d()](http://ggplot2.tidyverse.org/reference/geom_bin2d.html)
* geom_tile, part of [Tidyverse/ggplot2](http://ggplot2.tidyverse.org/reference/geom_tile.html)


## Making this runnable on the command line