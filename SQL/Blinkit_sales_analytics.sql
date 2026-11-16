Create database Blinkit_sales_analytics;
use Blinkit_sales_analytics;
select*from blinkit_customers;
select*from blinkit_delivery_performance;
select*from blinkit_order_items;
select*from blinkit_customer_feedback;
select*from blinkit_orders;
select*from blinkit_products;
select*from blinkit_inventory;
select*from blinkit_offer_usage;
SHOW TABLES;

/* DDL COMMAND PRACTICE */

/* Q1.Create a Data Base for the Blinkit_Sales_Analytics */
   
                Create Database Blinkit_sales_Analytics;
		
/* Q2.Select the Blinkit_sales Database */
                use Blinkit_sales_analytics;

/* Q3.Create a table For Storing Delivery zone */
				Create Table Blinkit_Delivery_zone(
                zone_id INT Primary key,
                Zone_name Varchar(100),
                City Varchar(50),
                Delivery_radius_km Decimal(10,2)
                );
/* Q4.Create a Table For storing product Categories */
                Create Table Blinkit_Categories(
                Categories_id INT Primary key,
                Categories_name Varchar(100),
                Categories_Description Varchar(100)
                );
			
  /* Q5.ADD Customer age to the Customer Table */
               Alter Table Blinkit_Delivery_zone
               Add Customer_age INT;

/* Q6.ADD brand name to the Product table  */

			   Alter Table blinkit_products
               add Brand_name varchar(100);
/*Q7. ADD Discount Percentage to the Products Table */
               Alter Table blinkit_products
               Add Discount_percentage Decimal(5,2);
/* Q8.ADD Payment method to the order Table */
               Alter Table blinkit_orders
               Add Payment_methods Varchar(50);
/* Q9.ADD Delivery status to the delivery table */
               Alter Table blinkit_delivery_performance
               add Delivery_statuss Varchar(50);
/* Q10.Increase the size of the customer name column */
              Alter Table blinkit_customers
              Modify customer_name Varchar(150);
/* Q11. Change the Product Name Column to Hold 200 Characters */
			  Alter Table blinkit_products 
              Modify Product_name Varchar(200);
/* Q12. Change the offer name Column size */
              Alter Table blinkit_offers
              Modify offer_name Varchar(225);
/* Q13. Rename the Delivery Zone Tables */
              Rename Table Blinkit_delivery_zone
              To Blinkit_Service_zone;
/* Q14. Rename a Column in the Practice Table*/
              Alter Table blinkit_service_zone
              Rename Column Zone_name to Service_name;
/* Q15. Remove the Customer age From Blinkit Service Zone Table */
              Alter Table blinkit_service_zone
              Drop Column Customer_age;
/* Q16. Remove City Name From The Blinkit Service Zone Table */
              Alter table blinkit_service_zone
              Drop Column City;
/* Q17. Remove all Records From the blinkit service zone Table  */
              Truncate Table blinkit_service_zone;
/* Q18. Delete the Practice Blinkit service zone table Completely */
              Drop Table blinkit_service_zone;
/* Q19. Create a Backup Structure of the Products table */
              Create table Blinkit_products_Backup
              like blinkit_products;
/* Q20.Delete the Backup Table After Practice */
              Drop Table Blinkit_products_backup;

/* DML COMMAND PRACTICE */

/* Q1.Create a DML Practice Table */
       Create Table Blinkit_dml_practice(
       Customer_id INT Primary Key,
       Customer_name Varchar(100),
       City Varchar(50),
       Total_orders INT,
       Total_spend Decimal(10,2)
       );
       
	/* Q2. Insert One customer */
		Insert Into Blinkit_dml_practice
        (Customer_id,Customer_name,City,Total_orders,Total_spend)
        values(101,'Arun','Chennai',5,2500);
        
/* Q3.Insert Multiple Customers */
        Insert Into Blinkit_dml_practice
        (Customer_id,Customer_name,City,Total_orders,Total_spend)
        Values
        (102,'Kumar','Madurai',8,4200),
        (103,'priya','chennai',12,6800),
        (104,'diviya','Coimbatore',6,3100),
        (105,'Rakul','Tirunelveli',10,5500);
        
/* Q4.Insert Another Customer With Zero Order */
        Insert Into Blinkit_dml_practice
        (Customer_id,Customer_name,city,Total_orders,Total_spend)
        Values(106,'Suresh','Salem',0,0);
/* Q5.Change Arun city from Chennai To Banglore */
        Update Blinkit_dml_practice
        Set city='Banglore'
        where Customer_id=101;
/* Q6. Increase Kumar Total Order to 10*/
        Update blinkit_dml_practice
        Set Total_orders =10
        Where Customer_id = 102;
/* Q7.Update Kumar Total Spending */
        Update Blinkit_dml_practice
        set Total_spend =5000
        where Customer_id=102;
/* Q8.Update Priya Orders and spending*/
	   Update Blinkit_dml_practice
       Set Total_orders = 15,
       Total_spend = 8500
       where Customer_id=103;
/* Q9.Give All Chennai Customer a 500 Spending Increase*/
       UPDATE blinkit_dml_practice
       SET Total_Spend = Total_Spend + 500
       WHERE City = 'Chennai' AND Customer_id = 101;
/* Q10.Increase Orders For Customers With More Than 5 Orders*/
       Update blinkit_dml_practice
       Set Total_orders=Total_orders +1
       Where Total_orders>5 AND Customer_id = 101;
/* Q11.Delete One Customer*/
       Delete From Blinkit_dml_practice
       where Customer_id =106;
/* Q12. Delete Customers from a Particular City*/
	   Delete From blinkit_dml_practice
       Where City ='salem'AND Customer_id = 101;
/* Q13. Delete Customer with Zero Orders*/
       Delete From blinkit_dml_practice
       Where Total_orders=0 AND Customer_id = 106;
/* Q14.Delete Customers Whose Spending is below 3000 */
       Delete From Blinkit_dml_practice
       Where Total_spend <3000 AND Customer_id = 101;
/* Q15.Update Product Price */
	   Update Blinkit_products
       Set Price=price*1.05
       where price>500;
/* Q16.Update Blinkit_offers */
       update blinkit_offers
       Set Status= Active
       Where Offer_id=1;
/* Q17.Update Delivery Status */
	   Update blinkit_delivery_performance
       Set Delivery_status= 'Delivered'
       Where Delivery_id=1;
/* Q18. Delete an Unused Offer*/
        Delete From blinkit_offers
        Where offer_id=10;
        
/* Data Query Langauge Questions */

/* Q1.Display All Customers*/
        Select*from blinkit_customers;
/* Q2.Display Only Customer Name */
		Select Customer_name 
        From blinkit_customers;
/* Q3.Display Customer Name and Area*/
       Select Customer_name,area
       From Blinkit_customers;
/* Q4.Display Product Details*/
       Select*from 
       blinkit_products;
/* Q5.Display Product name and Price*/
	Select Product_name ,Price
    from blinkit_products;
/* Q6.Find All unique Customer Area*/
     Select Distinct area
     from blinkit_customers;
/* Q7.Find Unique Product Categories*/
      Select distinct category
      from blinkit_products;
/* Q8.Find Customers From Chennai*/
      Select*from blinkit_customers
      where area='chennai';
/* Q9.Find Products Costing More than 500;*/
      Select*from blinkit_products
      where price>500;
/* Q10.Find Products Costing Less Than 100*/
      Select*from blinkit_products
      where price<100;
/* Q11.Find Order with amount Greater than 1000*/
	  Select*from blinkit_orders
      where order_total >1000;
      
      /*AND / OR*/
/* Q12.Find Products Between 100 and 500*/
      Select*from blinkit_products
      Where Price Between 100 and 500;
/*Q13.Find Customers From Chennai or Madurai*/
	  Select*from blinkit_customers
      Where Area='chennai' or Area='Madurai';
/* ORDER BY*/
/*Q14.Display Products From Highest to Lowest Price*/
       Select Product_name,Price
       From blinkit_products
       order by Price Desc;
/*Q15 Display Products From Lowest to highest orice.*/
       Select Product_name,price
       from blinkit_products
       Order by price asc;
/*Limit.*/
/*Q16. Find The 5 Most Expensive Product*/
        Select Product_name,price
        from blinkit_products
        order by Price Desc
        Limit 5;
/*Q17.Find the 10 Cheapest Products*/
        Select Product_name, price
        from blinkit_products
        order by price asc
        limit 10;
/*Aggreate Function.*/
/*Q18.Count Total customer*/
       Select Count(*) As total_customers
       From blinkit_customers;
/*Q19.Count Total products*/
       Select count(*) as Total_products
       From blinkit_products;
/*Q20.Find the Average Product Price*/
       Select avg(price) as average_price
       from blinkit_products;
/*Q21.Find the Highest Product Price*/
       Select Max(price) as Highest_price
       from blinkit_products;
/*Q22.Find The lowest Product price */
       select Min(price) as Lowest_price
       from Blinkit_products;
/*Q23.Find The Total Quantity Sold*/
	   Select Sum(quantity)as Total_quantity
       From blinkit_order_items;
/*GROUP BY.....*/
/*Q24.Which Area Have the Most Customers*/
       Select Area, count(*) As Customer_count
       from Blinkit_customers
       Group by Area;
/*Q25.Which Product Categories Have the Largest number of Products*/
       Select Category, Count(*) as Product_count
       From blinkit_products
       Group by Category;
/*Q26.Find Average Price By Category*/
		Select Category, Avg(price) as Average_price
		From Blinkit_products
        Group by Category;
/*HAVING*/
/*Q27.Find Area Having More Than 10 Customers*/
        Select Area, Count(*) as Customer_count
        From blinkit_customers
        Group by area
        Having Count(*)>10;
/*Q28.Find Categories Having More Than 5 Products*/
        Select category, Count(*) as Product_count
        from blinkit_products
        Group by Category
        having Count(*) <20;
/*Q29.Which Are the Top 10 Products By price*/
        Select Product_name,price
        from blinkit_products
        order by price desc
        limit 10;
/*Q30.Which Category Has the Highest Number of Products*/
        Select Category, Count(*) as Product_count
        from Blinkit_products
        group by category
        order by Product_count desc
        limit 3;
/*Q31.How many Customers Are there in Each area*/
		SELECT Area, COUNT(*) AS Total_customers
        FROM blinkit_customers
        GROUP BY Area
        ORDER BY Area DESC
		LIMIT 0, 1000;
        
/*SQL OPERATORS & FILTERING*/
/*Q1.Identifies High priced products above 500*/
      Select Product_name,price
      from blinkit_products
      where price>500;
/*Q2.Identifies Less price Products Below 100*/
      select product_name,price
      from blinkit_products
      where price<=100;
/*Q3 Identifies the Product Price Exactly 250.*/
      select Product_name,price
      from blinkit_products
      where price=250;
/*Q4.Identifies where the Product price is not 250*/
      Select product_name,price
      from blinkit_products
      where price<>250;
/*AND Operator*/
/*Q5.Find out the Product Between 100 and 500*/
	 select product_name, price
     from blinkit_products
     Where price >=100 and price<=500; 
     /*OR*/
     Select product_name, price
     From blinkit_products
     Where price BETWEEN 100 AND 500;
/*Q6.Find the Customers From chennai With Specific Condition.
 Condition: IF the Customer Table Contains Customer-status*/
 
      Select*from Blinkit_customers
      where area='Chennai'
      And Customer_segment='regular';
/*Q7.Find the Customers From Chennai or madurai*/
      Select*from Blinkit_customers
      where area ='chennai' or'madurai';
/*Q8.Find the Product From Two Categories */
      Select*from Blinkit_products
      where Category='Fruits & vegetables' or 'Personal Care';
/*IN OPERATOR*/
/*Q9.Find the customers From Selected Areas are Chennai,Maduari,coimbatore*/
	  Select*from blinkit_customers
      where area in ('chennai','madurai','Coimbatore');
/*BETWEEN OPERATOR.*/
/*Q11.Find the products Between 200 and 1000*/
      Select Product_name,price
      from Blinkit_products
      where price between 200 and 1000;
/*NOT OPERATOR.*/
/*Q12.Find the customers not From chennai*/
       Select*from blinkit_customers
       where not area ='chenani';
/*LIKE OPERATOR.*/
/*Q13.Customer Name Starting with A*/
       Select*from blinkit_customers
       where customer_name like 'a%';
/*Q14.Customer Names ending with A*/
       Select*from Blinkit_customers
       where Customer_name like '%a';
/*Q15.Customer Names Containing an*/
       Select*from blinkit_customers
       where Customer_name like '%an%';
/*Q16.Find Products Beginning with milk*/
       Select*from blinkit_products
       where Product_name like 'milk%';
/*IS NULL.*/
/*Q17.find Customers with Missing Values*/
       select*from Blinkit_customers
	   where email is NULL;
/*Q18.find Products Where Brand is missing*/
       Select*from Blinkit_products
       Where Brand_name is NULL;
/*NOT NULL.*/
/*Q19.Customer Who have an email*/
       Select*from blinkit_customers
       Where email is not null;
/*CASE STATEMENT.*/    
/*Q20.fIND Categorize Products Based on Price*/
       SELECT
    product_name,
    price,
    CASE
        WHEN price < 100 THEN 'Low Price'
        WHEN price BETWEEN 100 AND 500 THEN 'Medium Price'
        ELSE 'High Price'
    END AS price_category
FROM blinkit_products;
/*JOINS.*/  
      /*CONCEPT: INNER JOIN.*/  
/*Q1.Display Customer Names and their orders*/
       Select C.Customer_id,C.Customer_name,O.order_id,O.order_date
       from blinkit_customers as c
       Inner join Blinkit_orders as o
      on c.customer_id = o.customer_id;
/*Q2.Display all Customer,including those without orders*/
  /*CONCEPT: LEFT JOIN.*/  
       Select c.customer_id,c.customer_name,o.order_id
       from blinkit_customers AS c
       Left join blinkit_orders As o
       on c.Customer_id=o.customer_id; 
/*Q3.Find Customer who have never orderd*/
/*CONCEPT: LEFT JOIN IS NULL.*/  
       Select c.customer_id,c.customer_name
       from blinkit_customers As c
       left Join Blinkit_orders as o
       on c.customer_id =o.customer_id
       where o.order_id is Null;
/*Q4.Display Product names and order quanties*/
/*CONCEPT: Multiple Table Inner Join.*/  
       Select p.product_id,p.product_name,oi.order_id, oi.quantity
       from Blinkit_products as p
       inner Join blinkit_order_items as oi
       on p.product_id=oi.product_id;
/*Q5.Shows which products appear in customer orders and in 
  What what quantities and Calculate Total Quantity sold per*/
  /*CONCEPT: Join+ sum()+groupby.*/  
       Select p.Product_id, p.product_name,
       sum(oi.quantity) as Total_quantity_sold
       From blinkit_products as p
       Inner Join Blinkit_order_items as oi
       on p.product_id = oi.product_id
       Group BY p.product_id, p.product_name
       ORDER BY total_quantity_sold DESC;
/*Q6.Identifies The Best selling Products by Quantity and Calculate Revenue By products*/
/*CONCEPT: Join+sum()+ Calculated Column.*/  
       Select P.Product_id,P.Product_name,
       sum(oi.Quantity * oi.unit_price) as Total_revenue
       From Blinkit_products as p
       Inner Join Blinkit_order_items as oi
       on p.Product_id=oi.Product_id
       Group by P.product_id,p.Product_name
       Order by Total_revenue desc;
/*Q3.Identifies Products Generating The Highest Sales Revenue, Assuming
unit price is the price Charged Per Item and Display Customer, order and Purchased*/
/*CONCEPT: Three Table Join.*/ 
		Select c.customer_name,o.order_id,p.product_name,
        oi.Quantity, oi.unit_price
        from blinkit_customers as c
        Inner join Blinkit_orders as o
        on c.customer_id=o.customer_id
        Inner Join blinkit_order_items As oi
        On o.order_id=oi.order_id
        Inner Join blinkit_products as p
        on oi.product_id=p.product_id;
/*Q8.Display all Products, Including Products have never been ordered*/
/*CONCEPT: Start With Blinkit Products and use left Join.*/ 
        Select p.product_id,p.product_name, oi.order_id,p.product_id
        from blinkit_products as p
        Left Join blinkit_order_items as oi
        on P.product_id =oi.product_id;
/*Q9.Find Order With Their Customers Names*/
/*CONCEPT: Join Blinkit orders with Blinkit_customer.*/ 
		Select o.order_id,o.customer_id,C.customer_name,o.Customer_id
        from blinkit_orders as o
        Inner Join blinkit_customers as c
        on o.customer_id =c.customer_id;
/*Q10.Count Orders Placed By each Customer*/
/*CONCEPT: Use Left Join, Count, And Group by .*/ 
        Select c.customer_id ,c.customer_name,
        count(o.order_id) as Total_orders
        from Blinkit_customers as c
        Left Join Blinkit_orders as o
        on c.customer_id =o.customer_id
        Group by C.customer_id,c.customer_name;
/*Q11.Find The top five products by quantity sold */
/*CONCEPT: Join Products And Order Items then sort the sum in descending order .*/ 
         SELECT p.product_name,
         SUM(oi.quantity) AS total_quantity_sold
         FROM blinkit_products AS p
         INNER JOIN blinkit_order_items AS oi
		 ON p.product_id = oi.product_id
		 GROUP BY p.product_id, p.product_name
         ORDER BY total_quantity_sold DESC
		 LIMIT 5;
/*Q11.Calculate Total Revenue for each order */
/*CONCEPT: Use orderid,quantity, and unit price from order items.*/ 
          Select order_id,
          SUM(quantity * unit_price) AS order_revenue
		  FROM blinkit_order_items
		  GROUP BY order_id;
/*GROUPBY, AGGREGATE FUNCTION AND HAVING.*/  
/*Q1.Count Total Customers */
/*CONCEPT: Count.*/ 
          Select Count(*) as total_customer
          From blinkit_customers;
/*Q2.Count Total orders */
/*CONCEPT: Count.*/ 
		 Select Count(*) as total_orders
         from blinkit_orders;
/*Q3.Count Total Quantity Sold */
/*CONCEPT: Count.*/ 
         Select sum(Quantity) as Total_quantity_sold
         From blinkit_order_items;
/*Q4.Calculate average Product price */
         Select round(avg(price),2) as Average_price
         From Blinkit_products;
/*Q5.Find The Highest and lowest Product Prices*/
         Select Max(price) as Highest_price,
         min(price) as Lowest_price
         from blinkit_products;
/*GROUPBY.*/  
/*Q6.Count Customers By area*/
         Select Area,Count(*) as Total_customers
         from blinkit_customers
         Group by area;
/*Q7.Identifies Categories with the Largest Product assortment(Count
   Products By Category)*/
         Select Category,Count(*) as Total_products
         From blinkit_products
         Group by category;
/*Q8.Calculate Quantity Sold Per product*/
          Select Product_id, sum(quantity) as Total_quantity_sold
          From blinkit_order_items
          group by product_id;
/*Q9.Calculate Revenue Per Product*/
          Select Product_id, sum(quantity*unit_price) as Total_revenue
          From blinkit_order_items
          Group by product_id;
/*Q10.Calculate Average Price By Category*/
		  Select Category, Round(avg(price),2) as Average_price
          From Blinkit_products
          Group by category;

/*ORDER BY WITH GROUP BY*/
/*Q11.Find the Top 5 Products by Quantity Sold/
		 Select product_id, sum(quantity) as Total_quantity_sold
         From Blinkit_order_items
         Group by Product_id
         Order by Total_quantity_sold desc
         limit 5;
/*Q12.Rank Product Categories by Average Price/
         Select Category, Round(avg(price),2) as average_price
         from Blinkit_products
         group by category
         Order by Average_price desc;
/*Q11.Find Categories with more than 10 products/
         select category,count(*) as Total_products
         from Blinkit_products
         group by category
         having count(*)>10;
/*Q11.Find customers who placed more than 5 orders/
		Select c.customer_id, c.customer_name,
        count(o.order_id) as Total_orders
        from Blinkit_customers as c
        Inner join Blinkit_orders as o
        on c.customer_id = o.customer_id
        group by c.customer_id ,c.customer_name
        having count(o.order_id)>1000;
/*Q16.Count the number of orders for each customer/
	/*Hint: Join Customers and orders use count and group by/
        Select c.customer_id,c.Customer_name ,Count(o.order_id)as Total_orders
        from blinkit_customers as c
        Left Join Blinkit_orders as o
        on c.customer_id=o.customer_id
        Group by Customer_name,customer_id;
/*Q17.Find Categories With an average product price below 200*/
        Select category, avg(price) as average_price
        from Blinkit_products
        Group by category
        having avg(price)<1500;
/*Q18.Find The Top 5 Products By Total Revenue/
/*Hint : Join Products And order items,then sum quantity multiplied by unit_price/
		Select p.product_id,P.product_name, Sum(oi.quantity*oi.unit_price)  as Total_revenue
        from blinkit_products as p
        join blinkit_order_items as oi
        on p.product_id=oi.product_id
        group by Product_id,product_name
        order by Total_revenue desc
        limit 5;
/*Q19.Find Customer Whose Total order Count is at least 3/
   /*Hint : Group Order by Customer_id and Filter the count with having/     
        Select customer_id,count(*) as total_orders
        from blinkit_orders
        group by customer_id
        having count(*)>=3;
/*SUB QUERIES/
    /*Q1.Identifies Products Priced Above the over all average/    
        /*Hint : Subquery with avg()/     
        Select Product_name
        from Blinkit_products
        where Price >(select avg(price)
        from blinkit_products);
/*Q2.Find the Highest price products/
/*Hint : sub query with max()/ 
        Select Product_name,price
        from blinkit_products
        where price=(select max(price)
        from Blinkit_products);
/*Q3. Find the Cheapest product/
       select product_name,price
       from blinkit_products
       where price=(select min(price)
       from blinkit_products);
/*Q4.Find Products priced Above 500 and above the average price/
       /*Hint : sub query combined with AND/ 
	   Select Product_name,price
       from blinkit_products
       where price>500
       and price>(select avg(price)
       from blinkit_products);
/*Q5.Identifies customers who have made purchases/
       /*Hint : IN with sub query/ 
       Select customer_id,customer_name
       from blinkit_customers
	   Where customer_id IN(Select customer_id
       From blinkit_orders);
/*Q5.Find Customers Who Have never Placed an order/
       /*Hint : NOT EXISTS/ 
	   select c.customer_id,c.customer_name
       from Blinkit_customers as c
       Where not exists(
       select 1
       from Blinkit_orders as o
       where o.customer_id = c.customer_id);
/*Q7.Identifies products Without Matching Order items records/
       /*Hint : not in/ 
       Select p.product_id,p.product_name
       from blinkit_products as p
       where p.product_id not in (
       select product_id
       from blinkit_order_items
       where product_id is not null);
/*Q8.Find Products Whose Price is above their category's average/
       /*Hint : correlated Subqueries/ 
       Select p.product_name,p.category,p.price
       from blinkit_products as p
       where p.price>(
       select avg(p2.price)
       From blinkit_products as p2 
       where p2.category = p.category);
/*Q9.Find Customer who order more frequently than the average customer with at least an order/
       /*Hint : Subquery with Group by/ 
       Select c.customer_id,c.customer_name
       from blinkit_customers as c
       where ( select count(*)
       from blinkit_orders as o
       where o.customer_id=c.customer_id)>
       (select avg(order_count)
       from(select count(*) as order_count
       from blinkit_orders
       group by customer_id) as customer_orders);
/*Q10.Identifies orders with avalue greater than average order value calculated from the order items/
       /*Hint :nested sub queries/ 
      SELECT order_id,order_value
      FROM (SELECT 
	  order_id,
	  SUM(quantity * unit_price) AS order_value
	  FROM blinkit_order_items
      GROUP BY order_id
      ) AS order_totals
      WHERE order_value > (
	  SELECT AVG(order_value)
	  FROM (SELECT 
	  SUM(quantity * unit_price) AS order_value
	  FROM blinkit_order_items
	  GROUP BY order_id
    ) AS average_order_totals
);
/*Q12.Find Products With same price as the highest price product/
       Select product_id,product_name,price
       from blinkit_products
       where price=(select max(price)
       from blinkit_products);
/*Q13.Find products with a price higher than every product in the snacks category
  Concept: all/
        Select product_name,price
        from blinkit_products
        where price>all(
        select price 
        from blinkit_products
        where category ='snacks');
/*Q14.Find Product with aprice higher than a least one product in the snacks category
concept; any/
      SELECT product_name, price
      FROM blinkit_products
      WHERE price > ANY (
      SELECT price
      FROM blinkit_products
      WHERE category = 'snacks'
);
 /*Q15.Identifies orders containing at least one item sold at the highest recorderd unit price/
      Select distinct order_id
      from blinkit_order_items
      where unit_price=(
      select max(unit_price)
      from blinkit_order_items);
      
/*CTES -COMMON TABLE EXPRESSIONS/
/*Q1.Find Products priced above 500/
      with expensive_products as(
      select product_name,price
      from blinkit_products
      where price>500)
      select*from expensive_products;
/*Q2.Find Product priced above the average
concept:CTE+AVG()/
with Average_price as(
select avg(price) as avg_price
from blinkit_products)
select p.product_name,p.price
from blinkit_products as p
cross join average_price as a
where p.product_name>avg_price;
/*Q3.Count customer in each area
concept:CTE+ GROUP BY/
        with area_customer as(
        select area,count(*) as Total_customers
        from blinkit_customers
        group by area)
        select * from area_customer
        order by Total_customers DESC;
/*Q4.Calculate Total Quantity sold per product/
        with Product_sales as(
        select product_id,
        sum(quantity)as Total_quantity
        from blinkit_order_items
        group by Product_id)
        select* from Product_sales
        order by Total_quantity desc;
/*Q5.calculate Revenue Per Product/
        with product_revenue as(
		select product_id,
        sum(quantity*unit_price) as total_revenue
        from blinkit_order_items
        group by product_id)
        select *from product_revenue
        order by Total_revenue desc;
/*Q6.Find The Top 5 products by revenue/
       With Product_revenue as(
       select p.product_id,p.product_name,
       sum(oi.unit_price) as revenue
       from blinkit_products as p
       inner Join Blinkit_order_items as oi
       on p.product_id =oi.product_id
       group by p.product_id,p.product_name)
       select * from product_revenue
       order by revenue desc
       limit 5;
/*Q7.Find Categories with more than 10 products/
       With category_count as(
       select category,count(*) as Total_products
       from blinkit_products
       group by Category)
       select* from category_count
       where Total_products >10;
/*Q8.Find Customer who placed more than 3 orders/    
       with customer_orders as(
       select customer_id,
       count(*) as Total_orders
       from blinkit_orders
       group by customer_id)
       select c.customer_id,c.customer_name,co.total_orders
       from customer_orders as co
       inner Join blinkit_customers as c
       on co.customer_id=c.customer_id
       where co.total_orders >3;
/*Q9.Calculate Total revenue for each orders/ 
	  with order_revenue as(
      select order_id,
      sum(quantity*unit_price) as total_revenue
      from blinkit_order_items
      group by order_id)
      select * from order_revenue
      order by total_revenue desc;
/*Q10.Find order above the average order value/ 
      With Order_revenue as(
      select order_id,
      sum(quantity*unit_price) as Total_revenue
      from blinkit_order_items
      group by order_id),
      average_order_value as(
      select avg (total_revenue) as Avg_revenue
      from order_revenue)
      select r.order_id, r.total_revenue
      from order_revenue as r
      cross Join average_order_value as a 
      where r.total_revenue>a.avg_revenue;
/*WINDOW FUNCTION/
/*Q1.List Products from highest price to lowest with a Unique row Number/
	SELECT product_id,
    product_name,price,
    ROW_NUMBER() OVER (ORDER BY price DESC) AS row_num
    FROM blinkit_products;
/*Q2.Rank Products by price/
    Select product_name,price,
    rank() over(order by price desc) as price_rank
    from blinkit_products;
/*Q3.Rank Products Without Gap/
     Select product_name,price,Dense_rank()
     over(order by price desc) as Dense_price_rank
     from blinkit_products;
/*Q4.Rank Products With Each Category/
	 Select Product_name,Category,price,
     Dense_rank()over(
     partition by category
     order by price desc) as Category_rank
     from blinkit_products;
/*Q5.Find the Top 3 Products By price in each category/
     With ranked_products as (
     select product_id,product_name,
     category,price,dense_rank() over(
     partition by category
     order by price desc) as price_rank
     from blinkit_products)
     select*from ranked_products
	 WHERE price_rank <= 3;

/*Q6.Shows each order item record along side the product total quantity across all records/
     Select order_id,
     product_id,quantity,
     sum(quantity) over(
     partition by product_id) as product_totl_quantity
     from blinkit_order_items;
/*Q7.Calculate a Running Total of Quantity sold/
     select order_id,product_id,quantity,
     sum(quantity) over(
     order by order_id
     rows between unbounded preceding
     and current row) as running_quantity
     from blinkit_order_items;
/*Q8.Calculate Average price within each category/
     select product_name,
     category, price,
     Round(avg(price) over(
     partition by category),2) as category_avg_price
     from blinkit_products;
/*Q9.Show the Previous orders date for each customer/
     Select customer_id,order_id,order_date,
     lag(order_date)over(
     partition by customer_id
     order by order_date,order_id) as previous_order_date
     from blinkit_orders;
/*Q10.Show the next order is date for each customer/
     select customer_id,order_id, order_date,
     lead(order_date) over(
     partition by customer_id
     order by order_date,order_id) as next_order_date
     from blinkit_orders;
     
/*Real World Business Question/
/*Q1.What is the Total number of orders/
    /*CONCEPT: COUNT/
	  Select Count(*) as total_orders
	  from blinkit_orders;
/*Q2.What is the Total sales revenue/
	/*CONCEPT: SUM() + CALCULATED COLUMN/  
      Select Round(sum(quantity*unit_price),2) as total_revenue
      from blinkit_order_items;

/*Q3.What is the average order value/
	/*CONCEPT: CTE+AVG()+GROUP BY/     
      With order_totals as (select order_id,
      sum(quantity*unit_price) as order_value
      from blinkit_order_items
      group by order_id
      )
      select Round(AVG(order_value),2) as Average_order_value
      from order_totals;
/*Q4.What is the monthly Revenue Trend/
	/*CONCEPT: JOIN + GROUP BY + DATE FUNCTION/  
	 Select Date_Format(o.order_date,'%Y-%M') as Sales_month,
     Round(sum(oi.quantity*oi.unit_price),2)as Monthly_revenue
     From Blinkit_orders as O 
     Join Blinkit_order_items as oi
     on o.order_id=oi.order_id
     Group by Date_format(o.order_date,'%Y-%M') 
     order by sales_month;
/*Q5.What is Total Quantity Sold/
	 Select sum(quantity) as total_quantity_sold
     from blinkit_order_items;
/*Q6.What are the top 10 Products by revenue/
	/*CONCEPT: JOIN +SUM()+GROUPBY+LIMIT/    
      Select p.product_id,p.product_name,
      Round(sum(oi.quantity*oi.unit_price),2) as Total_revenue
      From Blinkit_products as p 
      Join Blinkit_order_items as oi
      on p.product_id=oi.product_id
      group by p.product_id,p.product_name
      order by Total_revenue desc 
      limit 10;
/*Q7.Which Category Generates the Highest Revenue/
	 Select p.category,Round(sum(oi.quantity*oi.unit_price),2) as category_revenue
     From Blinkit_products as p 
     Join Blinkit_order_items as oi
     on p.product_id=oi.product_id
     group by p.category
     order by category_revenue desc;
/*Q8.Which Products Sell the Highest Quanties/
     Select P.product_name,
     sum(oi.quantity) as Total_quantity_sold
     From Blinkit_products as p 
     Join Blinkit_order_items as oi
     on p.product_id=oi.product_id
     group by p.product_id,p.product_name
     order by Total_quantity_sold desc
     limit 10;
/*Q9.Which Products Are priced above their category/
     select *from (
     select product_name,category,price,
	 avg(price) over (
	 partition by category
	 ) as category_avg_price
     from blinkit_products) as product_analysis
     where price > category_avg_price
     order by category, price desc;
/*Q10.Which category contain more than 10 products /
     select Category, 
     count(*) as product_count
     from blinkit_products
     group by category
     having Count(*) >10
     order by product_count desc;
/*Q11.Which customers have spend the most /
     Select c.customer_id,c.customer_name,
     Round(sum(oi.quantity*oi.unit_price),2) as Total_spent
     from blinkit_customers as c
     Join Blinkit_orders as O 
     on c.customer_id =o.customer_id
     join Blinkit_order_items as oi
     on o.order_id= oi.order_id
     group by c.customer_id,c.customer_name
     order by Total_spent desc
     limit 10;
/*Q12.How many Orders has Each Customer Placed /
     Select c.customer_id,c.customer_name,
     count(o.order_id) as Total_orders
     from Blinkit_customers as c 
     Left Join Blinkit_orders as o 
     on c.customer_id = o.customer_id
     Group by c.customer_id,c.customer_name
     order by Total_orders desc;
/*Q13.Who are the Repeated Customers /
     Select c.customer_id,c.customer_name,
     Count(o.order_id) as Total_orders
     From Blinkit_customers as c
     Join Blinkit_orders As o 
     on c.customer_id=o.customer_id
     group by c.customer_id, c.customer_name
     having Count(o.order_id)>1
     order by Total_orders desc;
/*Q14.Which Customes have never Placed an order /
     Select c.customer_id,c.customer_name
     from blinkit_customers as c
     Where not Exists(
     select 1
     from Blinkit_orders as O 
     Where o.customer_id=c.customer_id);
/*Q15.Which Customers Have an order value above the average/
     With Customer_spending as(
     select o.customer_id,sum(oi.quantity*unit_price)
     as Total_spent
     From blinkit_orders as o
     Join blinkit_order_items as oi
     on o.order_id=oi.order_id
     group by o.customer_id)
     select customer_id,
     Round(Total_spent,2) as Total_spent
     From Customer_spending
     Where Total_spent>(
     select avg(Total_spent)
     from Customer_spending)
     order by Total_spent desc;
/*Q16.What is the average delivery time
CONCEPT: AVG()/
	Select Round(AVG(delivery_time_minutes),2)
    as average_delivery_minutes
    from blinkit_delivery_performance;
 /*Q17.Which Products have low inventory
CONCEPT:WHERE + ORDER BY/
    Select product_id,stock_quantity
    from blinkit_inventory
    where stock_quantity<20
    order by stock_quantity asc;
/*Q18.What is the average customer feedback rating
CONCEPT: AVG()+ Round/
    Select (avg(rating),2) as average_rating,
    count(*) as total_feedback_records
    from blinkit_customer_feedback;
/*Q19.Which marketing campaigns the most conversions
CONCEPT: SUM()+GROUP BY+ ORDER BY/
    Select campaign_name
    sum(conversions) as total_conversions
    from blinkit_marketing_performances
    group by campaign_name
    order by Total_conversions desc;
/*Q20.Which offers are used most frequently
CONCEPT: JOIN+COUNT()+GROUP BY/
     select o.offer_id,
     count(u.offer_id) as total_uses
     from blinkit_offers as o
     left join blinkit_offers_usage as u 
     on o.offer_id=u.offer_id
     group by o.offer_id
     order by total_uses desc;