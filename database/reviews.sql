DROP TABLE IF EXISTS reviews
;

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rating INTEGER,
    customer_id INTEGER, 
    
    comment VARCHAR
(255),
    review_date DATETIME,
    foreign key
(customer_id) references customers
(id),
);
INSERT INTO reviews
    (customer_id, rating , comment , review_date )
VALUES
    (19, 5, "comment", "22-01-2018");
INSERT INTO reviews
    (customer_id, rating , comment , review_date )
VALUES
    (19, 5, "my second comment", "22-01-2018"); 
    INSERT INTO reviews
    (customer_id, rating , comment , review_date )
VALUES
    (19, 5, "other comment", "22-01-2018")