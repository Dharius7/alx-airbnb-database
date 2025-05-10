## Entities and Attributes

### User
- `user_id`: UUID, Primary Key
- `first_name`: VARCHAR, NOT NULL
- `last_name`: VARCHAR, NOT NULL
- `email`: VARCHAR, UNIQUE, NOT NULL
- `password_hash`: VARCHAR, NOT NULL
- `phone_number`: VARCHAR, NULL
- `role`: ENUM (guest, host, admin), NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### Property
- `property_id`: UUID, Primary Key
- `host_id`: Foreign Key → User(user_id)
- `name`: VARCHAR, NOT NULL
- `description`: TEXT, NOT NULL
- `location`: VARCHAR, NOT NULL
- `pricepernight`: DECIMAL, NOT NULL
- `created_at`: TIMESTAMP
- `updated_at`: TIMESTAMP

### Booking
- `booking_id`: UUID, Primary Key
- `property_id`: Foreign Key → Property(property_id)
- `user_id`: Foreign Key → User(user_id)
- `start_date`: DATE
- `end_date`: DATE
- `total_price`: DECIMAL
- `status`: ENUM (pending, confirmed, canceled)
- `created_at`: TIMESTAMP

### Payment
- `payment_id`: UUID, Primary Key
- `booking_id`: Foreign Key → Booking(booking_id)
- `amount`: DECIMAL
- `payment_date`: TIMESTAMP
- `payment_method`: ENUM (credit_card, paypal, stripe)

### Review
- `review_id`: UUID, Primary Key
- `property_id`: Foreign Key → Property(property_id)
- `user_id`: Foreign Key → User(user_id)
- `rating`: INTEGER (1–5)
- `comment`: TEXT
- `created_at`: TIMESTAMP

### Message
- `message_id`: UUID, Primary Key
- `sender_id`: Foreign Key → User(user_id)
- `recipient_id`: Foreign Key → User(user_id)
- `message_body`: TEXT
- `sent_at`: TIMESTAMP
