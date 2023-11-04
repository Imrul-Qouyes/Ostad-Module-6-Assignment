SELECT customers.customer_ID, customers.name AS Customer_Name, customers.email, customers.location, COUNT(order_ID) as Total_Orders FROM orders JOIN customers ON orders.customer_ID = customers.customer_ID GROUP BY orders.customer_ID ORDER BY Total_Orders DESC