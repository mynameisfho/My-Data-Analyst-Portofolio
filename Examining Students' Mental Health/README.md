![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Students'%20Mental%20Health/mental_health.jpg)

### Does studying at a university in another country impact your mental health? 
In 2018, a Japanese international university conducted a survey of its students and published a study the following year, which received approval from several ethical and regulatory boards.

The findings revealed that international students are at a greater risk of experiencing mental health issues compared to the general population. Additionally, the study indicated that social connectedness (belonging to a social group) and acculturative stress (stress related to adapting to a new culture) are significant predictors of depression.

Use PostgreSQL to explore the `students` data and determine if you reach a similar conclusion for international students, while also examining whether the length of stay is a contributing factor.

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