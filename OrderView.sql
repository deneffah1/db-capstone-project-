CREATE VIEW orderview AS
    SELECT 
        orders.OrderID AS OrderID,
        orders.Quantity AS Quantity,
        orders.UnitCost AS UnitCost
    FROM
        orders
    WHERE Quantity > 2