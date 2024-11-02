![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Risks%20and%20Returns%20of%20Stock%20Portofolio/stocks.jpg)

# Analyzing Risks and Returns of Stock Portofolio
### Description:
Asset allocation is a crucial decision every investor must make, involving how to distribute their capital across various assets—in this case, stocks. When determining allocations, investors aim to balance potential returns against associated risks, influenced by their personal goals, risk tolerance, and time horizons.

A widely-used approach to asset allocation is Modern Portfolio Theory (MPT), developed by Nobel laureate Harry Markowitz. MPT provides a framework for constructing portfolios to maximize expected returns at a given risk level or, alternatively, to minimize risk for a targeted return. This approach relies on a mathematical technique known as mean-variance optimization.

The core insight of MPT is that an asset should not be assessed in isolation; rather, investors should evaluate its impact on the overall portfolio. Another essential concept is diversification—holding a variety of assets to spread risk. This way, gains or losses from one security have less influence on the portfolio as a whole.

### Tools: 
Python and Excel

### Data:
Here is the dataset ['faang_stocks.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Risks%20and%20Returns%20of%20Stock%20Portofolio/faang_stocks.csv).

### Data Outputs:
Creating an efficient portfolio of FAANG stocks—Facebook (Meta), Apple, Amazon, Netflix, and Google. Your objective is to maximize returns while managing risk effectively.

In this project, determine the optimal allocation of `FAANG stocks` using historical price data from 2020 to 2023. The dataset, stored in `faang_stocks.csv`, includes the daily closing prices for these five tech giants.

Using the `faang_stocks.csv` dataset, perform the following financial analysis:

- Expected Returns and Annualized Sharpe Ratio for an Equally-Weighted Portfolio

    Calculate the expected returns and annualized Sharpe ratio of an equally-weighted portfolio, assuming a risk-free rate of 0%. Store the expected return as a float variable named `benchmark_exp_return` and the Sharpe ratio as `benchmark_sharpe_ratio`.

- Minimum Volatility Portfolio

    Using mean-variance optimization, find the portfolio that minimizes volatility. Store the volatility of this portfolio as a float variable called `mv_portfolio_vol` and the corresponding portfolio weights as a `pandas` Series named `mv_portfolio`, with the tickers as the index.

- Maximum Sharpe Ratio Portfolio

    Using mean-variance optimization and a risk-free rate of 0%, determine the portfolio that maximizes the Sharpe ratio. Store the annualized Sharpe ratio of this portfolio as a float variable called `ms_portfolio_sharpe` and the portfolio weights as a `pandas` Series named `ms_portfolio`, using tickers as the index.

### Code:
[Analyzing Risks and Returns of Stock Portofolio](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Risks%20and%20Returns%20of%20Stock%20Portofolio/stocks.ipynb)