R in the world of Education
========================================================
author: Erin Grand
date: December 12, 2017
autosize: true
css: ~/Github/Rtutorials/Lesson2/slides/temp.css





About Me  <!-- 2 min -->
========================================================

- Studied Astronomy and Physics at University of Maryland
- Studied Data Science at Columbia University
- Loves education data and policy!

What is a charter school?
<!-- 1 min -->
========================================================

A charter school is an independently run public school granted greater flexibility in its operations, in return for greater accountability for performance. The "charter" establishing each school is a performance contract detailing the school's mission, program, students served, performance goals, and methods of assessment.

Uncommon Schools
<!-- 1 min -->
========================================================

![](http://www.uncommonschools.org/sites/default/files/datagraphics_063017.jpg)


What kind of data do we work with? 
<!-- 5 min -->
========================================================

- Exams / assessments in class
- State exams (common core test)
- Class grades, attendance, suspensions, demographics
- Teacher data
- HR + recruitment information

Data Challenges
<!-- 10min -->
========================================================

- Missing/Incomplete data
- Different data sources without matching IDs (i.e HR to Teacher to Student)
- Movement between schools of students and teachers
- Duplicates in student IDs
- Human data reporting error
- Technology questions / problems
- Historical data

<!-- Cleaning data  -->
<!-- <!-- 10 min --> -->
<!-- ======================================================== -->
<!-- - Intro to Janitor, clean_names(), get_dupes -->
<!-- - Get_dupes + assertr -->
<!-- - Code samples of the above, especially duplicates of IDs -->
<!-- - What to do with missing data, example? -->

Looking at Duplicates with Janitor
========================================================

*Janitor was built with beginning-to-intermediate R users in mind and is optimized for user-friendliness. Advanced users can already do everything covered here, but they can do it faster with janitor and save their thinking for more fun tasks.*

You should be able to do everything inside janitor on your own, but we don't have the time to always clean up data without help.

<!-- ![](http://media3.giphy.com/media/3oKIPCSX4UHmuS41TG/giphy-downsized.gif)   -->

Benefits to using Janitor over writing your own code
========================================================

- Functions are tested
- Generally obeys Hadley's official style guide
- Turn many lines of code into one or two
- Pipe-able
- Written for the education data space

Example 
========================================================

picture of excel file before cleaning








Example projects: models (10min)
========================================================

- Cut scores, linear + trees
- Recruitment projections (logistic)
- Value added model - teacher effect (maybe)

Heping coworkers learn R, why is this important?
========================================================

- State tests - automation
- Started with base R for lists vs vector and index notation, then immeditly moved into tidyverse, mostly following R4DS chapters and material
- Worked in my own favorite packages, like janitor and assertr
- Keep everyone using a simple set of principles so everyone can read everyone elses code
- Use my own mistakes as examples of what not to do
- Put all my materials online





Q & A (10min)
========================================================




