R in the world of Education
========================================================
author: Erin Grand
date: December 12, 2017
autosize: true
css: custom.css
font-family: 'Franklin Gothic Book'
transition: none

<style>
.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
}
</style>




About Me
========================================================
<hr></hr>

- Studied Astronomy and Physics at University of Maryland
- Studied Data Science at Columbia University
- Loves education data and policy!

What is a charter school?
========================================================
<hr></hr>

A charter school is an independently run public school granted greater flexibility in its operations, in return for greater accountability for performance. The "charter" establishing each school is a performance contract detailing the school's mission, program, students served, performance goals, and methods of assessment.

Uncommon Schools
========================================================
<hr></hr>

![](http://www.uncommonschools.org/sites/default/files/datagraphics_063017.jpg)


What kind of data do we work with? 
========================================================
<hr></hr>

- Exams / assessments in class
- State exams (common core test)
- Class grades, attendance, suspensions, demographics
- Teacher data
- HR + recruitment information

Data Challenges
========================================================
<hr></hr>

- Missing/Incomplete data
- Different data sources without matching IDs (i.e HR to Teacher to Student)
- Movement between schools of students and teachers
- Duplicates in student IDs
- Human data reporting error
- Historical data


Looking at Duplicates with Janitor
========================================================
<hr></hr>

*Janitor was built with beginning-to-intermediate R users in mind and is optimized for user-friendliness. Advanced users can already do everything covered here, but they can do it faster with janitor and save their thinking for more fun tasks.*

You should be able to do everything inside janitor on your own, but we don't have the time to always clean up data without help.

![](http://media3.giphy.com/media/3oKIPCSX4UHmuS41TG/giphy-downsized.gif)


Benefits to using Janitor over writing your own code
========================================================
<hr></hr>

- Functions are tested
- Generally obeys Hadley's official style guide
- Turn many lines of code into one or two
- Pipe-able
- Written for the education data space

Example 
========================================================
<hr></hr>

picture of excel file before cleaning











Finding Duplicates
========================================================
<hr></hr>




```
# A tibble: 2 x 6
  student_id dupe_count grade yearsinuncommon  entrydate exitdate
       <dbl>      <int> <dbl>           <dbl>     <date>    <int>
1    5253529          2     7               1 2017-12-03       NA
2    5253529          2     8               1 2017-12-03       NA
```


Solving Duplicates
========================================================
<hr></hr>



- Correct the data: `mutate(students, grade = if_else(student_id == 5253529, 7, grade))`
- Summarize my taking minimum date / grade, if that is causing the problem
- Output the duplicates and manually choose which version to keep

Example projects: Models
========================================================
<hr></hr>

- Cut scores, linear + trees
- Recruitment projections (logistic)
- Value added model - teacher effect (maybe)



========================================================
type: qa
<div class="footer">@astroeringrand</div>

<div style="position:fixed; top:50%;text-align:center;width:100%; display:block;   font-size: 150px;">
Q & A
</div>





