

#collapsed
#Top customer who purchased highest quantity of products in the year 2008

SELECT sum(Qty) as TotalQty, Year, customerName 
FROM lab3_dm.collapsed_fact 
where year = 2008
group by customerName, Year
order by sum(Qty) DESC;

#Total quantity of products sold by type and year

SELECT sum(Qty) as TotalQty, Year, DESCRIPTION, TYPEDESCRIPTION 
FROM lab3_dm.collapsed_fact 
group by Year, DESCRIPTION, TYPEDESCRIPTION 
order by Year, DESCRIPTION, TYPEDESCRIPTION   DESC

