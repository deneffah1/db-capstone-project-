DELIMITER //
DROP PROCEDURE IF EXISTS CancelOrder //
CREATE PROCEDURE CancelOrder(IN orderId INT)
BEGIN
    DELETE FROM orders WHERE OrderID = orderId;
    SELECT CONCAT('Order with ID ', orderId, ' has been canceled.') AS Result;
END //
DELIMITER ;