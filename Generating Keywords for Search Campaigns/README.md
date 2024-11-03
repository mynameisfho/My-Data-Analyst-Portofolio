![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Generating%20Keywords%20for%20Search%20Campaigns/keywords.jpg)

### Description:
When setting up a search engine marketing account, a crucial task is to align the appropriate keywords with the right ads and ensure they direct users to the correct landing pages.

In this project, we will practice automatically generating keywords for a search engine marketing campaign using Python to guide website visitors to the appropriate landing page.

Imagine we are working for a digital marketing agency that has been approached by a large online furniture retailer. They want to evaluate our ability to create extensive campaigns for their entire website. The task is to develop a prototype set of keywords for their sofas section. The client has requested keywords for the following products:
- sofas
- convertible sofas
- love seats
- recliners
- sofa beds

The client is a low-cost retailer that frequently offers promotions and discounts. Therefore, we should concentrate on generating keywords that reflect this low-cost approach while avoiding luxury-related keywords and topics, as the target audience is price-sensitive. Given the client's limited budget, it's important to focus on a well-defined set of keywords, ensuring they are all set to exact and phrase match.

To begin, we will need to create a list of words that, when combined with the products listed above, will form effective keywords. Here are some examples:
- Products: sofas, recliners
- Words: buy, prices

The resulting keywords: 'buy sofas', 'sofas buy', 'buy recliners', 'recliners buy', 'prices sofas', 'sofas prices', 'prices recliners', 'recliners prices'.

As a final result, we want to have a DataFrame that looks like this:

<table>
<thead>
<tr>
<th>Campaign</th>
<th>Ad Group</th>
<th>Keyword</th>
<th>Criterion Type</th>
</tr>
</thead>
<tbody>
<tr>
<td>Campaign1</td>
<td>AdGroup_1</td>
<td>keyword 1a</td>
<td>Exact</td>
</tr>
<tr>
<td>Campaign1</td>
<td>AdGroup_1</td>
<td>keyword 1b</td>
<td>Exact</td>
</tr>
<tr>
<td>Campaign1</td>
<td>AdGroup_2</td>
<td>keyword 2a</td>
<td>Exact</td>
</tr>
</tbody>
</table>

### Tools: 
Python and Excel

### Data Result:
Here is the final data: ['keywords.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Generating%20Keywords%20for%20Search%20Campaigns/keywords.csv)  

### Data Outputs: 
What keywords can assist the client in selling the specified products through search campaigns?

- Save at least 60 unique keywords in a DataFrame named `keywords_df` and export them as a CSV file called `keywords.csv`. 

- Both the DataFrame and the CSV file should include four columns:
    - `Ad Group`: This should contain the product names.
    - `Keyword`: This should include the combinations of products and keywords, structured in both formats (keyword + product and product + keyword)
    - `Campaign`: Every row should have the value `SEM_Sofas`.
    - `Criterion Type`: Every row should have the value `Exact`.

### Code:
[Generating Keywords for Search Campaigns](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Generating%20Keywords%20for%20Search%20Campaigns/keywords.ipynb)
