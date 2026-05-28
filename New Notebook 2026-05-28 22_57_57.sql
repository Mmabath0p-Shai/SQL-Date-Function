-- Databricks notebook source
select *
from retail.sales.sales_data ;


select `customer ID`, Date,
YEAR(Date) AS Trans_year,
Month(Date) AS Trans_month,
Monthname(Date) AS Trans_Month_name,
day(Date) AS Trans_day,
DAYNAME(Date) AS Trans_day_name
from retail.sales.sales_data ;


SELECT COUNT(DISTINCT `Customer ID`) AS unique_customers,
date,
YEAR(Date) AS Trans_year,
Month(Date) AS Trans_month,
MONTHNAME(Date) AS Trans_day_name,
Day(Date) AS Trans_day,
Dayname(Date) AS Trans_day_name,

SUM(`Total Amount`) AS revenue,
`Product Category`

from retail.sales.sales_data 
Group by All;




