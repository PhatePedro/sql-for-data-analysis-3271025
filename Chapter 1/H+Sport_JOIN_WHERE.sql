SELECT *
FROM Customer;

SELECT *
FROM Orders;

SELECT SUM(total_due) 
FROM (
  SELECT Customer.CustomerID, 
  Customer.FirstName,
  Customer.LastName,
  Customer.Email,
  Orders.CreationDate,
  Orders.TotalDue AS total_due
  FROM Customer
  JOIN Orders
  ON Customer.CustomerID = Orders.CustomerID
  WHERE Status = 'due'
  ) AS subquery;

