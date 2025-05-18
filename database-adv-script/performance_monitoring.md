# Performance Monitoring and Optimization Report

## Objective
To monitor query performance using SQL tools such as `EXPLAIN ANALYZE` and `SHOW PROFILE`, identify slow operations, and apply schema or index optimizations to enhance database performance.

---

## Tools Used
- `EXPLAIN ANALYZE` – to visualize and understand query execution plans.
- `SHOW PROFILE` – to measure resource usage (if using MySQL).

---

## Query 1: Fetch Bookings for a User with Property Details

### Original Query
```sql
SELECT b.*, p.title
FROM bookings b
JOIN properties p ON b.property_id = p.id
WHERE b.user_id = 5;

