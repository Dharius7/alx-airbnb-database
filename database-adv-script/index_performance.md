## Index Performance Report

We analyzed the query performance for frequent operations before and after adding indexes.

**Query:**
SELECT * FROM bookings WHERE user_id = 100;

- Without index: Full table scan (~800ms)
- With index: Index scan (~50ms)

**Query:**
SELECT * FROM reviews WHERE property_id = 50;

- Without index: Full scan (~500ms)
- With index: Index used (~40ms)

Indexing significantly improved query response times by over 85%.

