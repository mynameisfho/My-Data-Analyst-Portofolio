![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Evaluating%20Crimes%20in%20Los%20Angeles/los_angeles.jpg)

## Los Angeles, California. 
### The City of Angels. Tinseltown. The Entertainment Capital of the World! 

### Description: 
Famous for its warm climate, palm trees, extensive coastline, and Hollywood, Los Angeles has produced some of the most iconic films and songs. However, like any densely populated city, it has its share of challenges, including a significant amount of crime. That's where your expertise comes in!

This project analyzes crime data to uncover patterns in criminal behavior, and to allocate resources more effectively to address various crimes in different neighborhoods.

### Tools: 
Python and Excel

### Data:
Dataset is provided with a single dataset for analysis, ['crimes.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Evaluating%20Crimes%20in%20Los%20Angeles/crimes.csv). A summary and preview of the dataset are included below. This dataset is a modified version of the original data, which is publicly available from Los Angeles Open Data.

| Column     | Description              |
|------------|--------------------------|
| `'DR_NO'` | Division of Records Number: Official file number made up of a 2-digit year, area ID, and 5 digits. |
| `'Date Rptd'` | Date reported - MM/DD/YYYY. |
| `'DATE OCC'` | Date of occurrence - MM/DD/YYYY. |
| `'TIME OCC'` | In 24-hour military time. |
| `'AREA NAME'` | The 21 Geographic Areas or Patrol Divisions are also given a name designation that references a landmark or the surrounding community that it is responsible for. For example, the 77th Street Division is located at the intersection of South Broadway and 77th Street, serving neighborhoods in South Los Angeles. |
| `'Crm Cd Desc'` | Indicates the crime committed. |
| `'Vict Age'` | Victim's age in years. |
| `'Vict Sex'` | Victim's sex: `F`: Female, `M`: Male, `X`: Unknown. |
| `'Vict Descent'` | Victim's descent:<ul><li>`A` - Other Asian</li><li>`B` - Black</li><li>`C` - Chinese</li><li>`D` - Cambodian</li><li>`F` - Filipino</li><li>`G` - Guamanian</li><li>`H` - Hispanic/Latin/Mexican</li><li>`I` - American Indian/Alaskan Native</li><li>`J` - Japanese</li><li>`K` - Korean</li><li>`L` - Laotian</li><li>`O` - Other</li><li>`P` - Pacific Islander</li><li>`S` - Samoan</li><li>`U` - Hawaiian</li><li>`V` - Vietnamese</li><li>`W` - White</li><li>`X` - Unknown</li><li>`Z` - Asian Indian</li> |
| `'Weapon Desc'` | Description of the weapon used (if applicable). |
| `'Status Desc'` | Crime status. |
| `'LOCATION'` | Street address of the crime. |

### Data Outputs:
Analyze the `crimes.csv` dataset to answer the following questions:
- Which hour records the highest number of crimes? Save the result as an integer variable named `peak_crime_hour`.
- Which area has the highest frequency of crimes occurring at night (between 10 PM and 3:59 AM)? Save this as a string variable named `peak_night_crime_location`.
- Determine the number of crimes committed against victims in different age groups. Save this as a pandas Series named `victim_ages`, with the following age group labels as the index: `0-17`, `18-25`, `26-34`, `35-44`, `45-54`, `55-64`, and `65+`, and the corresponding frequency of crimes as the values.

### Code:
[Evaluatin Crimes in LA](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Evaluating%20Crimes%20in%20Los%20Angeles/evaluating_crimes_in_la.ipynb)