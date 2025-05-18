-- 1. INNER JOIN: Bookings with users
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Properties with their reviews (include properties with no reviews)
SELECT properties.*, reviews.*
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- 3. FULL OUTER JOIN: All users and all bookings (even unmatched)
SELECT users.*, bookings.*
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
