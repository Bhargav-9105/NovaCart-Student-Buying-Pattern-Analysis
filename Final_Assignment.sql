/*CREATE DATABASE novacart;*/
USE novacart;
/*SELECT DB_NAME() AS CurrentDatabase;*/
/*
CREATE TABLE STUDENT (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10),
    college_year INT
);

CREATE TABLE PRODUCT_CATEGORY (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
); 

CREATE TABLE PRODUCT (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    brand VARCHAR(100),
    category_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    
    FOREIGN KEY (category_id)
        REFERENCES PRODUCT_CATEGORY(category_id)
); 

CREATE TABLE PURCHASE (
    purchase_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    product_id INT NOT NULL,
    purchase_date DATE NOT NULL,
    purchase_amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    frequency_of_purchase VARCHAR(50),
    delivery_preference VARCHAR(50),

    FOREIGN KEY (student_id)
        REFERENCES STUDENT(student_id),

    FOREIGN KEY (product_id)
        REFERENCES PRODUCT(product_id)
); 

CREATE TABLE REVIEW (
    review_id INT PRIMARY KEY,
    purchase_id INT NOT NULL,
    product_rating INT NOT NULL,
    review_comment VARCHAR(500),

    FOREIGN KEY (purchase_id)
        REFERENCES PURCHASE(purchase_id)
); */

/*SERT INTO PRODUCT_CATEGORY (category_id, category_name)
VALUES (1, 'Electronics');
INSERT INTO PRODUCT_CATEGORY (category_id, category_name)
VALUES
(2, 'Clothing'),
(3, 'Books'),
(4, 'Beauty'),
(5, 'Home & Kitchen'),
(6, 'Sports'),
(7, 'Grocery');
SELECT * FROM PRODUCT_CATEGORY;

INSERT INTO STUDENT
(student_id, student_name, age, gender, college_year)
VALUES
(1, 'Aarav Sharma', 18, 'Male', 1),
(2, 'Riya Patel', 19, 'Female', 1),
(3, 'Rahul Mehta', 20, 'Male', 2),
(4, 'Ananya Shah', 21, 'Female', 3),
(5, 'Karan Joshi', 22, 'Male', 4),
(6, 'Ishita Desai', 20, 'Female', 2),
(7, 'Dev Patel', 19, 'Male', 1),
(8, 'Sneha Kapoor', 23, 'Female', 4),
(9, 'Arjun Singh', 21, 'Male', 3),
(10, 'Meera Iyer', 22, 'Female', 4),
(11, 'Rohan Verma', 18, 'Male', 1),
(12, 'Kavya Nair', 20, 'Female', 2),
(13, 'Aditya Rao', 21, 'Male', 3),
(14, 'Priya Shah', 19, 'Female', 1),
(15, 'Yash Malhotra', 23, 'Male', 4),
(16, 'Diya Patel', 20, 'Female', 2),
(17, 'Manav Joshi', 22, 'Male', 4),
(18, 'Nisha Mehta', 21, 'Female', 3),
(19, 'Harsh Trivedi', 19, 'Male', 1),
(20, 'Aisha Khan', 22, 'Female', 4),
(21, 'Vivek Shah', 20, 'Male', 2),
(22, 'Tanvi Desai', 23, 'Female', 4),
(23, 'Dhruv Patel', 18, 'Male', 1),
(24, 'Pooja Verma', 21, 'Female', 3),
(25, 'Siddharth Rao', 22, 'Male', 4);


SELECT * FROM STUDENT
ORDER BY student_id;
INSERT INTO PRODUCT
(product_id, product_name, brand, category_id, price)
VALUES
(101, 'Wireless Headphones', 'JBL', 1, 2499.00),
(102, 'Smart Watch', 'Noise', 1, 1999.00),
(103, 'Bluetooth Speaker', 'Boat', 1, 1499.00),
(104, 'USB-C Charger', 'Portronics', 1, 799.00),
(105, 'Wireless Mouse', 'Logitech', 1, 1299.00),

(106, 'Cotton T-Shirt', 'Puma', 2, 999.00),
(107, 'Slim Fit Jeans', 'Levis', 2, 1999.00),
(108, 'Hoodie', 'H&M', 2, 1799.00),
(109, 'Casual Shirt', 'Roadster', 2, 1299.00),
(110, 'Sports Shoes', 'Nike', 2, 3499.00),

(111, 'Atomic Habits', 'Penguin', 3, 550.00),
(112, 'The Psychology of Money', 'Jaico', 3, 399.00),
(113, 'Rich Dad Poor Dad', 'Plata', 3, 450.00),
(114, 'Ikigai', 'Random House', 3, 399.00),
(115, 'The Alchemist', 'HarperCollins', 3, 350.00),

(116, 'Face Wash', 'Cetaphil', 4, 499.00),
(117, 'Moisturizer', 'Nivea', 4, 349.00),
(118, 'Sunscreen SPF 50', 'Minimalist', 4, 599.00),
(119, 'Lip Balm', 'Maybelline', 4, 299.00),
(120, 'Hair Serum', 'LOreal', 4, 699.00), 

(121, 'Water Bottle', 'Milton', 5, 699.00),
(122, 'Coffee Mug', 'Borosil', 5, 499.00),
(123, 'Study Lamp', 'Philips', 5, 899.00),
(124, 'Bedsheet Set', 'Wakefit', 5, 1299.00),
(125, 'Storage Box', 'Amazon Basics', 5, 599.00),

(126, 'Yoga Mat', 'Boldfit', 6, 799.00),
(127, 'Cricket Bat', 'SS', 6, 2499.00),
(128, 'Football', 'Nivia', 6, 699.00),

(129, 'Protein Bar Pack', 'Yoga Bar', 7, 499.00),
(130, 'Green Tea Pack', 'Tetley', 7, 299.00); 


INSERT INTO PURCHASE
(purchase_id, student_id, product_id, purchase_date, purchase_amount, payment_method, frequency_of_purchase, delivery_preference)
VALUES
(1001, 1, 101, '2026-01-05', 2499.00, 'UPI', 'Monthly', 'Prime'),
(1002, 2, 106, '2026-01-08', 999.00, 'Card', 'Monthly', 'Standard'),
(1003, 3, 111, '2026-01-12', 550.00, 'UPI', 'Occasionally', 'Standard'),
(1004, 4, 102, '2026-01-18', 1999.00, 'UPI', 'Weekly', 'Prime'),
(1005, 5, 110, '2026-01-25', 3499.00, 'Card', 'Monthly', 'Express'),
(1006, 6, 118, '2026-02-02', 599.00, 'UPI', 'Monthly', 'Prime'),
(1007, 7, 103, '2026-02-05', 1499.00, 'Cash', 'Occasionally', 'Standard'),
(1008, 8, 107, '2026-02-10', 1999.00, 'Card', 'Monthly', 'Prime'),
(1009, 9, 121, '2026-02-14', 699.00, 'UPI', 'Weekly', 'Prime'),
(1010, 10, 116, '2026-02-20', 499.00, 'UPI', 'Monthly', 'Standard'),

(1011, 11, 104, '2026-02-25', 799.00, 'Card', 'Occasionally', 'Standard'),
(1012, 12, 112, '2026-03-02', 399.00, 'UPI', 'Monthly', 'Prime'),
(1013, 13, 123, '2026-03-06', 899.00, 'Card', 'Monthly', 'Express'),
(1014, 14, 119, '2026-03-10', 299.00, 'UPI', 'Weekly', 'Prime'),
(1015, 15, 127, '2026-03-15', 2499.00, 'Card', 'Occasionally', 'Standard'),
(1016, 16, 118, '2026-03-20', 599.00, 'UPI', 'Monthly', 'Prime'),
(1017, 17, 101, '2026-03-25', 2499.00, 'Card', 'Monthly', 'Express'),
(1018, 18, 108, '2026-04-01', 1799.00, 'UPI', 'Weekly', 'Prime'),
(1019, 19, 113, '2026-04-05', 450.00, 'Cash', 'Occasionally', 'Standard'),
(1020, 20, 120, '2026-04-10', 699.00, 'UPI', 'Monthly', 'Prime'),

(1021, 21, 105, '2026-04-15', 1299.00, 'Card', 'Monthly', 'Standard'),
(1022, 22, 124, '2026-04-20', 1299.00, 'UPI', 'Occasionally', 'Express'),
(1023, 23, 109, '2026-04-25', 1299.00, 'UPI', 'Monthly', 'Prime'),
(1024, 24, 114, '2026-05-01', 399.00, 'Card', 'Weekly', 'Prime'),
(1025, 25, 110, '2026-05-05', 3499.00, 'Card', 'Monthly', 'Express'),
(1026, 1, 103, '2026-05-10', 1499.00, 'UPI', 'Monthly', 'Prime'),
(1027, 2, 107, '2026-05-15', 1999.00, 'Card', 'Monthly', 'Standard'),
(1028, 3, 115, '2026-05-20', 350.00, 'UPI', 'Occasionally', 'Standard'),
(1029, 4, 126, '2026-05-25', 799.00, 'UPI', 'Weekly', 'Prime'),
(1030, 5, 102, '2026-06-01', 1999.00, 'Card', 'Monthly', 'Express'),

(1031, 6, 117, '2026-06-05', 349.00, 'UPI', 'Monthly', 'Prime'),
(1032, 7, 122, '2026-06-10', 499.00, 'Cash', 'Occasionally', 'Standard'),
(1033, 8, 110, '2026-06-15', 3499.00, 'Card', 'Monthly', 'Prime'),
(1034, 9, 128, '2026-06-20', 699.00, 'UPI', 'Weekly', 'Prime'),
(1035, 10, 118, '2026-06-25', 599.00, 'UPI', 'Monthly', 'Standard'),
(1036, 11, 111, '2026-07-01', 550.00, 'Card', 'Occasionally', 'Standard'),
(1037, 12, 129, '2026-07-05', 499.00, 'UPI', 'Monthly', 'Prime'),
(1038, 13, 101, '2026-07-10', 2499.00, 'Card', 'Monthly', 'Express'),
(1039, 14, 106, '2026-07-15', 999.00, 'UPI', 'Weekly', 'Prime'),
(1040, 15, 127, '2026-07-20', 2499.00, 'Card', 'Occasionally', 'Standard'),

(1041, 16, 121, '2026-07-25', 699.00, 'UPI', 'Monthly', 'Prime'),
(1042, 17, 108, '2026-08-01', 1799.00, 'Card', 'Monthly', 'Express'),
(1043, 18, 116, '2026-08-03', 499.00, 'UPI', 'Weekly', 'Prime'),
(1044, 19, 130, '2026-08-05', 299.00, 'Cash', 'Occasionally', 'Standard'),
(1045, 20, 120, '2026-08-07', 699.00, 'UPI', 'Monthly', 'Prime'),
(1046, 21, 103, '2026-08-08', 1499.00, 'Card', 'Monthly', 'Standard'),
(1047, 22, 124, '2026-08-09', 1299.00, 'UPI', 'Occasionally', 'Express'),
(1048, 23, 126, '2026-08-10', 799.00, 'UPI', 'Monthly', 'Prime'),
(1049, 24, 112, '2026-08-11', 399.00, 'Card', 'Weekly', 'Prime'),
(1050, 25, 110, '2026-08-12', 3499.00, 'Card', 'Monthly', 'Express'),

(1051, 1, 102, '2026-02-15', 1999.00, 'UPI', 'Monthly', 'Prime'),
(1052, 2, 116, '2026-03-18', 499.00, 'UPI', 'Monthly', 'Standard'),
(1053, 3, 121, '2026-04-22', 699.00, 'Card', 'Occasionally', 'Prime'),
(1054, 4, 101, '2026-05-12', 2499.00, 'UPI', 'Weekly', 'Express'),
(1055, 5, 123, '2026-06-18', 899.00, 'Card', 'Monthly', 'Prime'),
(1056, 6, 107, '2026-07-08', 1999.00, 'UPI', 'Monthly', 'Standard'),
(1057, 7, 129, '2026-07-18', 499.00, 'UPI', 'Occasionally', 'Prime'),
(1058, 8, 118, '2026-08-02', 599.00, 'Card', 'Monthly', 'Prime'),
(1059, 9, 105, '2026-08-04', 1299.00, 'UPI', 'Weekly', 'Express'),
(1060, 10, 110, '2026-08-06', 3499.00, 'Card', 'Monthly', 'Prime'); 

INSERT INTO REVIEW
(review_id, purchase_id, product_rating, review_comment)
VALUES
(1, 1001, 5, 'Excellent sound quality and comfortable to use'),
(2, 1002, 4, 'Good quality and comfortable'),
(3, 1003, 5, 'Very useful book'),
(4, 1004, 4, 'Good features for the price'),
(5, 1005, 5, 'Excellent sports shoes'),
(6, 1006, 4, 'Works well for daily use'),
(7, 1007, 4, 'Good sound and battery'),
(8, 1008, 5, 'Great fitting jeans'),
(9, 1009, 4, 'Good quality bottle'),
(10, 1010, 5, 'Very good face wash'),

(11, 1011, 4, 'Useful charger'),
(12, 1012, 5, 'Very informative book'),
(13, 1013, 4, 'Bright and useful lamp'),
(14, 1014, 4, 'Good lip balm'),
(15, 1015, 5, 'Excellent cricket bat'),
(16, 1016, 5, 'Good sunscreen'),
(17, 1017, 5, 'Amazing headphones'),
(18, 1018, 4, 'Comfortable hoodie'),
(19, 1019, 4, 'Interesting book'),
(20, 1020, 4, 'Good hair serum'),

(21, 1021, 5, 'Smooth and reliable mouse'),
(22, 1022, 4, 'Good bedsheet quality'),
(23, 1023, 4, 'Nice casual shirt'),
(24, 1024, 5, 'Very helpful book'),
(25, 1025, 5, 'Excellent sports shoes'),
(26, 1026, 4, 'Good speaker'),
(27, 1027, 4, 'Comfortable jeans'),
(28, 1028, 5, 'Great book'),
(29, 1029, 5, 'Very useful yoga mat'),
(30, 1030, 4, 'Good smart watch'),

(31, 1031, 4, 'Nice moisturizer'),
(32, 1032, 4, 'Good mug'),
(33, 1033, 5, 'Excellent shoes'),
(34, 1034, 4, 'Good football'),
(35, 1035, 5, 'Very good sunscreen'),
(36, 1036, 5, 'Excellent book'),
(37, 1037, 4, 'Good protein bars'),
(38, 1038, 5, 'Excellent headphones'),
(39, 1039, 4, 'Comfortable T-shirt'),
(40, 1040, 5, 'Great cricket bat'),

(41, 1041, 4, 'Good quality bottle'),
(42, 1042, 5, 'Very comfortable hoodie'),
(43, 1043, 4, 'Gentle face wash'),
(44, 1044, 4, 'Good green tea'),
(45, 1045, 5, 'Excellent hair serum'),
(46, 1046, 4, 'Good speaker'),
(47, 1047, 4, 'Good bedsheet'),
(48, 1048, 5, 'Great yoga mat'),
(49, 1049, 5, 'Very useful book'),
(50, 1050, 5, 'Excellent sports shoes'),

(51, 1051, 4, 'Good smart watch'),
(52, 1052, 4, 'Works well'),
(53, 1053, 5, 'Good quality bottle'),
(54, 1054, 5, 'Excellent headphones'),
(55, 1055, 4, 'Bright study lamp'),
(56, 1056, 5, 'Great jeans'),
(57, 1057, 4, 'Good protein bars'),
(58, 1058, 5, 'Excellent sunscreen'),
(59, 1059, 4, 'Good wireless mouse'),
(60, 1060, 5, 'Excellent sports shoes'); 

SELECT COUNT(*) AS TotalStudents FROM STUDENT;

SELECT COUNT(*) AS TotalProducts FROM PRODUCT;

SELECT COUNT(*) AS TotalPurchases FROM PURCHASE;

SELECT COUNT(*) AS TotalReviews FROM REVIEW; */

/*Question 1 — Which product category is purchased the most by students? */
SELECT
    pc.category_name,
    COUNT(pu.purchase_id) AS total_purchases
FROM PURCHASE pu
JOIN PRODUCT p
    ON pu.product_id = p.product_id
JOIN PRODUCT_CATEGORY pc
    ON p.category_id = pc.category_id
GROUP BY pc.category_name
ORDER BY total_purchases DESC;

/*Question 2 — Which age group spends the most on average?*/
SELECT
    CASE
        WHEN s.age BETWEEN 18 AND 19 THEN '18-19'
        WHEN s.age BETWEEN 20 AND 21 THEN '20-21'
        WHEN s.age BETWEEN 22 AND 23 THEN '22-23'
    END AS age_group,
    COUNT(pu.purchase_id) AS total_purchases,
    SUM(pu.purchase_amount) AS total_spending,
    AVG(pu.purchase_amount) AS average_spending
FROM STUDENT s
JOIN PURCHASE pu
    ON s.student_id = pu.student_id
GROUP BY
    CASE
        WHEN s.age BETWEEN 18 AND 19 THEN '18-19'
        WHEN s.age BETWEEN 20 AND 21 THEN '20-21'
        WHEN s.age BETWEEN 22 AND 23 THEN '22-23'
    END
ORDER BY average_spending DESC;

/*Question 3 — Which brands are purchased most frequently?*/
SELECT
    p.brand,
    COUNT(pu.purchase_id) AS total_purchases
FROM PURCHASE pu
JOIN PRODUCT p
    ON pu.product_id = p.product_id
GROUP BY p.brand
ORDER BY total_purchases DESC;

/*Question 4 — Which payment method do students use the most?*/
SELECT
    payment_method,
    COUNT(purchase_id) AS total_purchases,
    SUM(purchase_amount) AS total_spending
FROM PURCHASE
GROUP BY payment_method
ORDER BY total_purchases DESC;

/*Question 5 — Which month has the highest number of purchases?*/
SELECT
    MONTH(purchase_date) AS purchase_month,
    COUNT(purchase_id) AS total_purchases,
    SUM(purchase_amount) AS total_spending
FROM PURCHASE
GROUP BY MONTH(purchase_date)
ORDER BY total_purchases DESC;

/*Question 6 — What is the average product rating?*/
SELECT
    COUNT(review_id) AS total_reviews,
    AVG(product_rating) AS average_rating,
    MIN(product_rating) AS lowest_rating,
    MAX(product_rating) AS highest_rating
FROM REVIEW;

/*Question 7 — Do frequent shoppers spend more money?*/
SELECT
    frequency_of_purchase,
    COUNT(purchase_id) AS total_purchases,
    SUM(purchase_amount) AS total_spending,
    AVG(purchase_amount) AS average_spending
FROM PURCHASE
GROUP BY frequency_of_purchase
ORDER BY average_spending DESC;

/*Question 8 — Which delivery preference is most popular?*/
SELECT
    delivery_preference,
    COUNT(purchase_id) AS total_purchases,
    SUM(purchase_amount) AS total_spending
FROM PURCHASE
GROUP BY delivery_preference
ORDER BY total_purchases DESC;

/*Question 9 — Which products are purchased the most?*/
SELECT
    p.product_name,
    p.brand,
    pc.category_name,
    COUNT(pu.purchase_id) AS total_purchases
FROM PURCHASE pu
JOIN PRODUCT p
    ON pu.product_id = p.product_id
JOIN PRODUCT_CATEGORY pc
    ON p.category_id = pc.category_id
GROUP BY
    p.product_name,
    p.brand,
    pc.category_name
ORDER BY total_purchases DESC;

/*Question 10 — Which age group has the highest total spending?*/
SELECT
    CASE
        WHEN s.age BETWEEN 18 AND 19 THEN '18-19'
        WHEN s.age BETWEEN 20 AND 21 THEN '20-21'
        WHEN s.age BETWEEN 22 AND 23 THEN '22-23'
    END AS age_group,
    COUNT(pu.purchase_id) AS total_purchases,
    SUM(pu.purchase_amount) AS total_spending
FROM STUDENT s
JOIN PURCHASE pu
    ON s.student_id = pu.student_id
GROUP BY
    CASE
        WHEN s.age BETWEEN 18 AND 19 THEN '18-19'
        WHEN s.age BETWEEN 20 AND 21 THEN '20-21'
        WHEN s.age BETWEEN 22 AND 23 THEN '22-23'
    END
ORDER BY total_spending DESC;

/*Question 11 — How many students prefer Prime vs Non-Prime delivery?*/
SELECT
    CASE
        WHEN delivery_preference = 'Prime' THEN 'Prime'
        ELSE 'Non-Prime'
    END AS delivery_type,
    COUNT(purchase_id) AS total_purchases,
    SUM(purchase_amount) AS total_spending
FROM PURCHASE
GROUP BY
    CASE
        WHEN delivery_preference = 'Prime' THEN 'Prime'
        ELSE 'Non-Prime'
    END
ORDER BY total_purchases DESC;

/*Question 12 — Is there a relationship between purchase frequency and product ratings?*/
SELECT
    pu.frequency_of_purchase,
    COUNT(r.review_id) AS total_reviews,
    AVG(r.product_rating) AS average_rating
FROM PURCHASE pu
JOIN REVIEW r
    ON pu.purchase_id = r.purchase_id
GROUP BY pu.frequency_of_purchase
ORDER BY average_rating DESC;

/*Question 13 — Which product category generates the highest total sales?*/
SELECT
    pc.category_name,
    COUNT(pu.purchase_id) AS total_purchases,
    SUM(pu.purchase_amount) AS total_sales,
    AVG(pu.purchase_amount) AS average_purchase_value
FROM PURCHASE pu
JOIN PRODUCT p
    ON pu.product_id = p.product_id
JOIN PRODUCT_CATEGORY pc
    ON p.category_id = pc.category_id
GROUP BY pc.category_name
ORDER BY total_sales DESC;

/*Question 14 — Which students are the highest-value customers?*/
SELECT
    s.student_id,
    s.student_name,
    s.age,
    COUNT(pu.purchase_id) AS total_purchases,
    SUM(pu.purchase_amount) AS total_spending,
    AVG(pu.purchase_amount) AS average_purchase_value
FROM STUDENT s
JOIN PURCHASE pu
    ON s.student_id = pu.student_id
GROUP BY
    s.student_id,
    s.student_name,
    s.age
ORDER BY total_spending DESC;

/*Question 15 — What is the average spending for each product category?*/
SELECT
    pc.category_name,
    COUNT(pu.purchase_id) AS total_purchases,
    SUM(pu.purchase_amount) AS total_sales,
    AVG(pu.purchase_amount) AS average_spending
FROM PURCHASE pu
JOIN PRODUCT p
    ON pu.product_id = p.product_id
JOIN PRODUCT_CATEGORY pc
    ON p.category_id = pc.category_id
GROUP BY pc.category_name
ORDER BY average_spending DESC;

/*Question 16 — Which products have the highest average ratings?*/
SELECT
    p.product_name,
    p.brand,
    COUNT(r.review_id) AS total_reviews,
    AVG(r.product_rating) AS average_rating
FROM REVIEW r
JOIN PURCHASE pu
    ON r.purchase_id = pu.purchase_id
JOIN PRODUCT p
    ON pu.product_id = p.product_id
GROUP BY
    p.product_name,
    p.brand
HAVING COUNT(r.review_id) >= 2
ORDER BY average_rating DESC;

/*Question 17 — Which payment method has the highest average transaction value?*/
SELECT
    payment_method,
    COUNT(purchase_id) AS total_transactions,
    SUM(purchase_amount) AS total_spending,
    AVG(purchase_amount) AS average_transaction_value
FROM PURCHASE
GROUP BY payment_method
ORDER BY average_transaction_value DESC;

/*Question 18 — Which month generated the highest total sales?*/
SELECT
    DATENAME(MONTH, purchase_date) AS purchase_month,
    COUNT(purchase_id) AS total_purchases,
    SUM(purchase_amount) AS total_sales,
    AVG(purchase_amount) AS average_purchase_value
FROM PURCHASE
GROUP BY DATENAME(MONTH, purchase_date), MONTH(purchase_date)
ORDER BY total_sales DESC;

/*Question 19 — Which age group makes the most purchases?*/
SELECT
    CASE
        WHEN s.age BETWEEN 18 AND 19 THEN '18-19'
        WHEN s.age BETWEEN 20 AND 21 THEN '20-21'
        WHEN s.age BETWEEN 22 AND 23 THEN '22-23'
    END AS age_group,
    COUNT(pu.purchase_id) AS total_purchases,
    SUM(pu.purchase_amount) AS total_spending,
    AVG(pu.purchase_amount) AS average_purchase_value
FROM STUDENT s
JOIN PURCHASE pu
    ON s.student_id = pu.student_id
GROUP BY
    CASE
        WHEN s.age BETWEEN 18 AND 19 THEN '18-19'
        WHEN s.age BETWEEN 20 AND 21 THEN '20-21'
        WHEN s.age BETWEEN 22 AND 23 THEN '22-23'
    END
ORDER BY total_purchases DESC;

/*Question 20 — Which product categories have the highest customer satisfaction?*/
SELECT
    pc.category_name,
    COUNT(r.review_id) AS total_reviews,
    AVG(r.product_rating) AS average_rating,
    MIN(r.product_rating) AS lowest_rating,
    MAX(r.product_rating) AS highest_rating
FROM REVIEW r
JOIN PURCHASE pu
    ON r.purchase_id = pu.purchase_id
JOIN PRODUCT p
    ON pu.product_id = p.product_id
JOIN PRODUCT_CATEGORY pc
    ON p.category_id = pc.category_id
GROUP BY pc.category_name
ORDER BY average_rating DESC;

/*Question 21 — Which students are the most frequent shoppers?*/
SELECT
    s.student_id,
    s.student_name,
    s.age,
    COUNT(pu.purchase_id) AS total_purchases,
    SUM(pu.purchase_amount) AS total_spending
FROM STUDENT s
JOIN PURCHASE pu
    ON s.student_id = pu.student_id
GROUP BY
    s.student_id,
    s.student_name,
    s.age
ORDER BY total_purchases DESC;
