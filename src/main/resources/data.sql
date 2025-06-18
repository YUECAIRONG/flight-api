


INSERT INTO USER (user_id, email, password, first_name, last_name, country, phone)
VALUES
(1000000001, 'user1@example.com', 'password1', 'John', 'Doe', 'USA', '1234567890'),
(1000000002, 'user2@example.com', 'password2', 'Jane', 'Smith', 'UK', '0987654321');


INSERT INTO PASSENGER (passenger_id, booking_id, first_name, last_name, email)
VALUES
(1, 1, 'John', 'Doe', 'john.doe@example.com'),
(2, 1, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 2, 'Alice', 'Johnson', 'alice.johnson@example.com');


INSERT INTO AIRPORT (airport_id, airport_code, airport_name, city)
VALUES
(1, 'LAX', 'Los Angeles International Airport', 'Los Angeles'),
(2, 'JFK', 'John F. Kennedy International Airport', 'New York'),
(3, 'LHR', 'London Heathrow Airport', 'London'),
(4, 'DX', 'DaXing Airport', 'BeiJing'),
(5, 'PD', 'PuDong Airport', 'ShangHai'),
(6, 'HQ', 'HongQiao Airport', 'ShangHai');


INSERT INTO FLIGHT (flight_id, flight_number, departure_airport_id, destination_airport_id, departure_time, destination_time, economy_price,business_price)
VALUES
(10001, '101', 'LAX', 'JFK', '2023-10-01 06:00:00', '2023-10-01 08:00:00', 500.00, 1210.00),
(10002, '102', 'JFK', 'LHR', '2023-10-02 10:00:00', '2023-10-02 13:00:00', 600.00, 1488.00),
(10003, 'XD12', 'DX', 'PD', '2024-11-22 12:00:00', '2024-11-22 14:00:00', 880.00, 1500.00),
(10004, 'FD13', 'LHR', 'PD', '2025-04-04 10:00:00', '2025-04-04 23:00:00', 4600.00, 10000.00);




INSERT INTO BOOKING (booking_id, user_id, flight_id, reference, status, total_price,contact_phone, booking_time)
VALUES
(1, 1000000001, 10001, 'REF123', 'Confirmed', 1000.00,'1234567890', '2023-09-15 14:00:00'),
(2, 1000000002, 10002, 'REF456', 'Pending', 1200.00,'18809091212', '2023-09-16 10:00:00');
