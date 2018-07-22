DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INTEGER       PRIMARY KEY AUTOINCREMENT,
    title     VARCHAR,
    firstname VARCHAR,
    surname   VARCHAR,
    email     VARCHAR
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id INTEGER       PRIMARY KEY AUTOINCREMENT,
    reservation_id    INTEGER,
    total             INTEGER,
    surcharges        INTEGER,
    invoice_date_time DATETIME,
    paid              BOOLEAN  DEFAULT false
);

DROP TABLE IF EXISTS room_types;

CREATE TABLE room_types (
    id INTEGER       PRIMARY KEY AUTOINCREMENT,
    type_name      VARCHAR,
    original_price INTEGER,
    current_price  INT
);

DROP TABLE IF EXISTS rooms;

CREATE TABLE rooms (
    id INTEGER       PRIMARY KEY AUTOINCREMENT,
    room_type_id INTEGER,
    sea_view     BOOLEAN
);

INSERT INTO customers
    (title, firstname, surname, email)
VALUES
    ('Mr.', 'Laurie', 'Ainley', 'laurie@ainley.com');
INSERT INTO customers
    (title, firstname, surname, email)
VALUES
    ('Mr.', 'Donald', 'Trump', 'don@twitter.com');
INSERT INTO customers
    (title, firstname, surname, email)
VALUES
    ('Ms.', 'Beyonce', 'Knowles', 'beyonce@queen.gov');
