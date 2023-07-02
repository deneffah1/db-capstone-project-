DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bookingID INT, IN bookingDate DATE)
BEGIN
    UPDATE bookings
    SET BookingDate = bookingDate
    WHERE BookingID = bookingID;
END //
DELIMITER ;
