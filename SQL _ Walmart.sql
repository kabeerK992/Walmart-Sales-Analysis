Select * FROM Walmart

--Update column name
Alter table walmart
Rename column "Branch" to branch

Alter table walmart
Rename column "City" to city

Alter table walmart
Rename column "Total_Price" to total_price

----Business Problem--------
--Q1. Find Different payment methode and number of transection.
Select payment_method, COUNT(*) AS no_of_transaction
From walmart
Group by payment_method

--Identify the highest-rated category in each branch, displaying the branch, category
-- AVG RATING
Select * FROM (
Select branch, category, AVG(rating) AS avg_rating,
RANK() OVER(Partition by branch Order BY AVG(rating) DESC) as rank
FROM walmart
GROUP BY branch, category
) AS ranked
WHERE rank=1

---- Q.3 Identify the busiest day for each branch based on the number of transactions
Select * From (
Select branch,
TO_CHAR(To_Date(date, 'DD/MM/YYYY'), 'Day')as day_name,
COUNT(payment_method) AS total_transaction,
Rank() OVER(Partition by branch Order by COUNT(payment_method) DESC) AS rank
FROM walmart
Group by branch, day_name) AS rank_number
WHERE rank =1

--4Calculate the total quantity of items sold per payment method.
Select payment_method, SUM(quantity) As total_qty_sold
FROM walmart
Group BY payment_method

-- Q.5
-- Determine the average, minimum, and maximum rating of category for each city. 
Select city, category, avg(rating) as avg_rating, min(rating) as min_rating,
max(rating) as max_rating
FROM walmart
GROUP BY city, category
Order by city

-- Q.6
-- Calculate the total profit for each category by considering total_profit as
-- (unit_price * quantity * profit_margin). 
-- List category and total_profit, ordered from highest to lowest profit.
Select category, SUM(unit_price * quantity * profit_margin) as total_profit
FROM walmart
GROUP BY category
Order by total_profit DESC


-- Q.7
-- Determine the most common payment method for each Branch. 
Select * FROM (
Select branch, payment_method, Count(payment_method) AS No_of_times_used,
RANK() OVER(Partition BY branch Order by Count(payment_method) DESC) AS rank
FROM walmart
GROUP BY branch, payment_method
) AS ranked
Where rank =1;

-- Q.8
-- Categorize sales into 3 group MORNING, AFTERNOON, EVENING 
-- Find out each of the shift and number of invoices
Select branch,
CASE 
  WHEN Extract(Hour From time::time) BETWEEN 5 AND 11 THEN 'Morning'
  WHEN Extract(Hour From time::time) BETWEEN 12 AND 17 THEN 'Afternoon'
  Else 'Evening'
End AS day_time,
Count(invoice_id) AS no_of_invoice
From walmart
Group BY branch, day_time
Order By branch, Count(invoice_id) DESC

-- #9 Identify 5 branch with highest decrese ratio in 
-- revevenue compare to last year(current year 2023 and last year 2022)
Select *, 
Extract(Year From To_Date(date, 'DD/MM/YY')) AS formated_Date
From walmart


-- 2022 sales
WITH revenue_2022
AS
(
	SELECT 
		branch,
		SUM(Total_price) as revenue
	From walmart
	Where Extract(Year From TO_DATE(date, 'DD/MM/YY')) = 2022 -- psql
	-- WHERE YEAR(TO_DATE(date, 'DD/MM/YY')) = 2022 -- mysql
	GROUP BY 1
),
revenue_2023
AS
(
Select branch,
SUM(Total_Price) as revenue
From walmart
Where Extract(Year From TO_DATE(date, 'DD/MM/YY')) = 2023
GROUP BY 1
)
Select
ls.branch,
ls.revenue as last_year_revenue,
cs.revenue as cr_year_revenue,
ROUND(
    (ls.revenue - cs.revenue)::numeric/
     ls.revenue::numeric * 100, 
		2) as rev_dec_ratio
		
FROM revenue_2022 as ls
JOIN
revenue_2023 as cs
ON ls.branch = cs.branch
Where	ls.revenue > cs.revenue
Order By 4 DESC
LIMIT 5

Select AVG(rating) From walmart

--Q10 Total revenue by year
Select Extract(Year From TO_Date(date, 'DD/MM/YY')) AS year,
COUNT(*) AS total_transaction,
SUM(total_price) AS total_revenue
From walmart
Group by Year
Order by Year

Select category, AVG(rating) avg_R
From walmart
GROUP BY category
Order BY AVG(rating) DESC


