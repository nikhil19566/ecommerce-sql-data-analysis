create database ecommerce_analytics_project;
use ecommerce_analytics_project;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers VALUES
(1,'Rahul Sharma','Delhi','Delhi','2023-01-15'),
(2,'Priya Singh','Noida','Uttar Pradesh','2023-02-10'),
(3,'Amit Verma','Ghaziabad','Uttar Pradesh','2023-02-25'),
(4,'Neha Gupta','Lucknow','Uttar Pradesh','2023-03-12'),
(5,'Arjun Mehta','Jaipur','Rajasthan','2023-03-28'),
(6,'Sneha Kapoor','Mumbai','Maharashtra','2023-04-05'),
(7,'Rohit Kumar','Pune','Maharashtra','2023-04-19'),
(8,'Anjali Jain','Bhopal','Madhya Pradesh','2023-05-07'),
(9,'Karan Malhotra','Chandigarh','Chandigarh','2023-05-21'),
(10,'Pooja Agarwal','Kolkata','West Bengal','2023-06-02'),
(11,'Vikas Yadav','Gurgaon','Haryana','2023-06-18'),
(12,'Simran Kaur','Amritsar','Punjab','2023-07-04'),
(13,'Manish Tiwari','Kanpur','Uttar Pradesh','2023-07-22'),
(14,'Riya Sharma','Delhi','Delhi','2023-08-09'),
(15,'Aditya Singh','Noida','Uttar Pradesh','2023-08-27'),
(16,'Nisha Patel','Ahmedabad','Gujarat','2023-09-14'),
(17,'Saurabh Jain','Indore','Madhya Pradesh','2023-10-03'),
(18,'Kavita Rao','Bangalore','Karnataka','2023-10-18'),
(19,'Mohit Bansal','Hyderabad','Telangana','2023-11-06'),
(20,'Tanya Arora','Chennai','Tamil Nadu','2023-11-25'),
(21,'Deepak Sharma','Delhi','Delhi','2024-01-08'),
(22,'Megha Saini','Noida','Uttar Pradesh','2024-01-19'),
(23,'Varun Gupta','Jaipur','Rajasthan','2024-02-11'),
(24,'Ishita Roy','Kolkata','West Bengal','2024-02-26'),
(25,'Nitin Kumar','Mumbai','Maharashtra','2024-03-15');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);


INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Smartphone','Electronics',30000),
(103,'Headphones','Electronics',2500),
(104,'Smart Watch','Electronics',5000),
(105,'Tablet','Electronics',22000),
(106,'Keyboard','Accessories',1800),
(107,'Mouse','Accessories',900),
(108,'Monitor','Accessories',15000),
(109,'Backpack','Fashion',2500),
(110,'Running Shoes','Fashion',4000),
(111,'T-Shirt','Fashion',1200),
(112,'Jeans','Fashion',2500),
(113,'Office Chair','Furniture',8500),
(114,'Study Table','Furniture',7000),
(115,'Bookshelf','Furniture',6000);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO orders VALUES
(1001,1,'2024-01-05','Delivered'),
(1002,2,'2024-01-08','Delivered'),
(1003,3,'2024-01-12','Delivered'),
(1004,4,'2024-01-18','Cancelled'),
(1005,5,'2024-01-22','Delivered'),
(1006,1,'2024-02-03','Delivered'),
(1007,6,'2024-02-07','Delivered'),
(1008,7,'2024-02-11','Shipped'),
(1009,8,'2024-02-15','Delivered'),
(1010,9,'2024-02-20','Delivered'),
(1011,10,'2024-02-25','Cancelled'),
(1012,2,'2024-03-02','Delivered'),
(1013,11,'2024-03-06','Delivered'),
(1014,12,'2024-03-10','Shipped'),
(1015,13,'2024-03-15','Delivered'),
(1016,1,'2024-03-20','Delivered'),
(1017,14,'2024-03-25','Delivered'),
(1018,15,'2024-04-01','Delivered'),
(1019,16,'2024-04-05','Delivered'),
(1020,17,'2024-04-10','Cancelled'),
(1021,18,'2024-04-15','Delivered'),
(1022,19,'2024-04-20','Shipped'),
(1023,20,'2024-04-25','Delivered'),
(1024,6,'2024-05-01','Delivered'),
(1025,7,'2024-05-05','Delivered'),
(1026,8,'2024-05-10','Cancelled'),
(1027,9,'2024-05-15','Delivered'),
(1028,10,'2024-05-20','Delivered'),
(1029,11,'2024-05-25','Delivered'),
(1030,12,'2024-06-01','Delivered'),
(1031,13,'2024-06-05','Delivered'),
(1032,14,'2024-06-10','Shipped'),
(1033,15,'2024-06-15','Delivered'),
(1034,16,'2024-06-20','Delivered'),
(1035,17,'2024-06-25','Delivered'),
(1036,18,'2024-07-01','Delivered'),
(1037,19,'2024-07-05','Cancelled'),
(1038,20,'2024-07-10','Delivered'),
(1039,21,'2024-07-15','Delivered'),
(1040,22,'2024-07-20','Delivered'),
(1041,23,'2024-08-01','Delivered'),
(1042,24,'2024-08-05','Shipped'),
(1043,25,'2024-08-10','Delivered'),
(1044,1,'2024-08-15','Delivered'),
(1045,5,'2024-08-20','Delivered'),
(1046,10,'2024-08-25','Delivered'),
(1047,15,'2024-09-01','Delivered'),
(1048,20,'2024-09-05','Cancelled'),
(1049,21,'2024-09-10','Delivered'),
(1050,22,'2024-09-15','Delivered');


CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO order_items VALUES
(1,1001,101,1,55000),
(2,1001,103,2,2500),
(3,1002,102,1,30000),
(4,1002,107,2,900),
(5,1003,105,1,22000),
(6,1003,106,1,1800),
(7,1004,109,2,2500),
(8,1005,110,1,4000),
(9,1005,111,3,1200),
(10,1006,101,1,55000),
(11,1006,108,1,15000),
(12,1007,102,1,30000),
(13,1007,103,1,2500),
(14,1008,104,2,5000),
(15,1009,109,1,2500),
(16,1009,112,2,2500),
(17,1010,113,1,8500),
(18,1010,106,2,1800),
(19,1011,115,1,6000),
(20,1012,101,1,55000),
(21,1012,107,1,900),
(22,1013,114,1,7000),
(23,1013,113,1,8500),
(24,1014,110,2,4000),
(25,1015,102,2,30000),
(26,1015,103,1,2500),
(27,1016,105,1,22000),
(28,1016,104,1,5000),
(29,1017,111,4,1200),
(30,1018,101,1,55000),
(31,1018,108,2,15000),
(32,1019,109,2,2500),
(33,1019,110,1,4000),
(34,1020,114,1,7000),
(35,1021,102,1,30000),
(36,1021,107,2,900),
(37,1022,103,3,2500),
(38,1022,104,1,5000),
(39,1023,112,2,2500),
(40,1024,105,1,22000),
(41,1024,106,2,1800),
(42,1025,101,1,55000),
(43,1025,103,2,2500),
(44,1026,111,3,1200),
(45,1027,113,1,8500),
(46,1027,114,1,7000),
(47,1028,102,1,30000),
(48,1028,104,1,5000),
(49,1029,115,1,6000),
(50,1029,109,2,2500),
(51,1030,110,2,4000),
(52,1031,101,1,55000),
(53,1031,107,2,900),
(54,1032,105,1,22000),
(55,1033,102,1,30000),
(56,1033,103,2,2500),
(57,1034,108,1,15000),
(58,1035,113,2,8500),
(59,1036,104,2,5000),
(60,1037,112,1,2500),
(61,1038,109,3,2500),
(62,1039,101,1,55000),
(63,1040,106,2,1800),
(64,1041,102,2,30000),
(65,1042,110,1,4000),
(66,1043,105,1,22000),
(67,1044,101,1,55000),
(68,1044,108,1,15000),
(69,1045,113,1,8500),
(70,1045,114,1,7000),
(71,1046,103,2,2500),
(72,1046,107,3,900),
(73,1047,102,1,30000),
(74,1048,111,2,1200),
(75,1049,104,1,5000),
(76,1050,109,2,2500);


CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments VALUES
(1,1001,'2024-01-05','UPI','Paid',60000),
(2,1002,'2024-01-08','Credit Card','Paid',31800),
(3,1003,'2024-01-12','UPI','Paid',23800),
(4,1004,'2024-01-18','UPI','Refunded',5000),
(5,1005,'2024-01-22','Debit Card','Paid',7600),
(6,1006,'2024-02-03','Credit Card','Paid',70000),
(7,1007,'2024-02-07','UPI','Paid',32500),
(8,1008,'2024-02-11','UPI','Paid',10000),
(9,1009,'2024-02-15','Debit Card','Paid',7500),
(10,1010,'2024-02-20','Credit Card','Paid',12100),
(11,1011,'2024-02-25','UPI','Refunded',6000),
(12,1012,'2024-03-02','Credit Card','Paid',55900),
(13,1013,'2024-03-06','UPI','Paid',15500),
(14,1014,'2024-03-10','Debit Card','Paid',8000),
(15,1015,'2024-03-15','Credit Card','Paid',62500),
(16,1016,'2024-03-20','UPI','Paid',27000),
(17,1017,'2024-03-25','UPI','Paid',4800),
(18,1018,'2024-04-01','Credit Card','Paid',85000),
(19,1019,'2024-04-05','UPI','Paid',9000),
(20,1020,'2024-04-10','Debit Card','Refunded',7000),
(21,1021,'2024-04-15','Credit Card','Paid',31800),
(22,1022,'2024-04-20','UPI','Paid',12500),
(23,1023,'2024-04-25','Debit Card','Paid',5000),
(24,1024,'2024-05-01','UPI','Paid',25600),
(25,1025,'2024-05-05','Credit Card','Paid',60000),
(26,1026,'2024-05-10','UPI','Refunded',3600),
(27,1027,'2024-05-15','Debit Card','Paid',15500),
(28,1028,'2024-05-20','Credit Card','Paid',35000),
(29,1029,'2024-05-25','UPI','Paid',11000),
(30,1030,'2024-06-01','UPI','Paid',8000),
(31,1031,'2024-06-05','Credit Card','Paid',56800),
(32,1032,'2024-06-10','Debit Card','Paid',22000),
(33,1033,'2024-06-15','UPI','Paid',35000),
(34,1034,'2024-06-20','Credit Card','Paid',15000),
(35,1035,'2024-06-25','UPI','Paid',17000),
(36,1036,'2024-07-01','Debit Card','Paid',10000),
(37,1037,'2024-07-05','UPI','Refunded',2500),
(38,1038,'2024-07-10','Credit Card','Paid',7500),
(39,1039,'2024-07-15','UPI','Paid',55000),
(40,1040,'2024-07-20','UPI','Paid',3600),
(41,1041,'2024-08-01','Credit Card','Paid',60000),
(42,1042,'2024-08-05','Debit Card','Paid',4000),
(43,1043,'2024-08-10','UPI','Paid',22000),
(44,1044,'2024-08-15','Credit Card','Paid',70000),
(45,1045,'2024-08-20','UPI','Paid',15500),
(46,1046,'2024-08-25','Debit Card','Paid',7700),
(47,1047,'2024-09-01','Credit Card','Paid',30000),
(48,1048,'2024-09-05','UPI','Refunded',2400),
(49,1049,'2024-09-10','UPI','Paid',5000),
(50,1050,'2024-09-15','Credit Card','Paid',5000);

-- select --

select * from customers;
select * from products;
select * from orders;
select * from order_items;
select * from payments;

-- Q1. “Find the top 5 customers by total revenue from delivered orders.”

  select * from
  (select customer_id,
  customer_name,
  total_revenue,
  row_number() over( order by total_revenue desc) as rn
  from(
  select c.customer_id,
  c.customer_name,
  sum( oi.quantity * oi.unit_price) as total_revenue
  from customers c
  inner join orders o
  on c.customer_id = o.customer_id
  inner join order_items oi
  on o.order_id = oi.order_id
  WHERE o.order_status = 'Delivered'
  group by c.customer_id,
  c.customer_name
  )x
  )y
  where rn <=5;
  
  
-- Q2. “Find the customer who has placed the highest number of orders.”
  
select c.customer_id, 
c.customer_name,
count(o.order_id) as total_order
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
order by total_order desc
limit 1;
  
-- Q3. “Find the total revenue generated by each product category.”
  
select p.category, sum(oi.quantity * oi.unit_price) as total_revenue
from products p 
inner join order_items oi
on p.product_id = oi.product_id
group by p.category;


-- Q4. “Find customers who have placed more than 2 orders.”

select c.customer_id, c.customer_name, count(o.order_id) as total_order
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having count(o.order_id) > 2;


-- Q5. “Find the product that generated the highest revenue.”

select p.product_id, p.product_name, sum(oi.quantity * oi.unit_price) as total_revenue
from products p
inner join order_items oi
on p.product_id = oi.product_id
group by p.product_id, p.product_name
order by total_revenue desc
LIMIT 1;

-- Q6. “Find all customers who have never placed an order.”

select c.customer_id, c.customer_name
from customers c
left join orders o
on c.customer_id = o.customer_id
where o.order_id is null;


-- Q7. “Find the city that generated the highest total revenue.”

select c.city, sum(oi.quantity * oi.unit_price) as total_revenue
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.city
order by total_revenue desc
LIMIT 1;


-- Q8.“Find the average order value for each month.”

SELECT 
    month,
    AVG(order_total) AS average_order_value
FROM (
    SELECT 
        o.order_id,
        MONTHNAME(o.order_date) AS month,
        MONTH(o.order_date) AS month_num,
        SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders o
    INNER JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY 
        o.order_id,
        MONTHNAME(o.order_date),
        MONTH(o.order_date)
) AS order_summary
GROUP BY month, month_num
ORDER BY month_num;


-- Q9.Find the customers whose total spending is greater than the average spending of all customers.

select c.customer_id, 
c.customer_name, sum(oi.quantity * oi.unit_price) as total_spending
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.customer_id, c.customer_name
having sum(oi.quantity * oi.unit_price) > (select 
avg(total_spending) from 
(
 select o.customer_id, sum(oi.quantity * oi.unit_price) as total_spending
 from orders o
 inner join order_items oi
 on o.order_id = oi.order_id
 group by o.customer_id
 )x
 );
 
 -- Q10. Find the top 3 products by revenue within each category.
 
 select * from (
 select category, product_name,
 total_revenue,
 row_number() over (partition by category order by total_revenue desc) as rn
 from (
 select p.category,
 p.product_name,
 sum(oi.quantity * oi.unit_price) as total_revenue
 from products p
 inner join order_items oi
 on p.product_id = oi.product_id
 group by p.category, p.product_id
 )x
 )y
 where rn <=3;
 
 
 -- Q11. Find customers who have placed more orders than the average orders per customer
 
 select c.customer_id, c.customer_name,
 count(o.order_id) as number_of_orders
 from customers c
 inner join orders o
 on c.customer_id = o.customer_id
 group by c.customer_id, c.customer_name
 having count(o.order_id) > (select avg(number_of_orders)as avg_num_order
 from(
 select c.customer_id,
 count(o.order_id) as number_of_orders
 from customers c
 inner join orders o
 on c.customer_id = o.customer_id
 group by c.customer_id, c.customer_name
 )x
 );
 
 
 -- Q12. Find the top 3 customers by total spending in each city.
 
 
 select city,customer_id,
 customer_name, total_spending
 from(
 select city, 
 customer_id, customer_name, total_spending,
 row_number() over(partition by city order by total_spending desc) as rnk
 from(
 select c.city,
 c.customer_id,
 c.customer_name, 
 sum(oi.quantity* oi.unit_price) as total_spending
 from customers c
 inner join orders o
 on c.customer_id = o.customer_id
 inner join order_items oi
 on o.order_id = oi.order_id
 group by c.customer_id, c.customer_name, c.city
 )x
 )y
 where rnk <=3;
 
 
 -- Q13. Find products whose total revenue is higher than the average product revenue.
 
 select p.product_id,
 p.product_name,
 p.category,
 sum(oi.quantity * oi.unit_price) as total_revenue
 from products p
 inner join order_items oi
 on p.product_id = oi.product_id
 group by p.product_id, p.product_name,
 p.category
 having sum(oi.quantity * oi.unit_price) > (select avg(total_revenue)
 from (
 select p.product_id, sum(oi.quantity * oi.unit_price) as total_revenue
 from products p
 inner join order_items oi
 on p.product_id = oi.product_id
 group by p.product_id
 )x
 );
 
 -- Q.14 Find the most recent order placed by each customer.
 
 SELECT customer_id,
       customer_name,
       order_id,
       order_date,
       order_amount
FROM (
    SELECT c.customer_id,
           c.customer_name,
           o.order_id,
           o.order_date,
           SUM(oi.quantity * oi.unit_price) AS order_amount,
           ROW_NUMBER() OVER (
               PARTITION BY c.customer_id
               ORDER BY o.order_date DESC
           ) AS rnk
    FROM customers c
    INNER JOIN orders o
        ON c.customer_id = o.customer_id
    INNER JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_id,
             c.customer_name,
             o.order_id,
             o.order_date
) x
WHERE rnk = 1;

-- Q15. Find customers who have purchased from at least 3 different product categories.

select c.customer_id, 
c.customer_name,
count( distinct p.category) as category_count
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
group by c.customer_id, c.customer_name
having count( distinct p.category) >=3;


-- Q16. For each product category, find monthly revenue and the previous month's revenue.

select month,
category,
monthly_revenue,
previous_month_revenue
from
(
select month,
category,
monthly_revenue,
lag(monthly_revenue) over(partition by category order by month) as previous_month_revenue
from(
select DATE_FORMAT(o.order_date, '%Y-%m') as month,
p.category,
sum(oi.quantity * oi.unit_price) as monthly_revenue
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
group by DATE_FORMAT(o.order_date, '%Y-%m'),
p.category
)x
)y;


-- Q17. For each customer, calculate their total purchase value and identify customers whose spending is above the overall average customer spending.

select c.customer_name, 
sum(oi.quantity * oi.unit_price) as total_purchase_value
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.customer_name
having sum(oi.quantity * oi.unit_price) > ( select 
avg(total_purchase_value) as avg_total_purchase_value
from 
(
select c.customer_name,
sum(oi.quantity * oi.unit_price) as total_purchase_value
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.customer_name

)x
)
ORDER BY total_purchase_value DESC;


-- Q18. Find the top 3 customers by total purchase value within each city.

select city,
customer_name,
total_purchase_value
from(
select city,
customer_name,
total_purchase_value,
row_number() over(partition by city order by total_purchase_value desc) as rnk
from(
select c.city,
c.customer_name,
sum(oi.quantity * oi.unit_price) as total_purchase_value
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.city,
c.customer_name
)x
)y
where rnk <=3;

-- Q19. Find the product category with the highest total revenue.

select category,
total_revenue
from(
select p.category,
sum(oi.quantity * oi.unit_price) as total_revenue,
row_number() over(order by sum(oi.quantity * oi.unit_price) desc) as rnk
from products p 
inner join order_items oi
on p.product_id = oi.product_id
group by p.category
)x
where rnk = 1;

-- Q20. Find each customer's latest order and return the customer name, order date, and order value


SELECT customer_name, order_date, order_value
FROM (
    SELECT
        c.customer_name,
        o.order_date,
        SUM(oi.quantity * oi.unit_price) AS order_value,
        ROW_NUMBER() OVER (
            PARTITION BY c.customer_id
            ORDER BY o.order_date DESC
        ) AS rnk
    FROM customers c
    INNER JOIN orders o
        ON c.customer_id = o.customer_id
    INNER JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY
        c.customer_id,
        c.customer_name,
        o.order_id,
        o.order_date
) x
WHERE rnk = 1;


-- Q21.Find the customers who have placed orders in at least 3 different months.

SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT DATE_FORMAT(o.order_date, '%Y-%m')) AS number_of_months
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.customer_name
HAVING COUNT(DISTINCT DATE_FORMAT(o.order_date, '%Y-%m')) >= 3
ORDER BY number_of_months DESC;


-- Q22. For each product category, find the month with the highest total revenue. If two or more months have the same highest revenue for a category, return all of those months.

select category, month,
monthly_revenue
from(
select category, month,
monthly_revenue,
rank() over(partition by  category order  by monthly_revenue desc) as rnk
from(
select p.category,
MONTH(o.order_date) as month,
sum(oi.quantity*oi.unit_price) as monthly_revenue
from products p
inner join order_items oi
on p.product_id = oi.product_id
inner join orders o
on oi.order_id = o.order_id
group by p.category, 
MONTH(o.order_date)
)x
)y
where rnk =1;


-- Q23. For each product category, find the product with the highest total revenue.

select category, product_name, total_revenue
from(
select p.category, p.product_name, sum(oi.quantity * oi.unit_price) as total_revenue,
rank() over(partition by p.category order by sum(oi.quantity * oi.unit_price) desc) as rnk
from products p
inner join order_items oi
on p.product_id = oi.product_id
group by p.category, p.product_name
)t
where rnk =1;

-- Q 24.Find the top 3 products by total revenue within each product category.

select category, product_name, total_revenue
from(
select category,
product_name, total_revenue,
row_number() over(partition by category order by total_revenue desc) as rnk
from (
select p.category, p.product_name, sum(oi.quantity * oi.unit_price) as total_revenue
from products p
inner join order_items oi
on p.product_id = oi.product_id
group by p.category, p.product_name
)x
)y
where rnk <=3;


-- Q25. Find customers whose total purchase value is higher than the average purchase value of all customers.

select c.customer_id, c.customer_name,
 sum(oi.quantity * oi.unit_price) as total_revenue
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.customer_id, c.customer_name
having sum(oi.quantity * oi.unit_price) > (select avg(total_revenue) as avg_total_rev
from(
select o.customer_id , sum(oi.quantity * oi.unit_price) as total_revenue
from orders o
inner join order_items oi
on o.order_id = oi.order_id
group by o.customer_id
)x
);


-- Q26. Find the month with the highest total revenue for each product category.

select category,
month, total_revenue
from (
select category, month,
total_revenue,
row_number() over(partition by category order by total_revenue desc) as rnk
from(
select p.category, 
MONTH(o.order_date) as month,
sum(oi.quantity * oi.unit_price) as total_revenue
from products p
inner join order_items oi
on p.product_id = oi.product_id
inner join orders o
on oi.order_id = o.order_id
group by p.category,
MONTH(o.order_date) 
)x
)y
where rnk=1;


-- Q27. Find customers who placed orders in every month of the year.

select c.customer_id, c.customer_name
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having count(distinct month(o.order_date)) = 12;


-- Q28. Find the product with the highest revenue in each month.

select month, 
product_name, total_revenue
from(
select 
MONTH(o.order_date)as month,
p.product_name,
sum(oi.quantity * oi.unit_price) as total_revenue,
row_number() over(partition by MONTH(o.order_date) order by sum(oi.quantity * oi.unit_price) desc) as rnk
from products p
inner join order_items oi
on p.product_id = oi.product_id
inner join orders o
on oi.order_id = o.order_id
group by MONTH(o.order_date),
p.product_name
)x
where rnk =1;

-- Q29.Find the customer with the highest average order value.

SELECT customer_id,
       customer_name,
       average_order_value
FROM (
    SELECT c.customer_id,
           c.customer_name,
           AVG(order_value) AS average_order_value,
           ROW_NUMBER() OVER (ORDER BY AVG(order_value) DESC) AS rnk
    FROM customers c
    INNER JOIN (
        SELECT o.order_id,
               o.customer_id,
               SUM(oi.quantity * oi.unit_price) AS order_value
        FROM orders o
        INNER JOIN order_items oi
        ON o.order_id = oi.order_id
        GROUP BY o.order_id, o.customer_id
    ) x
    ON c.customer_id = x.customer_id
    GROUP BY c.customer_id, c.customer_name
) y
WHERE rnk = 1;


-- Q30. Find the category with the highest average revenue per product..

select category,
averege_product_revenue
from(
select x.category,
avg(x.product_revenue) as averege_product_revenue,
row_number() over(order by avg(x.product_revenue) desc) as rnk
from products p
inner join ( select p.category,
p.product_id,
 sum(oi.quantity * oi.unit_price) as product_revenue
from products p
inner join order_items oi
on p.product_id = oi.product_id
group by p.category, p.product_id
)x
on p.category = x.category
group by p.category
)y
where rnk = 1;