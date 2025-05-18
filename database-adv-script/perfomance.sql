-- Query to retrieve full booking details
SELECT b.*, u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id;
