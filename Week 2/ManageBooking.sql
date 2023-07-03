DELIMITER //
CREATE PROCEDURE AddValidBooking(IN bookingDate DATE, IN tableNo INT, IN customerName VARCHAR(50))
BEGIN
    DECLARE tableStatus VARCHAR(20);
    
    START TRANSACTION;
    
    SET tableStatus = (
        SELECT CASE
            WHEN EXISTS (
                SELECT * FROM bookings
                WHERE BookingDate = bookingDate AND TableNo = tableNo
            )
            THEN 'Booked'
            ELSE 'Available'
        END
    );
    
    IF tableStatus = 'Booked' THEN
        ROLLBACK;
        SELECT CONCAT('Booking declined. Table ', tableNo, ' is already booked on ', bookingDate) AS Result;
    ELSE
        INSERT INTO bookings (BookingDate, TableNo, CustomerName)
        VALUES (bookingDate, tableNo, customerName);
        COMMIT;
        SELECT CONCAT('Booking successful! Table ', tableNo, ' is reserved on ', bookingDate, ' for ', customerName) AS Result;
    END IF;
END //
DELIMITER ;
