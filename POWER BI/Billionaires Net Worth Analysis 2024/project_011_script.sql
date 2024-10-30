# How many billionaires exist
SELECT
	count(distinct BillionairesRichestBillionaire2023),
    count(BillionairesRichestBillionaire2023),
    sum(BillionairesTotalNetWorth2023) as total_networth
FROM billionaires_by_country_2024
;
-- Sol: We have 72 billionaires 


# Count and Avg Net-worth of the billionaires by region(continent)
Select
	region,
    count(BillionairesRichestBillionaire2023) as no_of_billionaires,
    round(avg(BillionairesTotalNetWorth2023),2) avg_networth,
    round(sum(BillionairesTotalNetWorth2023),2) as total_networth

From billionaires_by_country_2024
Group by 1
Order by 4 desc
;


# African billionaires net worth as a pct of the whole world, and other countries too
with data as (
Select
	region,
    count(BillionairesRichestBillionaire2023) as no_of_billionaires,
    round(avg(BillionairesTotalNetWorth2023),2) avg_networth,
    round(sum(BillionairesTotalNetWorth2023),2) as total_networth

From billionaires_by_country_2024
Group by 1
Order by 4 desc
)
select
	sum(case when region = 'Africa' then total_networth else 0 end)/sum(total_networth)*100  as pct_networth_africa,
    sum(case when region = 'North America' then total_networth else 0 end)/sum(total_networth)*100  as pct_NAmerica,
    sum(case when region = 'Asia' then total_networth else 0 end)/sum(total_networth)*100  as pct_networth_asia,
    sum(case when region = 'Europe' then total_networth else 0 end)/sum(total_networth)*100  as pct_networth_europe,
    sum(case when region = 'South America' then total_networth else 0 end)/sum(total_networth)*100  as pct_networth_SAmerica,
    sum(case when region = 'Oceania' then total_networth else 0 end)/sum(total_networth)*100  as pct_networth_oceania,
    sum(total_networth) as total_networth
from data
;


# Top 5 billionaires regardless of country and region, by net worth
Select
	BillionairesRichestBillionaire2023,
    BillionairesTotalNetWorth2023,
    country,
    region
From billionaires_by_country_2024
Order by 2 desc
Limit 5
;


# Is there a relationship between the regions with the highest number of billionaires and;
#         -- Population growth rate
#         -- Population density
select
	region,
    round(avg(BillionairesTotalNetWorth2023),2) as avg_networth,
    round(avg(population_density_km),2) as avg_popdensity,
    round(avg(Population_growthRate),2) as avg_popgrowth
From billionaires_by_country_2024
Group by 1
Order by 2 desc
;


#Avg net worth by UN member status
select
	unMember,
    round(avg(BillionairesTotalNetWorth2023),2) avg_networth,
	round(sum(BillionairesTotalNetWorth2023),2) as total_networt
From billionaires_by_country_2024
Group by 1
;




