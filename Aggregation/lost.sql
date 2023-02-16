

#lost
#Total product quantity purchased by customer name and type

SELECT SUM(f.Profit),  c.TypeName, c.CustTypeID, c.CustomerName
FROM lab3_dm.lost_fact f
join lab3_dm.customer_dimension c on f.Customer_SK = c.Customer_SK
group by c.TypeName, c.CustTypeID, c.CustomerName;


#Top customers who gave most business to company or total profit made by company by customer 

SELECT SUM(f.Profit), c.CustomerName
FROM lab3_dm.lost_fact f
join lab3_dm.customer_dimension c on f.Customer_SK = c.Customer_SK
group by c.CustomerName


