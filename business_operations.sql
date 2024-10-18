/* Creates the Database for the business */
-- Create DATABASE my_F1_theme_business ;

/* Deletes the Database */
-- DROP DATABASE my_f1_theme_business ;

-- Creates the Customer table
CREATE TABLE Customer 
( 	customer_id INT PRIMARY KEY AUTO_INCREMENT,
	Full_Name VARCHAR(35) NOT NULL,
	Email VARCHAR(25) NOT NULL,
	Phone VARCHAR(25) NOT NULL
);

-- Creates the Venue Table
CREATE TABLE Venue f
( 	venue_id INT PRIMARY KEY AUTO_INCREMENT,
	Venue_Name VARCHAR(45) NOT NULL,
	Location VARCHAR(40) NOT NULL,
	Phone INT NOT NULL
);

-- Creates the Employee table
CREATE TABLE Employee 
( 	employee_id INT PRIMARY KEY AUTO_INCREMENT,
	employee_name VARCHAR(50) NOT NULL,
	employee_position VARCHAR(25) NOT NULL,
	salary INT NOT NULL
);

-- Creates the Event table
CREATE TABLE  Event
( 	event_id INT PRIMARY KEY AUTO_INCREMENT,
	venue_id INT NOT NULL,
	employee_id INT NOT NULL,
	event_name VARCHAR(25) NOT NULL,
    event_date DATETIME,
    theme VARCHAR(20) NOT NULL,
    
    CONSTRAINT fk1_venue_id FOREIGN KEY (venue_id)
    REFERENCES my_f1_theme_business.Venue (venue_id),
    
    CONSTRAINT fk2_employee_id FOREIGN KEY (employee_id)
    REFERENCES my_f1_theme_business.Employee (employee_id)
);

-- Creates the Booking Table
 -- Drop TABLE Booking ;
 CREATE TABLE Booking
( 	booking_id INT PRIMARY KEY AUTO_INCREMENT,
	booking_date DATETIME NOT NULL,
	total_amount DECIMAL(6,2) NOT NULL,
	down_payment DECIMAL(6,2) NOT NULL,
    downp_paid BOOLEAN NOT NULL,
    full_amount_paid BOOLEAN 
);

-- Creates the Payment Table
-- DROP TABLE Payment;
 CREATE TABLE Payment
( 	payment_id INT PRIMARY KEY AUTO_INCREMENT,
	payment_date DATETIME NOT NULL,
	amount_paid DECIMAL(10,2) NOT NULL,
	total_amount DECIMAL(10,2) NOT NULL,
    full_amount_paid BOOLEAN NOT NULL
); 

--  Creates the Table for Order Details
CREATE TABLE  Order_Details
( 	orderdetail_id INT PRIMARY KEY AUTO_INCREMENT,
	customer_id INT NOT NULL,
	payment_id INT NOT NULL,
	booking_id INT NOT NULL,
	venue_id INT NOT NULL,
    event_id INT NOT NULL,
    
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id)
    REFERENCES my_f1_theme_business.customer (customer_id)
    ON UPDATE CASCADE,
    
    
    CONSTRAINT fk_payment_id FOREIGN KEY (payment_id)
    REFERENCES my_f1_theme_business.payment (payment_id)
    ON UPDATE CASCADE,
    
    CONSTRAINT fk_booking_id FOREIGN KEY (booking_id)
    REFERENCES my_f1_theme_business.booking (booking_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,				
    /* In the event of accidental or canceled bookings, [ON DELETE RESTRICT] has been enabled 
    just in case the cancelation/modification of the booking was a mistake. Rest of the Customer Details can be manually deleted once cancelation is confirmed */
    
    CONSTRAINT fk_venue_id FOREIGN KEY (venue_id)
    REFERENCES my_f1_theme_business.venue (venue_id)
    ON UPDATE CASCADE,
    
    CONSTRAINT fk_event_id FOREIGN KEY (event_id)
    REFERENCES my_f1_theme_business.event (event_id)
    ON UPDATE CASCADE
    
    -- [ON UPDATE CASCADE] has been scripted to use the Order Details table 
	-- as a Main interface table so that updates are only necessary once across all tables.
);
