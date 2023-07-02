DELIMITER //
CREATE PROCEDURE AddBooking(IN bookingID INT,IN TableNo INT,IN CustomerName varchar(30),
IN bookingslot time, IN StaffID INT, IN BookingDate DATE
)
BEGIN
    INSERT INTO bookings (BookingID, TableNo, CustomerName, BookingSlot, CustomerID,  StaffID, BookingDate)
    VALUES (BookingID, TableNo, CustomerName, BookingSlot, CustomerID,  StaffID, BookingDate);
END //
DELIMITER ;

