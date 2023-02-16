

#shrunken
#Calculate GVM(Gross Merchandise value) every year which helps to measure the health of the business of the company.
		
select SUM(f.Sales_Amount), y.Year 
from  lab3_dm.Shrunken_fact f
join lab3_dm.yearly_order_date_dim y on y.yearly_date_SK = f.yearly_date_SK
group by y.Year ;



#Top products that has made the most profit for the company on a yearly basis

select SUM(f.profit) as GVM, p.DESCRIPTION 
from  lab3_dm.Shrunken_fact f
join lab3_dm.product_dimension p on p.PRODUCT_SK = f.PRODUCT_SK
group by p.DESCRIPTION
order by SUM(f.profit) DESC



