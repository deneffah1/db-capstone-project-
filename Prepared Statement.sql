PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, BillAmount FROM orders where CustomerID = ?'

SET @CustomerID = 1
EXECUTE GetOrderDetail USING @CustomerID