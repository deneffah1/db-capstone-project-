DELIMITER //
CREATE PROCEDURE CheckBooking(IN bookingDate DATE, IN tableNo INT)
BEGIN
    DECLARE tableStatus VARCHAR(20);
    
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
    
    SELECT CONCAT('Table ', tableNo, ' on ', bookingDate, ' is ', tableStatus) AS Result;
END //
DELIMITER ;

CALL CheckBooking('2023-05-08', '102')