-- INNER JOIN: Bookings and users, ordered by booking id
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
ORDER BY b.id;

-- LEFT JOIN: Properties and reviews (include properties with no reviews), ordered by property id
SELECT p.*, r.*
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id;

-- FULL OUTER JOIN: Users and bookings, ordered by user id and booking id
SELECT u.*, b.*
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id
ORDER BY u.id NULLS LAST, b.id NULLS LAST;

