-- Check performance BEFORE indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 10;

EXPLAIN ANALYZE
SELECT * FROM reviews WHERE property_id = 5;

-- Create indexes on high-usage columns
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_users_id ON users(id);

-- Check performance AFTER indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 10;

EXPLAIN ANALYZE
SELECT * FROM reviews WHERE property_id = 5;

