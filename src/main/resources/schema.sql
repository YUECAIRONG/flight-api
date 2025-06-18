
CREATE TABLE user (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    country VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL
);


CREATE TABLE airport (
    airport_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    airport_code VARCHAR(10) NOT NULL,
    airport_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT null
);
ALTER TABLE airport 
ADD UNIQUE KEY uk_airport_code (airport_code);


CREATE TABLE flight (
    flight_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    flight_number VARCHAR(10) NOT NULL,
    departure_airport_id VARCHAR(10) NOT NULL,
    destination_airport_id VARCHAR(10) NOT NULL,
    departure_time DATETIME  NOT NULL,
    destination_time DATETIME  NOT NULL,
    economy_price DECIMAL(16,2) NOT NULL,
    business_price DECIMAL(16,2) NOT NULL,
    FOREIGN KEY (departure_airport_id) REFERENCES airport(airport_code),
    FOREIGN KEY (destination_airport_id) REFERENCES airport(airport_code)
);


CREATE TABLE booking(
    booking_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    flight_id BIGINT NOT NULL,
    reference VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL,
    total_price DECIMAL(15,2) NOT NULL,
    contact_phone VARCHAR(20) NOT NULL,
    booking_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id),
    INDEX idx_user_booking (user_id, booking_time),  
    INDEX idx_flight_status (flight_id, status)   
);



CREATE TABLE passenger (
    passenger_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    booking_id BIGINT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);