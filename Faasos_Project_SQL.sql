USE FAASOS_REALISTIC;

-- Drop and recreate driver table with more realistic data
IF OBJECT_ID('driver', 'U') IS NOT NULL DROP TABLE driver;
CREATE TABLE driver(
    driver_id INT,
    reg_date DATE,
    driver_name VARCHAR(50),
    phone_number VARCHAR(15),
    vehicle_type VARCHAR(20),
    rating DECIMAL(3,2),
    status VARCHAR(20)
); 

INSERT INTO driver(driver_id, reg_date, driver_name, phone_number, vehicle_type, rating, status) 
VALUES 
(1, '2021-01-01', 'Rajesh Kumar', '+91-9876543210', 'Motorcycle', 4.5, 'Active'),
(2, '2021-01-03', 'Amit Singh', '+91-9876543211', 'Scooter', 3.8, 'Active'),
(3, '2021-01-08', 'Priya Sharma', '+91-9876543212', 'Motorcycle', 4.8, 'Active'),
(4, '2021-01-15', 'Mohammed Khan', '+91-9876543213', 'Bicycle', 3.1, 'Active'),
(5, '2021-02-01', 'Sunita Devi', '+91-9876543214', 'Scooter', 4.6, 'Active'),
(6, '2021-02-10', 'Ravi Patel', '+91-9876543215', 'Motorcycle', 2.9, 'Inactive'),
(7, '2021-02-20', 'Anjali Gupta', '+91-9876543216', 'Scooter', 4.7, 'Active'),
(8, '2021-03-05', 'Deepak Yadav', '+91-9876543217', 'Motorcycle', 3.4, 'Active'),
(9, '2021-03-12', 'Meera Joshi', '+91-9876543218', 'Bicycle', 4.2, 'Active'),
(10, '2021-03-25', 'Vikram Soni', '+91-9876543219', 'Motorcycle', 4.9, 'Active'),
(11, '2021-04-02', 'Kavita Nair', '+91-9876543220', 'Scooter', 3.6, 'Active'),
(12, '2021-04-18', 'Arjun Reddy', '+91-9876543221', 'Motorcycle', 4.5, 'Active'),
(13, '2021-05-01', 'Pooja Agarwal', '+91-9876543222', 'Scooter', 3.9, 'Active'),
(14, '2021-05-15', 'Suresh Chandra', '+91-9876543223', 'Bicycle', 3.3, 'Active'),
(15, '2021-06-01', 'Nisha Verma', '+91-9876543224', 'Motorcycle', 4.8, 'Active'),
(16, '2021-06-15', 'Rahul Sharma', '+91-9876543225', 'Scooter', 3.7, 'Active'),
(17, '2021-07-01', 'Sita Ram', '+91-9876543226', 'Motorcycle', 4.1, 'Active'),
(18, '2021-07-15', 'Kiran Desai', '+91-9876543227', 'Bicycle', 3.2, 'Active'),
(19, '2021-08-01', 'Manish Tiwari', '+91-9876543228', 'Motorcycle', 4.3, 'Active'),
(20, '2021-08-15', 'Shreya Pandey', '+91-9876543229', 'Scooter', 3.5, 'Active'),
(21, '2021-09-01', 'Rohit Malhotra', '+91-9876543230', 'Motorcycle', 2.8, 'Active'),
(22, '2021-09-15', 'Divya Kapoor', '+91-9876543231', 'Scooter', 4.4, 'Active'),
(23, '2021-10-01', 'Ashok Bansal', '+91-9876543232', 'Bicycle', 2.5, 'Active'),
(24, '2021-10-15', 'Rekha Sinha', '+91-9876543233', 'Motorcycle', 4.0, 'Active');

-- Enhanced ingredients table
IF OBJECT_ID('ingredients', 'U') IS NOT NULL DROP TABLE ingredients;
CREATE TABLE ingredients(
    ingredients_id INT,
    ingredients_name VARCHAR(60),
    category VARCHAR(30),
    price DECIMAL(5,2),
    availability_status VARCHAR(20)
); 

INSERT INTO ingredients(ingredients_id, ingredients_name, category, price, availability_status) 
VALUES 
(1, 'BBQ Chicken', 'Protein', 45.00, 'Available'),
(2, 'Chilli Sauce', 'Sauce', 5.00, 'Available'),
(3, 'Chicken', 'Protein', 40.00, 'Available'),
(4, 'Cheese', 'Dairy', 15.00, 'Available'),
(5, 'Kebab', 'Protein', 50.00, 'Available'),
(6, 'Mushrooms', 'Vegetable', 20.00, 'Available'),
(7, 'Onions', 'Vegetable', 8.00, 'Available'),
(8, 'Egg', 'Protein', 12.00, 'Available'),
(9, 'Peppers', 'Vegetable', 15.00, 'Available'),
(10, 'Schezwan Sauce', 'Sauce', 8.00, 'Available'),
(11, 'Tomatoes', 'Vegetable', 10.00, 'Available'),
(12, 'Tomato Sauce', 'Sauce', 6.00, 'Available'),
(13, 'Paneer', 'Dairy', 35.00, 'Available'),
(14, 'Spinach', 'Vegetable', 12.00, 'Available'),
(15, 'Corn', 'Vegetable', 18.00, 'Available'),
(16, 'Olives', 'Vegetable', 25.00, 'Limited'),
(17, 'Jalapenos', 'Vegetable', 22.00, 'Available'),
(18, 'Mayo', 'Sauce', 10.00, 'Available'),
(19, 'Lettuce', 'Vegetable', 15.00, 'Available'),
(20, 'Cucumber', 'Vegetable', 8.00, 'Available'),
(21, 'Mutton', 'Protein', 80.00, 'Available'),
(22, 'Fish', 'Protein', 60.00, 'Limited'),
(23, 'Prawns', 'Protein', 120.00, 'Limited'),
(24, 'Garlic Sauce', 'Sauce', 8.00, 'Available'),
(25, 'Hot Sauce', 'Sauce', 6.00, 'Available');

-- Enhanced rolls table with pricing
IF OBJECT_ID('rolls', 'U') IS NOT NULL DROP TABLE rolls;
CREATE TABLE rolls(
    roll_id INT,
    roll_name VARCHAR(30),
    base_price DECIMAL(6,2),
    category VARCHAR(20),
    preparation_time INT
); 

INSERT INTO rolls(roll_id, roll_name, base_price, category, preparation_time) 
VALUES 
(1, 'Non Veg Roll', 120.00, 'Non-Vegetarian', 15),
(2, 'Veg Roll', 80.00, 'Vegetarian', 12),
(3, 'Paneer Roll', 100.00, 'Vegetarian', 14),
(4, 'Mutton Roll', 180.00, 'Non-Vegetarian', 20),
(5, 'Fish Roll', 150.00, 'Non-Vegetarian', 18),
(6, 'Egg Roll', 90.00, 'Vegetarian', 10),
(7, 'Chicken Tikka Roll', 140.00, 'Non-Vegetarian', 16),
(8, 'Veg Deluxe Roll', 110.00, 'Vegetarian', 15);

-- Keep rolls_recipes as is
IF OBJECT_ID('rolls_recipes', 'U') IS NOT NULL DROP TABLE rolls_recipes;
CREATE TABLE rolls_recipes(roll_id INT, ingredients VARCHAR(50)); 
INSERT INTO rolls_recipes(roll_id, ingredients) 
VALUES 
(1, '1,2,3,4,5,6,8,10'),
(2, '4,6,7,9,11,12'),
(3, '4,6,7,9,11,12,13'),
(4, '2,4,5,6,7,21,24'),
(5, '4,6,7,9,11,12,22'),
(6, '4,6,7,8,9,11,12'),
(7, '1,2,3,4,6,10,17'),
(8, '4,6,7,9,11,12,13,14,15,16');

-- Enhanced customer table
IF OBJECT_ID('customers', 'U') IS NOT NULL DROP TABLE customers;
CREATE TABLE customers(
    customer_id INT,
    customer_name VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200),
    registration_date DATE,
    loyalty_points INT,
    preferred_payment VARCHAR(20)
);

INSERT INTO customers(customer_id, customer_name, phone_number, email, address, registration_date, loyalty_points, preferred_payment)
VALUES 
(1, 'Ankit Sharma', '+91-8765432109', 'ankit.sharma@email.com', '123 MG Road, Bangalore', '2020-12-15', 450, 'UPI'),
(2, 'Priyanka Singh', '+91-8765432108', 'priyanka.singh@email.com', '456 Park Street, Kolkata', '2020-12-20', 320, 'Card'),
(3, 'Rohit Gupta', '+91-8765432107', 'rohit.gupta@email.com', '789 CP, New Delhi', '2021-01-05', 180, 'Cash'),
(4, 'Sneha Patel', '+91-8765432106', 'sneha.patel@email.com', '321 Bandra West, Mumbai', '2021-01-10', 275, 'UPI'),
(5, 'Arjun Nair', '+91-8765432105', 'arjun.nair@email.com', '654 Marine Drive, Mumbai', '2021-01-12', 390, 'Card'),
(6, 'Kavya Reddy', '+91-8765432104', 'kavya.reddy@email.com', '987 Koramangala, Bangalore', '2021-01-15', 510, 'UPI'),
(7, 'Manish Kumar', '+91-8765432103', 'manish.kumar@email.com', '147 Connaught Place, Delhi', '2021-01-18', 125, 'Cash'),
(8, 'Neha Agarwal', '+91-8765432102', 'neha.agarwal@email.com', '258 Residency Road, Bangalore', '2021-01-20', 680, 'Card'),
(9, 'Vikas Joshi', '+91-8765432101', 'vikas.joshi@email.com', '369 Linking Road, Mumbai', '2021-01-25', 95, 'UPI'),
(10, 'Riya Chopra', '+91-8765432100', 'riya.chopra@email.com', '741 Salt Lake, Kolkata', '2021-02-01', 340, 'Card'),
(11, 'Siddharth Malhotra', '+91-8765432099', 'sid.malhotra@email.com', '852 Lajpat Nagar, Delhi', '2021-02-05', 220, 'UPI'),
(12, 'Divya Sinha', '+91-8765432098', 'divya.sinha@email.com', '963 Salt Lake, Kolkata', '2021-02-08', 455, 'Cash'),
(13, 'Karan Mehta', '+91-8765432097', 'karan.mehta@email.com', '159 Koramangala, Bangalore', '2021-02-12', 380, 'Card'),
(14, 'Pooja Bansal', '+91-8765432096', 'pooja.bansal@email.com', '753 Rajouri Garden, Delhi', '2021-02-15', 165, 'UPI'),
(15, 'Harsh Vardhan', '+91-8765432095', 'harsh.vardhan@email.com', '486 Andheri West, Mumbai', '2021-02-18', 290, 'Card'),
(16, 'Aditi Saxena', '+91-8765432094', 'aditi.saxena@email.com', '357 Indira Nagar, Bangalore', '2021-02-20', 525, 'UPI'),
(17, 'Nikhil Tiwari', '+91-8765432093', 'nikhil.tiwari@email.com', '642 Andheri West, Mumbai', '2021-02-25', 75, 'Cash'),
(18, 'Shweta Kulkarni', '+91-8765432092', 'shweta.kulkarni@email.com', '789 Park Street, Kolkata', '2021-03-01', 410, 'Card'),
(19, 'Gaurav Singh', '+91-8765432091', 'gaurav.singh@email.com', '159 Saket, Delhi', '2021-03-05', 195, 'UPI'),
(20, 'Preeti Jain', '+91-8765432090', 'preeti.jain@email.com', '357 Whitefield, Bangalore', '2021-03-10', 345, 'Card'),
(21, 'Rahul Mishra', '+91-8765432089', 'rahul.mishra@email.com', '258 Powai, Mumbai', '2021-03-15', 420, 'Card'),
(22, 'Sakshi Agarwal', '+91-8765432088', 'sakshi.agarwal@email.com', '741 Vasant Kunj, Delhi', '2021-03-20', 285, 'UPI'),
(23, 'Deepak Yadav', '+91-8765432087', 'deepak.yadav@email.com', '963 New Town, Kolkata', '2021-03-25', 150, 'Cash'),
(24, 'Nidhi Verma', '+91-8765432086', 'nidhi.verma@email.com', '159 Saket, New Delhi', '2021-04-01', 395, 'Card'),
(25, 'Raj Thakur', '+91-8765432085', 'raj.thakur@email.com', '357 Lajpat Nagar, Delhi', '2021-04-05', 260, 'UPI'),
(26, 'Anjali Shah', '+91-8765432084', 'anjali.shah@email.com', '486 Bandra East, Mumbai', '2021-04-10', 485, 'Card'),
(27, 'Suresh Pandey', '+91-8765432083', 'suresh.pandey@email.com', '753 Ballygunge, Kolkata', '2021-04-15', 110, 'Cash'),
(28, 'Megha Soni', '+91-8765432082', 'megha.soni@email.com', '852 HSR Layout, Bangalore', '2021-04-20', 365, 'UPI'),
(29, 'Anil Saxena', '+91-8765432081', 'anil.saxena@email.com', '642 Malviya Nagar, Delhi', '2021-04-25', 225, 'Card'),
(30, 'Tanvi Gupta', '+91-8765432080', 'tanvi.gupta@email.com', '789 Juhu, Mumbai', '2021-05-01', 440, 'UPI'),
(31, 'Vishal Sharma', '+91-8765432079', 'vishal.sharma@email.com', '147 Electronic City, Bangalore', '2021-05-05', 185, 'Cash'),
(32, 'Ritu Kapoor', '+91-8765432078', 'ritu.kapoor@email.com', '258 Connaught Place, Delhi', '2021-05-10', 315, 'Card'),
(33, 'Abhishek Jain', '+91-8765432077', 'abhishek.jain@email.com', '369 Whitefield, Bangalore', '2021-05-15', 470, 'UPI'),
(34, 'Shreya Dubey', '+91-8765432076', 'shreya.dubey@email.com', '741 Alipore, Kolkata', '2021-05-20', 195, 'Card'),
(35, 'Mohit Agarwal', '+91-8765432075', 'mohit.agarwal@email.com', '963 Dwarka, Delhi', '2021-05-25', 350, 'UPI'),
(36, 'Shilpa Rao', '+91-8765432074', 'shilpa.rao@email.com', '159 Goregaon West, Mumbai', '2021-06-01', 275, 'Cash'),
(37, 'Tarun Modi', '+91-8765432073', 'tarun.modi@email.com', '357 Jayanagar, Bangalore', '2021-06-05', 405, 'Card');
-- Comprehensive driver_order table with realistic cancellation data
IF OBJECT_ID('driver_order', 'U') IS NOT NULL DROP TABLE driver_order;
CREATE TABLE driver_order(
    order_id INT,
    driver_id INT,
    pickup_time DATETIME,
    distance VARCHAR(10),
    duration VARCHAR(15),
    cancellation VARCHAR(50),
    delivery_rating DECIMAL(3,2),
    delivery_fee DECIMAL(5,2)
);

-- Complete driver_order table matching all 100 customer orders
IF OBJECT_ID('driver_order', 'U') IS NOT NULL DROP TABLE driver_order;
CREATE TABLE driver_order(
    order_id INT,
    driver_id INT,
    pickup_time DATETIME,
    distance VARCHAR(10),
    duration VARCHAR(15),
    cancellation VARCHAR(100),
    delivery_rating DECIMAL(3,1),
    delivery_fee DECIMAL(5,2)
);

INSERT INTO driver_order(order_id, driver_id, pickup_time, distance, duration, cancellation, delivery_rating, delivery_fee) 
VALUES
-- Original 50 orders with your data
-- Realistic orders with repeat customers (customer_ids 1-25)
(1, 1, '2021-01-01 18:15:34', '3.2km', '18 minutes', '', 4.5, 25.00),
(2, 1, '2021-01-01 19:10:54', '2.8km', '15 minutes', '', 4.2, 20.00),
(3, 2, '2021-01-02 23:55:37', '5.1km', '28 minutes', '', 4.0, 35.00),
(4, 2, '2021-01-02 23:56:15', '5.1km', '28 minutes', '', 4.1, 35.00),
(5, 3, '2021-01-03 13:35:46', '4.7km', '22 minutes', '', 4.8, 30.00),
(6, 3, '2021-01-03 13:36:20', '4.7km', '22 minutes', '', 4.8, 30.00),
(7, 3, '2021-01-03 13:37:15', '4.7km', '22 minutes', '', 4.7, 30.00),
(8, 4, '2021-01-04 21:15:57', '2.1km', '12 minutes', '', 4.1, 15.00),
(9, 1, '2021-01-04 21:08:13', '3.2km', '18 minutes', '', 4.3, 25.00),
(10, 5, '2021-01-05 21:35:45', '6.8km', '35 minutes', 'Driver Cancellation', 4.3, 40.00),
(11, 2, '2021-01-06 00:05:33.000', '5.1km', '28 minutes', '', 4.2, 35.00),
(12, 6, '2021-01-06 11:35:59', '3.9km', '20 minutes', '', 4.6, 25.00),
(13, 4, '2021-01-06 18:45:49', '2.1km', '12 minutes', '', 4.4, 15.00),
(14, 4, '2021-01-06 18:46:30', '2.1km', '12 minutes', '', 4.5, 15.00),
(15, 7, '2021-01-07 12:55:15', '4.2km', '25 minutes', '', 4.2, 28.00),
(16, 8, '2021-01-07 14:50:30', '1.8km', '10 minutes', '', 4.9, 12.00),
(17, 1, '2021-01-08 16:25:45', '3.6km', '19 minutes', '', 4.4, 22.00), -- Customer 1 repeat
(18, 9, '2021-01-08 19:40:20', '5.4km', '32 minutes', 'Driver Cancellation', 4.1, 38.00),
(19, 3, '2021-01-09 21:55:35', '2.9km', '16 minutes', '', 4.5, 20.00), -- Customer 3 repeat
(20, 10, '2021-01-09 13:30:40', '7.2km', '42 minutes', 'Driver Cancellation', 3.8, 45.00),
(21, 6, '2021-01-10 20:15:55', '2.9km', '16 minutes', '', 4.5, 20.00), -- Customer 6 repeat
(22, 11, '2021-01-10 17:50:30', '4.1km', '26 minutes', '', 4.3, 30.00),
(23, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(24, 12, '2021-01-05 15:45:45.000', '4.8km', '28 minutes', '', 4.2, 32.00),
(25, 1, '2021-01-11 18:25:30', '3.7km', '21 minutes', '', 4.7, 26.00), -- Customer 1 repeat
(26, 2, '2021-01-12 19:50:15', '6.1km', '38 minutes', 'Customer Cancellation', 4.0, 42.00), -- Customer 2 repeat
(27, NULL, NULL, NULL, NULL, 'Restaurant Cancellation', NULL, NULL),
(28, 3, '2021-01-12 16:40:25', '2.7km', '15 minutes', '', 4.4, 18.00), -- Customer 3 repeat
(29, 4, '2021-01-13 14:25:50', '4.5km', '27 minutes', '', 4.1, 30.00), -- Customer 4 repeat
(30, 5, '2021-01-13 17:30:35', '3.1km', '17 minutes', '', 4.5, 22.00), -- Customer 5 repeat
(31, 13, '2021-01-14 19:55:20', '5.2km', '31 minutes', 'Restaurant Cancellation', 4.3, 36.00),
(32, 7, '2021-01-14 13:45:15', '2.3km', '13 minutes', '', 4.6, 16.00), -- Customer 7 repeat
(33, 8, '2021-01-15 16:30:40', '6.8km', '41 minutes', '', 3.9, 44.00), -- Customer 8 repeat
(34, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(35, 9, '2021-01-15 20:40:50', '3.8km', '23 minutes', '', 4.2, 28.00), -- Customer 9 repeat
(36, 10, '2021-01-16 15:25:35', '4.3km', '26 minutes', '', 4.4, 30.00), -- Customer 10 repeat
(37, NULL, NULL, NULL, NULL, 'Driver Cancellation', NULL, NULL),
(38, 11, '2021-01-16 19:35:15', '2.6km', '14 minutes', '', 4.7, 18.00), -- Customer 11 repeat
(39, 12, '2021-01-15 21:55:40.000', '5.7km', '34 minutes', '', 4.1, 40.00), -- Customer 12 repeat
(40, 14, '2021-01-20 14:15:25.000', '3.4km', '19 minutes', '', 4.5, 24.00),
(41, 6, '2021-01-18 16:40:50', '4.9km', '29 minutes', '', 4.3, 34.00), -- Customer 6 repeat
(42, 15, '2021-01-01 18:25:35.000', '2.9km', '16 minutes', '', 4.6, 20.00),
(43, NULL, NULL, NULL, NULL, 'Restaurant Cancellation', NULL, NULL),
(44, 1, '2021-01-19 13:35:15', '6.3km', '39 minutes', 'Customer Cancellation', 4.0, 42.00), -- Customer 1 repeat
(45, 2, '2021-01-19 16:55:30', '3.6km', '21 minutes', '', 4.4, 26.00), -- Customer 2 repeat
(46, 3, '2021-01-20 19:30:45', '4.2km', '25 minutes', '', 4.2, 28.00), -- Customer 3 repeat
(47, 4, '2021-01-20 14:45:20', '2.8km', '15 minutes', '', 4.7, 20.00), -- Customer 4 repeat
(48, 5, '2021-01-21 18:00:15', '5.5km', '33 minutes', '', 4.8, 38.00), -- Customer 5 repeat
(49, 16, '2021-01-02 12:25:30.000', '3.1km', '17 minutes', '', 4.5, 22.00),
(50, 7, '2021-01-22 19:40:45', '2.4km', '13 minutes', '', 4.6, 18.00), -- Customer 7 repeat
(51, 8, '2021-01-22 20:55:20', '4.8km', '29 minutes', '', 4.1, 32.00), -- Customer 8 repeat
(52, 9, '2021-01-23 18:30:35', '6.2km', '37 minutes', 'Customer Cancellation', 3.9, 44.00), -- Customer 9 repeat
(53, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(54, 10, '2021-01-23 13:50:25', '3.7km', '21 minutes', '', 4.3, 26.00), -- Customer 10 repeat
(55, 11, '2021-01-24 16:35:50', '2.1km', '11 minutes', '', 4.8, 15.00), -- Customer 11 repeat
(56, 12, '2021-01-18 19:55:15.000', '5.3km', '32 minutes', '', 4.2, 36.00), -- Customer 12 repeat
(57, NULL, NULL, NULL, NULL, 'Driver Cancellation', NULL, NULL),
(58, 13, '2021-01-25 20:20:45', '4.6km', '27 minutes', '', 4.4, 30.00), -- Customer 13 repeat
(59, 17, '2021-01-22 20:20:45.000', '3.2km', '18 minutes', '', 4.6, 24.00),
(60, 15, '2021-01-28 14:35:35.000', '2.9km', '16 minutes', '', 4.7, 20.00), -- Customer 15 repeat
(61, 1, '2021-01-26 19:45:50', '6.8km', '41 minutes', 'Customer Cancellation', 4.0, 45.00), -- Customer 1 repeat
(62, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(63, 2, '2021-01-27 21:50:40', '4.1km', '24 minutes', '', 4.3, 28.00), -- Customer 2 repeat
(64, 3, '2021-01-27 18:35:15', '3.5km', '19 minutes', '', 4.5, 25.00), -- Customer 3 repeat
(65, 4, '2021-01-28 14:00:30', '2.7km', '14 minutes', '', 4.8, 18.00), -- Customer 4 repeat
(66, 5, '2021-01-28 20:25:45', '5.1km', '31 minutes', 'Customer Cancellation', 4.1, 35.00), -- Customer 5 repeat
(67, NULL, NULL, NULL, NULL, 'Restaurant Cancellation', NULL, NULL),
(68, 6, '2021-01-29 19:55:35', '3.8km', '22 minutes', '', 4.4, 26.00), -- Customer 6 repeat
(69, 18, '2021-01-20 17:40:50.000', '4.4km', '26 minutes', '', 4.2, 30.00),
(70, 8, '2021-01-30 14:45:15', '6.0km', '36 minutes', '', 4.6, 40.00), -- Customer 8 repeat
(71, 9, '2021-01-30 21:20:30', '2.5km', '13 minutes', '', 4.7, 18.00), -- Customer 9 repeat
(72, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(73, 10, '2021-01-31 19:50:20', '3.9km', '23 minutes', '', 4.3, 28.00), -- Customer 10 repeat
(74, 11, '2021-01-31 15:35:35', '4.7km', '28 minutes', '', 4.1, 32.00), -- Customer 11 repeat
(75, 19, '2021-01-31 18:25:50', '2.2km', '12 minutes', '', 4.8, 16.00),
(76, 13, '2021-01-08 20:35:25.000', '7.1km', '43 minutes', '', 3.8, 48.00), -- Customer 13 repeat
(77, NULL, NULL, NULL, NULL, 'Driver Cancellation', NULL, NULL),
(78, 14, '2021-01-31 17:30:15', '3.6km', '20 minutes', '', 4.5, 25.00), -- Customer 14 repeat
(79, 15, '2021-01-15 19:45:30.000', '2.8km', '15 minutes', '', 4.6, 20.00), -- Customer 15 repeat
(80, 1, '2021-01-31 16:20:45', '5.4km', '33 minutes', 'Customer Cancellation', 4.2, 38.00), -- Customer 1 repeat
(81, 2, '2021-01-31 21:35:20', '3.1km', '17 minutes', '', 4.4, 22.00), -- Customer 2 repeat
(82, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(83, 3, '2021-01-31 18:25:50', '4.3km', '25 minutes', '', 4.3, 30.00), -- Customer 3 repeat
(84, 20, '2021-01-28 15:50:25.000', '2.6km', '14 minutes', '', 4.7, 18.00),
(85, 5, '2021-01-31 20:35:40', '5.8km', '35 minutes', 'Customer Cancellation', 4.0, 40.00), -- Customer 5 repeat
(86, NULL, NULL, NULL, NULL, 'Restaurant Cancellation', NULL, NULL),
(87, 6, '2021-01-31 19:25:30', '3.4km', '19 minutes', '', 4.5, 24.00), -- Customer 6 repeat
(88, 7, '2021-01-31 16:45:45', '4.1km', '24 minutes', '', 4.3, 28.00), -- Customer 7 repeat
(89, 21, '2021-01-10 21:45:20.000', '2.9km', '16 minutes', '', 4.6, 20.00),
(90, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(91, 9, '2021-01-31 15:20:50', '3.7km', '21 minutes', '', 4.4, 26.00), -- Customer 9 repeat
(92, 10, '2021-01-31 20:45:25', '5.2km', '31 minutes', 'Customer Cancellation', 4.1, 36.00), -- Customer 10 repeat
(93, 22, '2021-01-20 17:59:40.000', '2.3km', '12 minutes', '', 4.8, 16.00),
(94, NULL, NULL, NULL, NULL, 'Driver Cancellation', NULL, NULL),
(95, 12, '2021-01-25 19:45:30.000', '4.6km', '27 minutes', '', 4.2, 30.00), -- Customer 12 repeat
(96, 13, '2021-01-31 16:35:45', '3.8km', '22 minutes', '', 4.5, 26.00), -- Customer 13 repeat
(97, 23, '2021-01-01 21:35:20.000', '6.5km', '39 minutes', 'Customer Cancellation', 3.9, 44.00),
(98, NULL, NULL, NULL, NULL, 'Customer Cancellation', NULL, NULL),
(99, 24, '2021-01-20 17:35:50.000', '2.7km', '14 minutes', '', 4.7, 18.00),
(100, 1, '2021-01-31 20:20:25', '4.0km', '23 minutes', '', 4.4, 28.00); -- Customer 1 repeat

-- Enhanced customer_orders table with realistic data - ALL DATES IN JANUARY 2021
IF OBJECT_ID('customer_orders', 'U') IS NOT NULL DROP TABLE customer_orders;
CREATE TABLE customer_orders(
    order_id INT,
    customer_id INT,
    roll_id INT,
    not_include_items VARCHAR(20),
    extra_items_included VARCHAR(20),
    order_date DATETIME,
    order_value DECIMAL(7,2),
    payment_method VARCHAR(20),
    special_instructions VARCHAR(100)
);

INSERT INTO customer_orders(order_id, customer_id, roll_id, not_include_items, extra_items_included, order_date, order_value, payment_method, special_instructions)
VALUES 
-- Customer 1 (8 orders - most frequent)
(1, 1, 1, '', '', '2021-01-01 18:05:02', 120.00, 'UPI', 'Extra spicy'),
(9, 1, 2, NULL, '', '2021-01-04 21:03:13', 80.00, 'UPI', ''),
(17, 1, 2, '6', '13,15', '2021-01-08 16:15:45', 133.00, 'Card', 'No mushrooms, add paneer and corn'),
(25, 1, 1, '', '3,5', '2021-01-11 18:15:30', 210.00, 'Card', 'Extra chicken and kebab'),
(44, 1, 6, '', '8,18', '2021-01-19 13:25:15', 112.00, 'UPI', 'Add egg and mayo'),
(61, 1, 4, '', '21,24', '2021-01-26 19:35:50', 268.00, 'UPI', 'Extra mutton and garlic sauce'),
(80, 1, 5, NULL, '9,11', '2021-01-31 16:10:45', 181.00, 'Card', 'No fish, add peppers and tomatoes'),
(100, 1, 3, '13', '6,7', '2021-01-31 20:10:25', 135.00, 'UPI', 'No paneer, add mushrooms and onions'),

-- Customer 2 (5 orders - frequent)
(2, 2, 1, '', '', '2021-01-01 19:00:52', 120.00, 'UPI', ''),
(3, 2, 1, '', NULL, '2021-01-02 23:51:23', 120.00, 'Card', 'Less oil'),
(4, 2, 2, '', '13', '2021-01-02 23:51:23', 135.00, 'Card', 'Add extra paneer'),
(11, 2, 1, '', '', '2021-01-05 23:54:33', 120.00, 'Card', 'Medium spice'),
(26, 2, 4, '', '21,24', '2021-01-12 19:40:15', 268.00, 'UPI', 'Extra mutton and garlic sauce'),
(45, 2, 7, '1', '2,3', '2021-01-19 16:45:30', 149.00, 'Card', 'No BBQ chicken, add sauces and chicken'),
(63, 2, 5, '22', '9,18', '2021-01-27 21:40:40', 172.00, 'Card', 'No fish, add peppers and mayo'),
(81, 2, 2, '7,12', '3,1', '2021-01-31 21:35:20', 125.00, 'Cash', 'No onions or sauce, add chicken and BBQ'),

-- Customer 3 (6 orders - very loyal)
(5, 3, 1, '4', '', '2021-01-03 13:23:46', 105.00, 'Cash', 'No cheese please'),
(6, 3, 1, NULL, '', '2021-01-03 13:23:46', 105.00, 'Cash', 'No cheese please'),
(7, 3, 2, '4', '', '2021-01-03 13:23:46', 65.00, 'Cash', 'No cheese'),
(19, 3, 1, '2,10', NULL, '2021-01-09 21:55:35', 155.00, 'Card', 'No sauces, extra cheese and jalapenos'),
(28, 3, 2, '7', '11,12', '2021-01-12 16:30:25', 166.00, 'Card', 'No onions, add tomatoes and sauce'),
(46, 3, 2, '', '4,13', '2021-01-20 19:20:45', 130.00, 'UPI', 'Add cheese and paneer'),
(64, 3, 3, '13', '1,5', '2021-01-27 18:25:15', 155.00, 'Card', 'No paneer, add BBQ and kebab'),
(83, 3, 3, '13', '6,12', '2021-01-31 18:15:50', 142.00, 'Card', 'No paneer, add mushrooms and tomato sauce'),

-- Customer 4 (4 orders - regular)
(8, 4, 1, '', '1', '2021-01-04 21:00:29', 165.00, 'UPI', 'Extra BBQ chicken'),
(13, 4, 1, NULL, '', '2021-01-06 18:34:49', 120.00, 'UPI', ''),
(14, 4, 1, '2,6', '1,4', '2021-01-06 18:34:49', 155.00, 'UPI', 'No chilli sauce and mushrooms'),
(29, 4, 7, '17', '2,10', '2021-01-13 14:15:50', 154.00, 'UPI', 'No jalapenos, add sauces'),
(47, 4, 3, '7', '8,15', '2021-01-20 14:35:20', 127.00, 'Card', 'No onions, add egg and corn'),
(65, 4, 1, '2,10', NULL, '2021-01-28 13:50:30', 162.00, 'Card', 'No sauces, add chicken and jalapenos'),

-- Customer 5 (4 orders - regular)
(10, 5, 2, '', '1', '2021-01-05 21:20:29', 125.00, 'Card', 'Add BBQ chicken'),
(30, 5, 8, '15,16', '4,13', '2021-01-13 17:10:35', 135.00, 'Card', 'No corn or olives, add cheese and paneer'),
(48, 5, 1, '', '1,5,24', '2021-01-21 17:50:15', 235.00, 'Cash', 'Extra BBQ, kebab and garlic sauce'),
(66, 5, 7, NULL, '5,12', '2021-01-28 20:15:45', 158.00, 'UPI', 'Add kebab and tomato sauce'),
(85, 5, 5, '22', '11,18', '2021-01-31 20:25:40', 178.00, 'Cash', 'No fish, add tomatoes and mayo'),

-- Customer 6 (4 orders - regular)
(12, 6, 3, '', '', '2021-01-06 11:25:15', 100.00, 'UPI', 'Light on spices'),
(21, 6, 6, '8', '9,11', '2021-01-10 20:15:55', 115.00, 'UPI', 'No egg, add peppers and tomatoes'),
(41, 6, 2, '11', '14,19', '2021-01-18 16:30:50', 107.00, 'UPI', 'No tomatoes, add spinach and lettuce'),
(68, 6, 4, '21', '2,11', '2021-01-29 19:45:35', 124.00, 'Card', 'No mutton, add chilli sauce and tomatoes'),
(87, 6, 8, NULL, '14,16,19', '2021-01-31 19:15:30', 168.00, 'UPI', 'Add spinach, olives and lettuce'),

-- Customer 7 (3 orders)
(15, 7, 4, '21', '2', '2021-01-07 12:40:30', 105.00, 'Cash', 'No mutton, add chilli sauce'),
(32, 7, 1, '5,6', '1,4', '2021-01-14 13:35:15', 140.00, 'Cash', 'No kebab or mushrooms, extra BBQ and cheese'),
(50, 7, 1, '', '', '2021-01-22 19:30:45', 120.00, 'Card', 'Regular order'),
(88, 7, 1, '2,6', '1,4', '2021-01-31 16:35:45', 155.00, 'Card', 'No chilli or mushrooms, add BBQ and cheese'),

-- Customer 8 (3 orders)
(16, 8, 5, '', '18', '2021-01-07 14:30:20', 160.00, 'UPI', 'Add mayo'),
(33, 8, 3, '', '6,7', '2021-01-15 16:20:40', 135.00, 'Card', 'Add mushrooms and onions'),
(51, 8, 2, '2', '4,18', '2021-01-22 20:45:20', 142.00, 'UPI', 'No chilli sauce, add cheese and mayo'),
(70, 8, 1, '', '1,4,24', '2021-01-30 14:35:15', 225.00, 'Card', 'Extra BBQ, cheese and garlic sauce'),

-- Customer 9 (4 orders)
(18, 9, 7, '1', '24', '2021-01-08 19:35:20', 148.00, 'UPI', 'No BBQ chicken, add garlic sauce'),
(35, 9, 5, '', '11,18', '2021-01-15 20:30:50', 178.00, 'Card', 'Add tomatoes and mayo'),
(52, 9, 4, NULL, '21,22', '2021-01-23 18:20:35', 245.00, 'Cash', 'Extra mutton and fish'),
(71, 9, 2, '6,12', '7,15', '2021-01-30 21:10:30', 118.00, 'UPI', 'No mushrooms or sauce, add onions and corn'),
(91, 9, 3, '', '13,17', '2021-01-31 15:10:50', 145.00, 'Card', 'Add paneer and jalapenos'),

-- Customer 10 (4 orders)
(20, 10, 8, '14', '16,19', '2021-01-09 13:20:40', 135.00, 'Cash', 'No spinach, add olives and lettuce'),
(36, 10, 6, '8', '4,9', '2021-01-16 15:15:35', 109.00, 'UPI', 'No egg, add cheese and peppers'),
(54, 10, 1, '4,6', '1,8', '2021-01-23 13:40:25', 152.00, 'UPI', 'No cheese or mushrooms, add BBQ and egg'),
(73, 10, 6, '8,9', '4,13', '2021-01-31 19:40:20', 122.00, 'Card', 'No egg or peppers, add cheese and paneer'),
(92, 10, 7, '1', '3,24', '2021-01-31 20:35:25', 172.00, 'UPI', 'No BBQ chicken, add chicken and garlic sauce'),

-- Customer 11 (3 orders)
(22, 11, 7, '1,17', '3,10', '2021-01-10 17:40:30', 148.00, 'Cash', 'No BBQ or jalapenos, add chicken and sauce'),
(38, 11, 8, '14,15', '13,16', '2021-01-16 19:25:15', 133.00, 'Card', 'No spinach or corn, add paneer and olives'),
(55, 11, 6, '', '9,16', '2021-01-24 16:25:50', 118.00, 'Card', 'Add peppers and olives'),
(74, 11, 3, '', '6,7,19', '2021-01-24 16:25:50', 142.00, 'UPI', 'Add mushrooms, onions and lettuce'),

-- Customer 12 (3 orders)
(24, 12, 3, '13', '6,8', '2021-01-05 15:25:45', 112.00, 'UPI', 'No paneer, add mushrooms and egg'),
(39, 12, 1, '2', '5,8', '2021-01-15 21:40:40', 182.00, 'UPI', 'No chilli sauce, extra kebab and egg'),
(56, 12, 2, '12', '5,14', '2021-01-18 19:50:15', 128.00, 'UPI', 'No tomato sauce, add kebab and spinach'),
(95, 12, 2, '11,12', '8,20', '2021-01-25 19:40:30', 108.00, 'UPI', 'No tomatoes or sauce, add egg and cucumber'),

-- Customer 13 (3 orders)
(34, 13, 4, '21', '2,24', '2021-01-20 18:55:25', 114.00, 'UPI', 'No mutton, add sauces'),
(42, 13, 4, '', '21,24', '2021-01-01 18:15:35', 268.00, 'Cash', 'Extra mutton and garlic sauce'),
(58, 13, 1, NULL, '4,6,18', '2021-01-22 20:10:45', 198.00, 'Card', 'Extra cheese, mushrooms and mayo'),
(76, 13, 4, '', NULL, '2021-01-08 20:30:25', 315.00, 'Cash', 'Extra mutton, fish and garlic sauce'),
(96, 13, 8, '15', '4,14', '2021-01-28 16:25:45', 142.00, 'Card', 'No corn, add cheese and spinach'),

-- Customer 14 (2 orders)
(40, 14, 2, '12', '7,20', '2021-01-20 14:05:25', 103.00, 'Card', 'No tomato sauce, add onions and cucumber'),
(78, 14, 8, '14', '16,19,20', '2021-01-12 17:20:15', 158.00, 'Card', 'No spinach, add olives, lettuce and cucumber'),

-- Customer 15 (3 orders)
(43, 15, 5, '22', '9,11', '2021-01-05 20:40:20', 181.00, 'Card', 'No fish, add peppers and tomatoes'),
(60, 15, 3, '13', '1,5', '2021-01-28 14:20:35', 155.00, 'Card', 'No paneer, add BBQ and kebab'),
(72, 15, 5, '22', '11,18', '2021-01-28 16:55:45', 178.00, 'Cash', 'No fish, add tomatoes and mayo'),
(79, 15, 2, '', '1,18', '2021-01-15 19:35:30', 135.00, 'UPI', 'Add BBQ chicken and mayo'),

-- New customers with single orders (16-24)
(49, 16, 3, '9', '6,11', '2021-01-02 12:15:30', 145.00, 'UPI', 'No peppers, add mushrooms and tomatoes'),
(53, 17, 5, '17', '7,10', '2021-01-10 21:15:40', 168.00, 'Card', 'No jalapenos, add onions and sauce'),
(57, 18, 7, '1,3', '2,24', '2021-01-20 15:35:30', 165.00, 'Cash', 'No BBQ or chicken, add sauce and garlic'),
(59, 19, 8, '14,15', '11,19', '2021-01-25 17:45:20', 138.00, 'UPI', 'No spinach or corn, add tomatoes and lettuce'),
(62, 20, 2, '7,11', '4,20', '2021-01-03 16:15:25', 115.00, 'Cash', 'No onions or tomatoes, add cheese and cucumber'),
(67, 21, 3, '9,13', '6,8', '2021-01-15 15:30:20', 128.00, 'Cash', 'No peppers or paneer, add mushrooms and egg'),
(69, 22, 8, NULL, '14,16', '2021-01-20 17:20:50', 142.00, 'UPI', 'Add spinach and olives'),
(75, 23, 7, '1,17', '2,10', '2021-01-05 18:15:50', 148.00, 'Card', 'No BBQ or jalapenos, add sauces'),
(77, 24, 1, '4', NULL, '2021-01-10 13:45:40', 182.00, 'UPI', 'No cheese, add chicken and kebab'),

-- Cancelled orders (no customer_id needed in driver_order table, but we still need customer orders)
(23, 25, 2, '7,12', '20', '2021-01-01 12:10:20', 88.00, 'Card', 'No onions or tomato sauce, add cucumber'),
(27, 26, 5, '22', '11,12', '2021-01-15 21:05:40', 166.00, 'Cash', 'No fish, add tomatoes and sauce'),
(82, 27, 1, NULL, '1,5,8', '2021-01-22 14:50:35', 212.00, 'UPI', 'Extra BBQ, kebab and egg'),
(84, 28, 7, '3', '2,24', '2021-01-28 15:40:25', 165.00, 'UPI', 'No chicken, add chilli and garlic sauce'),
(85, 29, 4, '21', '11,18', '2021-01-01 20:25:40', 134.00, 'Cash', 'No mutton, add tomatoes and mayo'),
(86, 30, 2, '7,12', '4,15', '2021-01-03 17:50:15', 128.00, 'Card', 'No onions or sauce, add cheese and corn'),
(89, 31, 5, '22', '9,10', '2021-01-10 21:20:20', 172.00, 'UPI', 'No fish, add peppers and sauce'),
(90, 32, 6, '8,9', '7,18', '2021-01-12 18:45:35', 125.00, 'Cash', 'No egg or peppers, add onions and mayo'),
(93, 33, 4,NULL, '2,6', '2021-01-20 17:55:40', 115.00, 'Card', 'No mutton, add chilli sauce and mushrooms'),
(94, 34, 1, '', '4,5,18', '2021-01-22 14:20:15', 198.00, 'Cash', 'Extra cheese, kebab and mayo'),
(97, 35, 5, '', '22,24', '2021-01-01 21:15:20', 248.00, 'UPI', 'Extra fish and garlic sauce'),
(98, 36, 6, '8',NULL, '2021-01-03 18:30:35', 122.00, 'Cash', 'No egg, add peppers and tomatoes'),
(99, 37, 1, '4,10', '1,17', '2021-01-05 15:45:50', 168.00, 'Card', 'No cheese or sauce, add BBQ and jalapenos');
SELECT * FROM customer_orders;
SELECT * FROM customers;
SELECT * FROM driver;
SELECT * FROM driver_order;
SELECT * FROM ingredients;
SELECT * FROM rolls_recipes;

Timeframe: 
select min(order_date) ,max(order_date)from customer_orders;
 2021 January 1 to 2021 31st January

A. Roll Metrics
1. How many rolls were ordered?
select * from customer_orders;
select count(*) as 'Total orders' from customer_orders;
-- 99 rolls were orders till now ,total sales volume 

2. How many unique customers have ordered ?
select count(distinct customer_id) as distinct_orders from customer_orders;
-- INSIGHT:37 unique customers(should work on customer retention,customer retention= (99-37)/100=62.62%)
-- ACTION RECOMMENDED: Introduce loyalty programs or offers to increase repeat orders.

3. How many orders were successfully delivered by the drivers(not cancelled)?
select * from driver_order;
select count(*) from driver_order
where cancellation not in ('Driver Cancellation','Customer Cancellation','Restaurant Cancellation');
-- 71/100 orders were successfully delivered by the drivers, 71% ordered rolls got delivered. 

4. How many orders were successfully delivered by each driver(not cancelled)?
select driver_id, count(order_id) as 'Number of successful order delivered'from driver_order
where cancellation not in ('Driver Cancellation','Customer Cancellation','Restaurant Cancellation')
group by driver_id;
-- driver id 1 has most(6) successfully delivered orders
/*INSIGHT: 1. Providing feedback or training to those with higher cancellation rates.
           2. Consider analyzing cancellations by driver_id for accountability.*/

5. What number of rolls were successfully delivered?
SELECT COUNT(*) as rolls_delivered from customer_orders
where order_id IN ( select order_id from driver_order where  cancellation not in ('Driver Cancellation','Customer Cancellation','Restaurant Cancellation') );
-- 71 rolls_delivered,
-- 71 rolls delivered / 100 rolls ordered = 71% of all ordered rolls were successfully delivered.

-- WHY SUCH LOW PERCENTAGE OF SUCCESSFULL DELIVERIES 
/*Analysing the cause */

Which orders are getting cancelled
select * from driver_order;
select count(*) from driver_order where cancellation  IN (
        'Cancellation', 'Customer Cancellation', 'Restaurant Cancellation', 'Driver Cancellation' );
Analysing the cause of customer cancellations
select * from driver_order where cancellation ='Customer Cancellation';
/*INSIGHT 1:there appears to be a correlation between longer distances/delivery times 
and customer cancellations, but it's not the only factor.

INSIGHT 2 :Many cancellations have NULL values for all metrics, suggesting these might be very
 early cancellations (before driver assignment or details were logged).*/

 SELECT * FROM driver_order where cancellation  IN (
        'Cancellation', 'Customer Cancellation' );
/*INSIGHT 3:Delivery times for cancelled orders range from 30 to 41 minutes, which are relatively long.
 Longer wait times could frustrate customers, leading to cancellations.*/
  SELECT * from customer_orders;
  select c.customer_id,c.order_date,d.cancellation,c.payment_method from customer_orders c join driver_order d  on c.order_id=d.order_id
  where cancellation='Customer Cancellation';

   Details of the customers who cancelled orders
  with cu as (select c.customer_id,c.order_date,d.cancellation,c.payment_method from customer_orders c join driver_order d  on c.order_id=d.order_id
  where cancellation='Customer Cancellation') 
  select count(*) , cus.city from cu join customers cus on cu.customer_id=cus.customer_id
  group by cus.city;

  -- 1 customer from bangalore Ankit sharma , customer_id 1 has cancelled on 3 times .
  -- 5- blr , 4- Delhi , 3- Kolkata , 5 - Mumbai , cancellations per city 
-- First add the column if it doesn't exist
 with cu as (select c.customer_id,c.order_date,d.cancellation,c.payment_method from customer_orders c join driver_order d  on c.order_id=d.order_id) 
  select count(*) , cus.city from cu join customers cus on cu.customer_id=cus.customer_id
  group by cus.city;
  -- Top 3 cities in sales are (29)Bangalore , (16)Mumbai and (21)Kolkata

IF NOT EXISTS (
    SELECT * FROM sys.columns 
    WHERE object_id = OBJECT_ID('customers') AND name = 'city'
)
BEGIN
    ALTER TABLE customers ADD city NVARCHAR(100);
END

-- Then update the city column by extracting from address
UPDATE customers
SET city = LTRIM(RTRIM(
    SUBSTRING(
        address, 
        CHARINDEX(',', address) + 1, 
        LEN(address) - CHARINDEX(',', address)
    )
));

-- Now you can query using the city column
SELECT COUNT(*) as no_of_customers,city FROM customers GROUP BY city
order by no_of_customers desc ;
-- Total 37 customers

8. How many of each type of roll was ordered? 

select * from rolls
select sum(c.order_value) as total_cost,count(*) as no_of_rolls from customer_orders c join rolls r on r.roll_id=c.roll_id;
select c.roll_id,r.roll_name,sum(c.order_value) as total_cost,count(*) as no_of_rolls from customer_orders c join rolls r on r.roll_id=c.roll_id
group by c.roll_id,r.roll_name
order by roll_id;
-- best star roll is non veg roll(25), then veg roll(18), paneer roll (13),mutton roll(10),fish roll(10),egg roll(7),chicken tikka delux (9),veg deluxe roll(8)

9. For each customer ,how many delivered rolls had at least 1 change and how many no changes?
select * from customer_orders;
with temp_customer_orders (order_id, customer_id, roll_id,new_not_include_items, new_extra_items_included,order_date)
as (select order_id,customer_id,
        roll_id,
        case 
            when not_include_items IS NULL or not_include_items=' ' 
                then 'N' 
            else not_include_items  
        end as new_not_include_items,
        case 
            when extra_items_included is NULL or extra_items_included=' ' 
                then 'N' 
            else extra_items_included 
        end as new_extra_items_included,
        order_date
    from customer_orders
)select count(*) from temp_customer_orders t join driver_order dr on dr.order_id=t.order_id
where (t.new_not_include_items!='N' or t.new_extra_items_included!='N')
and dr.cancellation NOT IN ('Restaurant Cancellation','Customer Cancellation','Driver Cancellation')
;
-- INSIGHT: 63 out of 71 delivered orders have atleast 1 change in their roll
 with temp_customer_orders (order_id, customer_id, roll_id,new_not_include_items, new_extra_items_included,order_date)
as (select order_id,customer_id,
        roll_id,
        case 
            when not_include_items IS NULL or not_include_items=' ' 
                then 'N' 
            else not_include_items  
        end as new_not_include_items,
        case 
            when extra_items_included is NULL or extra_items_included=' ' 
                then 'N' 
            else extra_items_included 
        end as new_extra_items_included,
        order_date
    from customer_orders
)select count(*) from temp_customer_orders t join driver_order dr on dr.order_id=t.order_id
where (t.new_not_include_items='N' and t.new_extra_items_included='N')
and dr.cancellation NOT IN ('Restaurant Cancellation','Customer Cancellation','Driver Cancellation');
-- 8 out of 71  out of delivered orders had no change in them. 

10. How many rolls were delivered that had both exclusions and extras ?

 with temp_customer_orders (order_id, customer_id, roll_id,new_not_include_items, new_extra_items_included,order_date)
as (select order_id,customer_id,
        roll_id,
        case 
            when not_include_items IS NULL or not_include_items=' ' 
                then 'N' 
            else not_include_items  
        end as new_not_include_items,
        case 
            when extra_items_included is NULL or extra_items_included=' ' 
                then 'N' 
            else extra_items_included 
        end as new_extra_items_included,
        order_date
    from customer_orders
)select count(*) from temp_customer_orders t join driver_order dr on dr.order_id=t.order_id
where (t.new_not_include_items!='N' and t.new_extra_items_included!='N')
and dr.cancellation NOT IN ('Restaurant Cancellation','Customer Cancellation','Driver Cancellation');
-- 42 orders had both inclusions and extras 

B. Time Metrics

1. What was the total number of rolls ordered for each hour of the day ?
select * from customer_orders;
select c.order_date,c.order_id,c.customer_id ,DATEPART(hour,order_date) as hr,DATEPART(hour,order_date)+1 as hr1 
from customer_orders c;

select hour_bucket,count(hour_bucket) from
(select 
      c.*,
       concat(DATEPART(hour,order_date),'-',DATEPART(hour,order_date)+1) as hour_bucket
from customer_orders c) a
group by hour_bucket;
-- peak hours is 13-14 (1pm to 2pm), 16-22(4pm to 10pm)  
/*Operational Recommendations:
>Staffing: Increase drivers during 12-14 and 18-21
>Marketing: Target lunch specials (12-14) and late-night offers (21-23)
>Inventory: Prepare for protein-heavy orders (chicken, mutton) in evening*/

2.What was the number of orders for each day of the week?
select day_of_week,count(*) as number_of_orders from (select *,DATENAME(DW,order_date) as day_of_week 
from customer_orders) a 
group by day_of_week
order by number_of_orders desc;
-- Friday and Saturdays most rolls were ordered, Monday is the lowest volume day 
/* INSIGHTS 1: >Increase weekend staff by 50-75%
             >Weekend-specific menu promotions
             >Extended hours Friday-Sunday
   INSIGHTS 2: Monday Strategies: Lowest volume day could be good for:
              >Staff training/maintenance
              >Targeted Monday promotions*/
C. Driver & Customer Experience 

1. What was the average time in minutes it took for drivers to arrive at the faasos HQ to pickup 
the order?
select * from driver_order;
select * from customer_orders;
select avg(a.[time diff]) as 'Avg time driver takes to reach faasos HQ' from (select c.order_date,d.pickup_time,d.cancellation,c.order_id,
datediff(minute,c.order_date,d.pickup_time) as 'time diff'from customer_orders c
join driver_order d on d.order_id=c.order_id ) a
where (a.[time diff]>0 and a.[time diff]<200);
-- Average time drivers take to reach faasos hq is 10 minutes

2. What was the average time in minutes it took for each drivers to arrive at the faasos HQ to pickup 
the order?
select top 5 avg(a.[time diff]) as 'Avg time driver takes to reach faasos HQ',a.[driver_id] from (select c.order_date,d.pickup_time,d.cancellation,c.order_id,d.driver_id,
datediff(minute,c.order_date,d.pickup_time) as 'time diff'from customer_orders c
join driver_order d on d.order_id=c.order_id ) a
where (a.[time diff]>0 and a.[time diff]<200)
group by a.driver_id
order by [Avg time driver takes to reach faasos HQ]
;
-- driver id 22,13,2,1,9 are the top 5 fastest drivers

select avg(a.[time diff]) as 'Avg time driver takes to reach faasos HQ',a.[driver_id] from (select c.order_date,d.pickup_time,d.cancellation,c.order_id,d.driver_id,
datediff(minute,c.order_date,d.pickup_time) as 'time diff'from customer_orders c
join driver_order d on d.order_id=c.order_id ) a
where (a.[time diff]>0 and a.[time diff]<200)
group by a.driver_id
order by [Avg time driver takes to reach faasos HQ]
-- Drivers that need performance review driver id 23 ad 21

DETAILS OF THE AFORESAID DRIVERS :

SELECT * FROM driver
where driver_id in (23,21);
-- Rohit Malhotra and Ashok Bansal have less rating
/* Review:
-Route familiarity
-Traffic conditions
-Vehicle performance
-Pickup readiness at restaurants*/
SELECT * FROM driver
where driver_id in (22,13,2,1,9);
-- top 5 performers

3. What was the average distance travelled by driver for each customer
select * from driver_order
select * from customer_orders
-- Average distance travelled 
Select 
    driver_id,
    AVG(CAST(REPLACE(distance, 'km', '') AS float)) as avg_distance_km
from driver_order
group by driver_id;

-- Average distance for each customer 
select s.avg_distance,s.customer_id from (select a.customer_id,avg(a.[dist]) as avg_distance from (select c.customer_id,cast(replace(dr.distance,'km',' ') as float) as dist from driver_order dr 
join customer_orders c on c.order_id=dr.order_id) a 
group by a.customer_id) s 
where s.avg_distance>4.5;

/*INSIGHT 1:Customers with avg distance > 5 km (IDs: 5, 12, 29, 35) may lead to:
-Higher fuel costs
-Longer delivery times
-Lower driver productivity
INSIGHT 2:This help define operational boundaries and decide
if it's worth expanding or restricting zones.
INSIGHTS 3:We can consider distance-based delivery charges.
INSIGHT 4:Highest average distance at 6.5 km.*/

4. What is the successfull delivery percentage for each driver ?

select a.driver_id, count(a.cancellation)from
(select driver_id,cancellation 
from driver_order where cancellation in ('Driver Cancellation','Customer Cancellation','Restaurant Cancellation') 
) a
group by a.driver_id;

select driver_id,count(*) from driver_order
group by driver_id;

WITH DeliveryStats AS (
    SELECT 
        driver_id,
        COUNT(*) AS total_orders,
        SUM(CASE 
                WHEN cancellation NOT LIKE '%Cancellation%' OR cancellation IS NULL 
                THEN 1 
                ELSE 0 
            END) AS successful_orders
    FROM driver_order
    GROUP BY driver_id
)
SELECT 
    driver_id,
    total_orders,
    successful_orders,
    (successful_orders * 100.0 / total_orders) AS success_percentage
FROM DeliveryStats
ORDER BY success_percentage;
