 SELECT * FROM internship. `hotel reservation dataset`;
 select count(Booking_ID) FROM internship. `hotel reservation dataset`;
 select type_of_meal_plan, count(type_of_meal_plan) AS TOTAL_COUNT  FROM internship. `hotel reservation dataset`
 group by type_of_meal_plan 
 order by count(type_of_meal_plan) DESC;
 SELECT round((avg_price_per_room)) AS avg_price_with_children FROM internship. `hotel reservation dataset`
 where no_of_children >0;
 select year(str_to_date(arrival_date,'%d-%m-%y')) AS YEAR ,count(arrival_date) FROM internship. `hotel reservation dataset`
 group by 1;
 select room_type_reserved, count(room_type_reserved) AS total_booking  FROM internship. `hotel reservation dataset`
 group by room_type_reserved
 order by count(room_type_reserved) DESC
 LIMIT 3;
 select count(*) AS weekend_reservation  FROM internship. `hotel reservation dataset`
 where no_of_weekend_nights> 0;
 select MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
 FROM internship. `hotel reservation dataset`;
 select market_segment_type, count(market_segment_type) AS COUNT FROM internship. `hotel reservation dataset`
 GROUP BY market_segment_type
 order by COUNT DESC;
 SELECT count(*) AS confirmed_booking FROM internship. `hotel reservation dataset`
 where booking_status="Not_Canceled";
 SELECT SUM(no_of_adults) AS ADULTS, SUM(no_of_children) AS CHILDREN
 FROM internship. `hotel reservation dataset`;
 SELECT AVG(no_of_weekend_nights) FROM  internship. `hotel reservation dataset`
 WHERE no_of_children>0;
 SELECT MONTH(str_to_date(arrival_date, '%d-%m-%y'))AS MONTH,
 COUNT(*) AS RESERVATIONS
 FROM internship. `hotel reservation dataset`
 GROUP BY 1
 ORDER BY MONTH;
 SELECT AVG(no_of_weekend_nights) AS AVG_WEEKEND_NIGHT,
 AVG(no_of_week_nights) AS AVG_WEEK_NIGHT,
 room_type_reserved FROM internship. `hotel reservation dataset`
 group by room_type_reserved;
 select count(room_type_reserved) AS count,
 round(AVG(avg_price_per_room)) AS AVG_PRICE,
 room_type_reserved
 FROM internship. `hotel reservation dataset`
 GROUP BY room_type_reserved
 ORDER BY COUNT desc;
 SELECT market_segment_type,
 ROUND(AVG(avg_price_per_room)) AS AVG_PRICE
 FROM internship. `hotel reservation dataset`
 GROUP BY market_segment_type
 ORDER BY AVG_PRICE DESC;
 
 
 
 
 