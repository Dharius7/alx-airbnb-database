-- Analyze query performance
EXPLAIN
SELECT b.*, u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE b.start_date >= '2025-01-01'
  AND p.city = 'Accra'
ORDER BY b.id;

