DELIMITER //
CREATE PROCEDURE CancelBooking(IN bookingID INT)
BEGIN
    DELETE FROM bookings
    WHERE BookingID = bookingID;
    
    SELECT CONCAT('Booking with ID ', bookingID, ' has been cancelled.') AS Result;
END //
DELIMITER ;
