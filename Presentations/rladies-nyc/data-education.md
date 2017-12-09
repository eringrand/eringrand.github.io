R in the World of Education
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

.fullslide img {
  margin-top: -85px;
  margin-left: -60px;
}
</style>





About Me
========================================================
<hr></hr>

- Studied Astronomy and Physics at University of Maryland
- Studied Data Science at Columbia University


What is a charter school?
========================================================
<hr></hr> 

_A charter school is an independently run public school granted greater flexibility in its operations, in return for greater accountability for performance. The "charter" establishing each school is a performance contract detailing the school's mission, program, students served, performance goals, and methods of assessment._

Uncommon Schools
========================================================
<hr></hr>
![uncommon-schools](http://www.uncommonschools.org/sites/default/files/datagraphics_063017.jpg)
***
<hr></hr>

- Established 1997 (oldest school opens-North Star Academy in Newark); 2005 - CMO formed
- 83% Free and reduced meal population
- Intensive PD for teachers & leaders; Partnerships with local districts to deliver PD; Summer Teaching Fellows diversity recruitment program; Camp Uncommon


What kind of data do we work with? 
========================================================
<hr></hr>

- **Assessments**: Interim assessments
- **Exams**: Common Core aligned state exams, SAT, PSAT, APs, ...etc
- **Classroom**: Grades, attendance, suspensions, ...etc
- **Teacher**: student - course - teacher linkage
- **Staff Data**: HR and Recruitment

Data Challenges
========================================================
<hr></hr>

- Missing/Incomplete data
- Different data sources without matching IDs (i.e HR to Teacher to Student)
- Movement between schools and courses of students and teachers
- Alignment of data and data processes across all schools and regions
- Changing student IDs (not many)
- Human data reporting error
- Historical data quality

Examples of Problems we CAN Clean
========================================================
<hr></hr>

- Messy excel sheets (historical or human entered)
- Column names that don't apply anymore
- Lack of historical documentation
- Finding duplicates tests
- Students that take half or one test and the other half of another
- Vanishing leading zeros

<!-- - disciplinary codes are entered differently, excel vs salesforces... etc -->
<!-- - school abbreviations change, location names changes, difference between versions (NSA- and spaces) -->
<!-- - when we get the data from PSAT and SAT, we don't always use IDs so lots of manual teachers, TN -->
<!-- - enrollment + student mobility in the middle of the year, audits in Sep but not done till end of Nov -->
<!-- - carry through of data problems through multiple channels  -->
<!-- - way the use the systems, connecting things to each other -->
<!-- - duplication across systems (tableau and insight showing the same thing) -->
<!-- - SS numbers! (data security) -->
<!-- - tracking IDs changes (merge or split) of IDs -->
<!-- - how we write out school years is different everywhere, with little documentation -->
<!-- - problem of manual entered data, no audit of manual entered data -->
<!-- - defining cohort! (grade you're in for a given year) -->
<!-- Solutions: -->
<!-- - `clean_names` -->
<!-- - `get_dupes / verify(nrow(.) == 0)` -->
<!-- - `group_by()` / `mutate()` - pick one of these dupes by some rule -->
<!-- - key word searches for financial tags -->

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

Messy Excel Sheets 
========================================================
<hr></hr>

![Image credit to Sam Firke](https://github.com/sfirke/janitor/raw/master/tools/readme/dirty_data.PNG)


Using Janitor to Clean Excel 
========================================================

```
read_excel(filepath, sheet="Sheet1", col_types = "text") %>%
  clean_names() %>%
  remove_empty_cols() %>%
  remove_empty_rows() %>%
  mutate_at(vars(entrydate, exitdate, student_id, yearsinuncommon), as.numeric) %>%
  mutate_at(vars(entrydate, exitdate), excel_numeric_to_date) %>% 
  head()
```






Finding Duplicates
========================================================
<hr></hr>





```
# A tibble: 2 x 6
  student_id dupe_count grade yearsinuncommon  entrydate exitdate
       <dbl>      <int> <dbl>           <dbl>     <date>    <int>
1    2614167          2     4               1 2017-12-09       NA
2    2614167          2     5               1 2017-12-09       NA
```


Solving Duplicates
========================================================
<hr></hr>



- Correct the data: `mutate(students, grade = if_else(student_id == 2614167, 4, grade))`
- Summarize my taking minimum date / grade, if that is causing the problem
- Output the duplicates and manually choose which version to keep

Model Building
========================================================
<hr></hr>

- Assessment cut scores and projections
- SGI (small group learning)
- Recruitment projections (based on attrition + growth)
- Teacher value added model

========================================================
type: qa
<div style="position:fixed; top:50%;text-align:center;width:100%; display:block;   font-size: 150px;">
Q & A
</div>
<div class="footer">@astroeringrand</div>




