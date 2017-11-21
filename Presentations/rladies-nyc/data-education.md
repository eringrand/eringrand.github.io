R in the world of Education
========================================================
author: Erin Grand
date: December 12, 2017
autosize: true




About Me (2 min)
========================================================

- Oringainly studied Astronomy and Physics 
- Studied Data Science at Columbia University (MS 2016)
- Teaching in grad school, reading education research papers, listening to friends -> fell in love with education data and research

What is a charter school? What is Uncommon Schools? (5min)
========================================================

- Publicly funded school that is run by a private non-profit company
- Uncommon schools has 52 schools across 5 regions (Boston, Newark, Brooklyn, Rochester, Troy)
- X # students, Y # teachers

What kind of data do we work with? (5 min)
========================================================

- Exams / assessments in class
- State exams (common core test)
- Class grades, attendance, suspensions, demographics
- Teacher data
- HR + recruitment information

Data Challenges(10min)
========================================================

- Missing data
- Un-connected-ness of different data sources (i.e HR to Teacher to Student)
- Students who change schools or teachers
- Human data reporting error
- Technology questions / problems
- Keeping historical / longitudinal data / quality of such

Cleaning data (10min)
========================================================

- Intro to Janitor, clean_names(), get_dupes
- Get_dupes + assertr
- Code samples of the above, especially duplicates of IDs
- What to do with missing data, example?

Janitor
========================================================

From the description file: 

Janitor was built with beginning-to-intermediate R users in mind and is optimized for user-friendliness. Advanced users can already do everything covered here, but they can do it faster with janitor and save their thinking for more fun tasks.

========================================================

You should be able to do everything inside janitor on your own, but we don't have the time to always clean up data without help.

![](http://media3.giphy.com/media/3oKIPCSX4UHmuS41TG/giphy-downsized.gif)  

Benefits to using Janitor over writing your own code
========================================================


- Functions are well tested
- Data obeys Hadley's official style guide
- Generally turn many lines of code into one or two (huzzah!)
- Pipe-able
- Written for the education data space

========================================================








Two main functions I use all the time:

- `clean_names()`
- `get_dupes()`

![](http://media1.giphy.com/media/39V5OwGouQ9S8/giphy-downsized.gif)




Other really usual functions:
========================================================

- `remove_empty_rows()` 
- `remove_empty_cols()`
- `excel_numeric_to_date()`


Example 
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
- Keep everyone using a simple set of principles so everyone can read everyone else’s code
- Use my own mistakes as examples of what not to do
- Put all my materials online





Q & A
========================================================





