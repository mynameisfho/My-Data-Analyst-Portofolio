![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Hypothesis%20Testing%20in%20Healthcare/drug_safety.jpg)

### Description:
Pharmaceutical drugs are essential to our health, so it’s crucial they are safe and have minimal adverse effects. Recently, a pharmaceutical company, GlobalXYZ, completed a randomized controlled drug trial. The main interest is in the drug’s adverse reactions and whether these reactions are significant.

The tasks is producing independent reports on various drugs, separate from the manufacturers. Using Python, conduct several hypothesis tests to assess whether a hypothetical drug has significant adverse reactions and examine whether factors like age play a role in these reactions.

### Tools: 
Python and Excel

### Data:
The dataset contains information on five adverse effects, demographic details, vital signs, and more. The dataset, ['drug_safety.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Hypothesis%20Testing%20in%20Healthcare/drug_safety.csv), was originally obtained from [Hbiostat](https://hbiostat.org/data/), courtesy of Vanderbilt University's Department of Biostatistics, and includes data on five adverse effects: headache, abdominal pain, dyspepsia, upper respiratory infection, and chronic obstructive airway disease (COAD), along with demographic data, vital signs, and lab measures. The data has a drug-to-placebo observation ratio of 2:1.

For this project, the dataset has been modified to include columns indicating the presence or absence of adverse effects (`adverse_effects`) and the number of adverse effects per individual (`num_effects`).

The columns in the modified dataset are: 

| Column | Description |
|--------|-------------|
|`sex` | The gender of the individual |
|`age` | The age of the individual |
|`week` | The week of the drug testing |
|`trx` | The treatment (Drug) and control (Placebo) groups | 
|`wbc` | The count of white blood cells |
|`rbc` | The count of red blood cells |
|`adverse_effects` | The presence of at least a single adverse effect |
|`num_effects` | The number of adverse effects experienced by a single individual |

The original dataset can be found [here](https://hbiostat.org/data/repo/safety.rda).

### Data Outputs: 
- Determine if there’s a significant difference in the proportion of adverse effects between the Drug and Placebo groups, saving the p-value in a variable named `two_sample_p_value`.

- Next, assess whether the number of adverse effects is independent of the treatment (Drug) and control (Placebo) groups, storing the resulting p-value in a variable called `num_effects_p_value`.

- Finally, check if there’s a significant age difference between the Drug and Placebo groups, and save the p-value from this test in a variable named `age_group_effects_p_value`.

### Code:
[Examining Hypothesis Testing in Healthcare](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Hypothesis%20Testing%20in%20Healthcare/drug_safety.ipynb)
