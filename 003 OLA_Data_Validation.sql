SELECT * FROM bookings;

# 1.Retrive all the successful bookings:
CREATE VIEW Successful_Booking AS SELECT * FROM bookings WHERE booking_status = 'Success';

# 2.Find the averge ride distance for each vehicle type:
CREATE VIEW ride_distance_for_each_vehicle AS SELECT Vehicle_Type, AVG(Ride_Distance) AS Avg_distance FROM bookings GROUP BY Vehicle_Type ;

# 3.GET the total number of canceled rides by customers
CREATE VIEW canceled_rides_by_customers AS SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Canceled by Customer';

# 4.List the top 5 customers who booked the highest number of rides :-
CREATE VIEW top_5customers AS SELECT Customer_ID, COUNT(Booking_ID) AS Total_Rides FROM bookings GROUP BY Customer_ID ORDER BY Total_Rides DESC LIMIT 5;

# 5.Get the number of rides canceled by drivers due to personal and car-related issues :-
CREATE VIEW Rides_canceled_by_drivers_PC_Issues AS SELECT COUNT(*) FROM bookings WHERE Booking_status = 'Canceled by Driver';

# 6.Find the maximum and minimum drivers ratings for Prime Sedan Bookings:
CREATE VIEW Max_Min_Driver_Rating AS SELECT MAX(Driver_Ratings) AS MAX_Rating, MIN(Driver_Ratings) AS MIN_Rating FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

# 7.Retrive all rides where payment was made using UPI :-
CREATE VIEW UPI_Payment AS SELECT * FROM bookings WHERE Payment_Method = 'UPI';

# 8.Find the average customer rating per vehicle type:
CREATE VIEW Avg_Cust_Rating AS SELECT Vehicle_Type, ROUND(AVG(Customer_rating),2) AS Customer_rating FROM bookings GROUP BY Vehicle_Type ORDER BY Customer_rating DESC;

# 9.Calculate the total booking value of rides completed successfully:
CREATE VIEW total_successful_ride_value AS SELECT SUM(Booking_Value) AS total_successful_ride_value FROM bookings WHERE Booking_Status = 'Success';

# 10.List all incomplete rides along with the reason:
CREATE VIEW Incomplete_Rides_Reason AS SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides = 'Yes';

SELECT distinct Vehicle_Type FROM bookings;

# 11.Successful Booking Rate:
SELECT (COUNT(CASE WHEN Booking_Status = 'Success' THEN 1 END) * 100.0 / COUNT(*)) AS Success_Rate_Percentage FROM bookings;

# 12. Top 5 Reasons for Customer Cancellations
SELECT 
    Reason_for_Cancellation_by_Customer, 
    COUNT(*) AS Cancellation_Count
FROM bookings
WHERE Booking_Status = 'Cancelled by Customer'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

# 13. Total Revenue by Vehicle Type
SELECT Vehicle_Type, SUM(Booking_Value) AS Total_Revenue
FROM bookings
WHERE Booking_Status = 'Success'
GROUP BY 1
ORDER BY 2 DESC;

# 14. Average Ride Distance by Category
SELECT Vehicle_Type, AVG(Ride_Distance) AS Avg_Distance FROM bookings GROUP BY 1;