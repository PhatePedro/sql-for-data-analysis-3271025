CREATE OR REPLACE VIEW V_CustomerOrderSummary AS
SELECT State,
  COUNT(O.CustomerID) as Num_of_Orders,
  AVG(TotalDue) as Avg_Due,
  MIN(TotalDue) as Min_Due,
  MAX(TotalDue) as Max_Due,
  SUM(TotalDue) as Total_Sales
FROM Customer C
  JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY State