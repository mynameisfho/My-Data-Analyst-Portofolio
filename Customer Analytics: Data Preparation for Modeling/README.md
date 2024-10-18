### A frequent challenge in building models 
that extract business value from data is that datasets can be so extensive that it may take days for the model to produce predictions. It is essential to store the dataset as efficiently as possible to enable these models to operate on a more reasonable timeline without having to decrease the dataset's size.

A major online data science training provider does the project to optimizes one of the largest customer datasets. This dataset will eventually be utilized to predict whether the students are seeking new job opportunities, information they will then use to connect students with potential recruiters.

The dataset `customer_train.csv` is provided, which is a subset of their complete customer dataset, create a proof-of-concept for a more efficient storage solution. The dataset includes anonymized student information and indicates whether they were looking for a new job during their training.

| Column                   | Description                                                                      |
|------------------------- |--------------------------------------------------------------------------------- |
| `student_id`             | A unique ID for each student.                                                    |
| `city`                   | A code for the city the student lives in.                                        |
| `city_development_index` | A scaled development index for the city.                                         |
| `gender`                 | The student's gender.                                                            |
| `relevant_experience`    | An indicator of the student's work relevant experience.                          |
| `enrolled_university`    | The type of university course enrolled in (if any).                              |
| `education_level`        | The student's education level.                                                   |
| `major_discipline`       | The educational discipline of the student.                                       |
| `experience`             | The student's total work experience (in years).                                  |
| `company_size`           | The number of employees at the student's current employer.                       |
| `company_type`           | The type of company employing the student.                                       |
| `last_new_job`           | The number of years between the student's current and previous jobs.             |
| `training_hours`         | The number of hours of training completed.                                       |
| `job_change`             | An indicator of whether the student is looking for a new job (`1`) or not (`0`). |