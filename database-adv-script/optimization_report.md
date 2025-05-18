## Optimization Report

**Initial Analysis:**
- Full table scans observed in `EXPLAIN ANALYZE`.
- Joins not utilizing indexes, leading to nested loop joins.

**Changes Made:**
- Added indexes on:
  - bookings.user_id
  - bookings.property_id
  - payments.booking_id

**Result:**
- Query execution reduced from ~900ms to ~120ms.
- Execution plan switched from sequential scan to index scan.

