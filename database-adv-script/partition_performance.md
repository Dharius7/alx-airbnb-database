## Partition Performance Report

We partitioned the `bookings` table by start_date.

**Test Query:**
SELECT * FROM bookings WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';

**Results:**
- Without partitioning: ~850ms (scanned entire table)
- With partitioning: ~110ms (partition pruning active)

Partitioning significantly improved performance for date-based queries.
