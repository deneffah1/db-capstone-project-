CREATE VIEW customerorders AS
    SELECT 
        customers.CustomerID AS CustomerID,
        customers.CustomerName AS CustomerName,
        orders.OrderID AS OrderID,
        orders.UnitCost AS UnitCost,
        menu.MenuName AS MenuName,
        menu.Cuisine AS Cuisine
    FROM customers
        JOIN orders ON customers.CustomerID = orders.CustomerID
        JOIN menu ON menu.MenuID = orders.MenuID
    ORDER BY UnitCost
