---
layout: post
title: Twitter's Favorite Lesser Known Packages
description: 
tags: rstats
---

At the 2018 December NYC R Ladies meetup (yes this post has been sitting in my drafts for over a year), a group started talking about how a few tiny functions in a lesser-known package can provide you with serious magic. The problem is finding those packages and functions! With so many amazing packages on CRAN and GitHub, how do you even begin to search?  One way - ask all your twitter followers what they think, and twitter did not disappoint - so here are some examples of *amazing* packages and functions you might want to learn about.

The types of functions offered seemed to fall in a couple buckets. For example, making tasks you do all the time easier (cleaning data, summary), dealing with data structures that aren't are easy to deal with (factors, strings.. etc), visualizations, and so much more.

## Data Tasks

My favorite lesser known package is [Janitor](https://sfirke.github.io/janitor/) by Sam Firke. This package has basic functions to clean and prep messy data files. The functions are mostly relatively easy to replicate with dplyr, but why write the same thing over and over when Janitor does it for you!

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Mine are, from janitor...<br>1. clean_names<br>2. get_dupes<br>3. remove_empty<a href="https://twitter.com/hashtag/rstats?src=hash&amp;ref_src=twsrc%5Etfw">#rstats</a></p>&mdash; Erin Grand (@astroeringrand) <a href="https://twitter.com/astroeringrand/status/1072325599300071431?ref_src=twsrc%5Etfw">December 11, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

[Skimr](https://docs.ropensci.org/skimr/), as suggested by Fernando Flores, started at an ROpenSci Un-conf that provides a better summary function. It creates both a tidy version of the summary table to work with and a visual version to inspect. This is super useful for investigating data issues.

<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">Couldn&#39;t choose just one package, so here we go:<br>skimr::skim<br>covr::report<br>DT::JS</p>&mdash; Fernando Flores (@ds_floresf) <a href="https://twitter.com/ds_floresf/status/1072539510448275456?ref_src=twsrc%5Etfw">December 11, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



## Data Types

The tidyverse packages for dealing with specific data types are not nearly as widely used as they can be; forcats, lubridate, glue, and stringr can help solve so many problems with factor, dates, and strings.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">From forcats:<br>1. fct_infreq<br>2. fct_rev<br>3. fct_drop</p>&mdash; Emily Zabor (@zabormetrics) <a href="https://twitter.com/zabormetrics/status/1073648773014929413?ref_src=twsrc%5Etfw">December 14, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">forcats::fct_lump<a href="https://t.co/2BboLbdzuS">https://t.co/2BboLbdzuS</a><br><br>glue::glue and glue::glue_data<a href="https://t.co/Bxt20MQGi2">https://t.co/Bxt20MQGi2</a><br><br>Cheated and use 2x packages.</p>&mdash; Thomas Mock 👨🏼
💻 (@thomas_mock) <a href="https://twitter.com/thomas_mock/status/1072328281741901824?ref_src=twsrc%5Etfw">December 11, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">you stole mine! 😉 this is kind of cheating but from lubridate: year(), month(), day()</p>&mdash; Luuuda (@ludmila_janda) <a href="https://twitter.com/ludmila_janda/status/1072339517821067264?ref_src=twsrc%5Etfw">December 11, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


## Plotting Support
A few of the recommendations focused on vizulations and plotting. Key shouts outs for naniar and patchwork. [Naniar](http://naniar.njtierney.com/) helps you visualize your missing values. [Patchwork](https://patchwork.data-imaginist.com/) allows you to combine plots together.


<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">From two packages, super handy at first steps after loading dataset: <br>naniar::gg_miss_var<br>summarytools::descr<br>summarytools::freq</p>&mdash; Radoslaw Panczak (@RPanczak) <a href="https://twitter.com/RPanczak/status/1072674486326124544?ref_src=twsrc%5Etfw">December 12, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



## Other

There are were a ton of other amazing offerings for excellent packages. 

The magrittr package has many useful operators outside of the normal %>% pipe. 

<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">I was going to say  %&lt;&gt;% , %&lt;&gt;% , and   %&lt;&gt;%  from magrittr - I use it all the time now thanks to <a href="https://twitter.com/robinson_es?ref_src=twsrc%5Etfw">@robinson_es</a> - but now I&#39;m browsing other magrittr functions and the aliases like extract() etc would be v handy when piping</p>&mdash; Sarah R (@srhrnkn) <a href="https://twitter.com/srhrnkn/status/1072870594314625024?ref_src=twsrc%5Etfw">December 12, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

If you work with spatial data at all, the [sf](https://r-spatial.github.io/sf/) package is a must. 

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">The sf package cleared my skin, cleaned my home &amp; cured my anxiety</p>&mdash; Brooke Watson (@brookLYNevery1) <a href="https://twitter.com/brookLYNevery1/status/1072616772870770695?ref_src=twsrc%5Etfw">December 11, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">I added the `conflicted` package to my RProfile this summer, and I really love that it warns me about possible name conflicts _before_ I run into problems <a href="https://t.co/46Y88gexP9">pic.twitter.com/46Y88gexP9</a></p>&mdash; Irene Steves (@i_steves) <a href="https://twitter.com/i_steves/status/1088884286101573632?ref_src=twsrc%5Etfw">January 25, 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


What is your favorite lesser know package or function? Sound off in the comments (or find me on twitter).

