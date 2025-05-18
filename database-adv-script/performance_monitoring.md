## Performance Monitoring

### Monitored Queries:

1. SELECT * FROM bookings WHERE user_id = 10;

- Before Index: Full scan, ~600ms
- After Index: Index scan, ~40ms

2. SELECT * FROM reviews WHERE property_id = 7;

- Before Index: Full scan, ~350ms
- After Index: Index scan, ~30ms

### Bottlenecks Identified:
- Missing indexes on foreign keys.
- Repeated subqueries.

### Changes Applied:
- Added indexes on all foreign keys and filter columns.
- Rewrote subqueries with joins where applicable.

### Result:
Average query response time improved by over 80%.
