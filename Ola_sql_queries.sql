Create Database Ola;
Use Ola;
-- 1. Retrieve all successful bookings:
Create View Successful_Bookings As
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

-- 2. Find the average ride distance for each vehicle type:

CREATE VIEW average_ride_distance_for_each_vehicle_type As
SELECT Vehicle_type,AVG(Ride_Distance)
as avg_distance FROM Bookings
GROUP BY Vehicle_Type;

SELECT * FROM average_ride_distance_for_each_vehicle_type;

-- 3. Get the total number of cancelled rides by customers:
CREATE VIEW number_of_cancelled_rides_by_customers AS
SELECT COUNT(*) FROM Bookings 
WHERE Booking_Status='Canceled by Customer';

SELECT * FROM number_of_cancelled_rides_by_customers;

-- 4. List the top 10 customers who booked the highest number of rides:
CREATE VIEW customers_who_booked_the_highest_number_of_rides AS
SELECT Customer_ID,COUNT(Booking_ID) AS Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC LIMIT 10;

SELECT * FROM customers_who_booked_the_highest_number_of_rides;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW rides_cancelled_by_drivers AS
SELECT COUNT(*) FROM Bookings 
WHERE Canceled_Rides_By_Driver = 'Personal & Car related Issue';

SELECT * FROM rides_cancelled_by_drivers;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
CREATE VIEW max_min_rating_of_prime_sedan AS
SELECT MAX(Driver_Ratings) AS max_rating,
MIN(Driver_Ratings) AS min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM max_min_rating_of_prime_sedan;

-- 7. Retrieve all rides where payment was made using UPI:
CREATE VIEW Payment_by_UPI AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

SELECT * FROM Payment_by_UPI;

-- 8. Find the average customer rating per vehicle type:
CREATE VIEW average_customer_rating_per_vehicle_type AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM average_customer_rating_per_vehicle_type;

-- 9. Calculate the total booking value of rides completed successfully:
CREATE VIEW total_booking_value_of_successful_rides AS
SELECT Vehicle_Type, SUM(Booking_Value) AS total_succesful_value
FROM bookings
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type;

SELECT * FROM total_booking_value_of_successful_rides;

-- 10. List all incomplete rides along with the reason:

CREATE VIEW incomplete_rides_resons AS
SELECT Booking_ID,Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

SELECT * FROM incomplete_rides_resons;


#1. Retrieve all successful bookings:
Select * From Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Select * from average_ride_distance_for_each_vehicle_type;

#3. Get the total number of cancelled rides by customers:
Select * from number_of_cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Select * from customers_who_booked_the_highest_number_of_rides;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from rides_cancelled_by_drivers;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from max_min_rating_of_prime_sedan;

#7. Retrieve all rides where payment was made using UPI:
Select * from Payment_by_UPI;

#8. Find the average customer rating per vehicle type:
Select * from average_customer_rating_per_vehicle_type;

#9. Calculate the total booking value of rides completed successfully:
Select * from total_booking_value_of_successful_rides;

#10. List all incomplete rides along with the reason:
Select * from incomplete_rides_resons;




