select payment_date, sum(amount) as total_payments
from payment p 
group by payment_date 
order by total_payments desc 
limit 1;