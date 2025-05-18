-- Partitioning Booking table by start_date (PostgreSQL syntax)
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE
) PARTITION BY RANGE (start_date);

CREATE TABLE bookings_2024 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
