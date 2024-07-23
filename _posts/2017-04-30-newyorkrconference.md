---
layout: post
title: New York Rstats Conference
description: 
tags: conference, rstats, rladies, r
---

Last weekend was the 2017 RStatsNYC conference. I had a great time talking to friends and meeting new friends throughout the weekend. The speakers covered a variety of topics from data ethics to cloud cloud computing. I've complied my notes, plus some of popular tweets from the conference below.

# Day 1

### How R Helps Airbnb Make the Most of Its Data

Ricardo Bion, Airbnb

- AirBnD started in 2008 with 1 city and 1 room, now there are 3M homes in 71K cities
- 100+ data scietists using a mix of lanaguages mostly R, but lots of python
- Why to use an R Packages:
	- Passing around functions required duplication of work, where as a package can include data, test, add-ins, vignettes, R markdown and notebook templates
	- The AirBnB packages have consistent API, branded visualization, branded templates, and of course function functions
- Education:
	- made a difference in confidence of R stats
	- new hire buddy
	- intro classes at datacamp if interested, sponsored by airbnb
	- peer support with office hours, code review, R slack group
	- learning lunch, journal club, offsites
- Reproducibility:
	- scale knowedlge
	- knowledge repo
	- posts have tags with topics, date, then served as a web ui
	- uses github for peer review
	- branded template
	- incorprate best practices from academia and software

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Hearing about reproducibility and R packages at Airbnb from <a href="https://twitter.com/ricardobion">@ricardobion</a> at NYR <a href="https://twitter.com/hashtag/rstatsnyc?src=hash">#rstatsnyc</a> <a href="https://t.co/uGSZwtX1XM">pic.twitter.com/uGSZwtX1XM</a></p>&mdash; Julia Silge (@juliasilge) <a href="https://twitter.com/juliasilge/status/855413199344209922">April 21, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>




### Fine Grained Visual Category Recognition and Perceptual Embedding

Serge Belongie, Cornell University

- Really intersting talk on using Stochastic Neighbor algorithm with crowd sourcing to get a visual similarity of images.
- Motivation of humans and computers working together
- His talk focused on detecting what type of bird was in an image
- Detecting that there is a bird in the picture is getting easy for computer, but detecting the exact name of the bird is much more difficult

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">.<a href="https://twitter.com/SergeBelongie">@SergeBelongie</a> showing a stochastic neighbor algorithm with crowd sourcing to get a visual similarity of images <a href="https://twitter.com/hashtag/rstatsnyc?src=hash">#rstatsnyc</a> <a href="https://t.co/TRuIruTELS">pic.twitter.com/TRuIruTELS</a></p>&mdash; Erin Grand (@astroeringrand) <a href="https://twitter.com/astroeringrand/status/855420509344993282">April 21, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


### An R Cloud Computing Lifeline: The Missing Manual for Running R on Amazon Cloud

Kelly O'Briant, B23 

- Working with R in the cloud is different from working with Rstudio on your computer, you have to install all your favroite packages again every time you start up a new server
- bigger instances sizes, analysis while sleeping, running multiple R servers at the same time, instances themselves are disaposable and renewable resources
- able to use tools in a more powerful manor

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/b23kelly">@b23kelly</a> created a custom R package to set up new projects/deployed servers fast without having to reconfigure anew each time <a href="https://twitter.com/hashtag/rstatsnyc?src=hash">#rstatsnyc</a></p>&mdash; Alec Barrett (@alecbarrett) <a href="https://twitter.com/alecbarrett/status/855424336068530180">April 21, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


### R Makes the World Go 'Round: Data-Driven Decision Making at JetBlue

Catherine Zhou, JetBlue

One of the interesting take always throughout the conference was that you can start coding in R pretty quickly, if you start with the right ideas and tools about what R is. Most intro stats classes (mine included) treat R and other programming languages as a calculator. But R is so much more than that! [Catherine Z](https://twitter.com/catherinezh) made a point about giving people templates with tidyverse functions to produce their own analyses. In my own work, I'm helping my coworker think of tidyverse in a similar way to computing excel tasks, i.e `group_by()`  %>% `summarise()` is equivalent to a *pivot table*, and `mutate()` adds a new column the same you way you might by drag-and-dropping an excel equation.

There were also several good comments on how you can learn slowly by doing something small in R (such as doing a bit of cleaning) and then porting it back out to excel or tableau to finish your analysis. Best takeaway? **Not everyone needs to be fluent in R. - [Catherine](https://twitter.com/catherinezh)** 

<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">.<a href="https://twitter.com/catherinezh">@catherinezh</a> Easy sells: Automation and reproducibility, but not everyone needs to be fluent. <a href="https://t.co/EancCU2eWb">pic.twitter.com/EancCU2eWb</a></p>&mdash; Erin Grand (@astroeringrand) <a href="https://twitter.com/astroeringrand/status/855438176269344769">April 21, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


### Theoretical Statistics is the Theory of Applied Statistics: How to Think About What We Do

Andrew Gelman, Columbia

Reiterating Andrew Gelman's point about how p-value statistical testing is actually a pretty bad framework for hypothesis testing most of the time. time to really brush up on Bayesian stats. I also liked the general point that you should have to state what you expect to find (alternate hypotheses, estimated effect sizes, whatever) before you go barging around looking for anything and act like whatever you end up with is what you were searching for all along.


### The Unreasonable Effectiveness of Empathy - The killer skill needed for a successful technical career

JD Long, RenaissanceRe

* Analysis doesn't end at result delivery - it ends at developing and proselytizing new business strategies and innovation.
* Automating Excel workflows can be a first step towards bringing R to a team.
* Agile development tells user stories as an empathy hack.

```
As a ______
I want ______
So I can ______ 
```

* Person-level stories (the near) are always more meaningful than data stories (the far). We need to balance both as Data Scientists.
* In development, we need to have an actual user in mind, rather than a theoretical user who wants everything.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">&quot;As you tell your data stories, think about the individual people in your data and your consumers&quot; - <a href="https://twitter.com/CMastication">@CMastication</a> <a href="https://twitter.com/hashtag/rstatsnyc?src=hash">#rstatsnyc</a> <a href="https://t.co/f9DZGCprDO">pic.twitter.com/f9DZGCprDO</a></p>&mdash; Emily Robinson (@robinson_es) <a href="https://twitter.com/robinson_es/status/855500182586368002">April 21, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>



# Day 2



### Using Human Mobility Data to Assess Public Circulation Health
Michael Kane

- talking about cell phone tower data -> homan ciculatory data
- anytime you are connecting or handing off to a cell phone tower, the data is logged
- secruity at: IDS are all hashed version of cell phones
- 35 TB data set! big! 10 GB every day
- touching ALL of the day when doing analysis
- use R, with Hadoop
- using HMR in cluster (hapood)
- looks at inflow and outflow counts (flux)
- are providing reliable information on human mobility on storms
- want the learner that is the most REGULAR not the closest to accuracy



### From Agreeing to Marching to Organizing: OSS Needs You
Mike Malecki and Neal Richardson

- Best ways to contribute to open source are to start with improving documentation
- Open source contributions: failing test with fix > failing test > bug report
- Remember to include sessionInfo()
- When releasing a package, release quickly, but also slowly - take time to fix dumb decisions
	- Bring something new to the community, but don't reinvent the wheel 
	- Tell people about your package (social media), then listen to how they're using it
	- When thinking about a package: documentation > usability > performance > features


# Other Learnings

I spent most of the conference chatting and meeting other members of the Rladies New York chapter. 


![](https://pbs.twimg.com/media/C-CEwTYXoAAqppX.jpg:large)


# Packages to Try Out

* RXKCD: add XKCD cartoons to stuff
* trelliscope: many-panel data vis
* compareGroups: compare demographics and other aspects across groups
* goodpractice: does a variety of checking for good package development practice
* lintr: helps check for good code style
