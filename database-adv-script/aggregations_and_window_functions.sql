-- 6. Total number of bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 7. Rank properties by number of bookings
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;
