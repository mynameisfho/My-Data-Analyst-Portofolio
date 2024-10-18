select 	product_line,
		case 
			when extract('month' from date) = 6 then 'June'
			when extract('month' from date) = 7 then 'July'
			when extract('month' from date) = 8 then 'August'
		end as month,
		warehouse,
		(sum(total)) - (sum(payment_fee)) as net_revenue
from sales
where client_type = 'Wholesale'
group by product_line, warehouse, month
order by product_line, month, net_revenue desc