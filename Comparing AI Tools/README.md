![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20AI%20Tools/ai_tools.jpg)

### Description:
The goal is to understand the shifting popularity of three leading AI tools: ChatGPT, Gemini, and Microsoft Copilot. Analyze which tool is gaining the most traction, comparing trends over time to help guide strategic decisions.

Using real-world time series data that reflects global interest in these tools over recent weeks, uncover patterns and provide actionable insights to inform marketing strategies, forecast trends, and identify areas for potential improvement.

### Tools: 
Python and Excel

### Data:
The Google Trends data is provided as a CSV file named ['ai_tools_comparison.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20AI%20Tools/ai_tools_comparison.csv). This dataset captures the worldwide search volume for ChatGPT, Gemini, and Microsoft Copilot over the past 12 months, as of September 2024.

[Source](https://trends.google.com/trends/explore?q=chatgpt,gemini,%2Fg%2F11tsqm45vd&hl=en-US)

### Data Outputs: 
The objective is to analyze search data to uncover key insights by addressing the following questions:
- Which AI tool demonstrated the most consistent growth in interest throughout the entire observed period? Save the tool's name as `most_consistent_tool` (Data type: `string`).
- Generate a visualization to display the interest trends over time for ChatGPT, Gemini, and Microsoft Copilot. Identify the month and year when ChatGPT saw its sharpest decline in interest. Save this as `gpt_dip` in the format "Month YYYY" (Data type: `string`).
- Analyze seasonality by calculating monthly averages across all tools. Which month recorded the highest average interest? Save this month as `best_month` (Data type: `string`).

### Code:
[Comparing AI Tools](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20AI%20Tools/ai_tools.ipynb)