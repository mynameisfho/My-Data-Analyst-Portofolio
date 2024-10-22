![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Students'%20Mental%20Health/mental_health.jpg)

# Does studying at a university in another country impact your mental health? 

### Description: 
In 2018, a Japanese international university conducted a survey of its students and published a study the following year, which received approval from several ethical and regulatory boards.

The findings revealed that international students are at a greater risk of experiencing mental health issues compared to the general population. Additionally, the study indicated that social connectedness (belonging to a social group) and acculturative stress (stress related to adapting to a new culture) are significant predictors of depression.

### Tools: 
SQL and Excel

### Data:
Use SQL to explore the ['students.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Students'%20Mental%20Health/students.csv) data and determine if a similar conclusion for international students reached, while also examining whether the length of stay is a contributing factor.

Below is a description of the columns in the data.

| Field Name    | Description                                      |
| ------------- | ------------------------------------------------ |
| `inter_dom`     | Types of students (international or domestic)   |
| `japanese_cate` | Japanese language proficiency                    |
| `english_cate`  | English language proficiency                     |
| `academic`      | Current academic level (undergraduate or graduate) |
| `age`           | Current age of student                           |
| `stay`          | Current length of stay in years                  |
| `todep`         | Total score of depression (PHQ-9 test)           |
| `tosc`          | Total score of social connectedness (SCS test)   |
| `toas`          | Total score of acculturative stress (ASISS test) |

### Data Outputs:
Analyze the `students` data to examine how the length of stay (`stay`) affects the average mental health diagnostic scores of **international** students included in the study.
- Return a table with `nine` rows and `five` columns, with the following column aliases: `stay`, `count_int` for the number of international students for each length of stay, `average_phq`, `average_scs`, and `average_as`.
- The average columns should contain the average of the `todep` (PHQ-9 test), `tosc` (SCS test), and `toas` (ASISS test) columns for each length of stay, **rounded to two decimal places**.
- Sort the results by the length of stay in **descending order**.

### Code:
[Examining Students' Mental Health](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Grocery%20Store%20Sales%20-%20YesFood/grocery_store_sales_sql_scripts.sql)
