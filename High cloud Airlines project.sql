

use `high cloud airlines`;

desc maindata_final;
-- 1) Date fields derived from Year, Month, Day
WITH base AS (
  SELECT
    `Year`, `Month`, `Day`,
    STR_TO_DATE(CONCAT(`Year`, '-', `Month`, '-', `Day`), '%Y-%m-%d') AS flight_date
  FROM maindata_final
)
SELECT
  flight_date AS Flight_Date,
  YEAR(flight_date) AS Year,
  MONTH(flight_date) AS Month_No,
  MONTHNAME(flight_date) AS Month_Full_Name,
  CONCAT('Q', QUARTER(flight_date)) AS Quarter,
  DATE_FORMAT(flight_date, '%Y-%b') AS YearMonth,
  DAYOFWEEK(flight_date) AS Weekday_No,
  DAYNAME(flight_date) AS Weekday_Name,
  (MONTH(flight_date) + 8) MOD 12 + 1 AS Financial_Month,
  CEIL((((MONTH(flight_date) + 8) MOD 12) + 1) / 3) AS Financial_Quarter
FROM base
LIMIT 15;

-- 2) Load Factor % by Year
WITH base AS (
  SELECT *, STR_TO_DATE(CONCAT(`Year`, '-', `Month`, '-', `Day`), '%Y-%m-%d') AS flight_date
  FROM maindata_final
)
SELECT YEAR(flight_date) AS Year,
       SUM(`# Available Seats`) AS Seats,
       SUM(`# Transported Passengers`) AS Passengers,
       ROUND(SUM(`# Transported Passengers`) / SUM(`# Available Seats`) * 100, 2) AS Load_Factor_Pct
FROM base
GROUP BY 1
ORDER BY 1;

-- 2) Load Factor % by Quarter
WITH base AS (
  SELECT *, STR_TO_DATE(CONCAT(`Year`, '-', `Month`, '-', `Day`), '%Y-%m-%d') AS flight_date
  FROM maindata_final
)
SELECT CONCAT('Q', QUARTER(flight_date)) AS Quarter,
       SUM(`# Available Seats`) AS Seats,
       SUM(`# Transported Passengers`) AS Passengers,
       ROUND(SUM(`# Transported Passengers`) / SUM(`# Available Seats`) * 100, 2) AS Load_Factor_Pct
FROM base
GROUP BY 1
ORDER BY 1;

-- 2) Load Factor % by Month
WITH base AS (
  SELECT *, STR_TO_DATE(CONCAT(`Year`, '-', `Month`, '-', `Day`), '%Y-%m-%d') AS flight_date
  FROM maindata_final
)
SELECT MONTH(flight_date) AS Month_No,
       MONTHNAME(flight_date) AS Month_Name,
       SUM(`# Available Seats`) AS Seats,
       SUM(`# Transported Passengers`) AS Passengers,
       ROUND(SUM(`# Transported Passengers`) / SUM(`# Available Seats`) * 100, 2) AS Load_Factor_Pct
FROM base
GROUP BY 1, 2
ORDER BY 1;

-- 3) Load Factor % by Carrier
SELECT `Carrier Name`,
       SUM(`# Departures Performed`) AS Flights,
       SUM(`# Available Seats`) AS Seats,
       SUM(`# Transported Passengers`) AS Passengers,
       ROUND(SUM(`# Transported Passengers`) / SUM(`# Available Seats`) * 100, 2) AS Load_Factor_Pct
FROM maindata_final
GROUP BY `Carrier Name`
ORDER BY Load_Factor_Pct DESC;

-- 4) Top 10 Carriers by Passengers
SELECT `Carrier Name`,
       SUM(`# Transported Passengers`) AS Total_Passengers,
       SUM(`# Departures Performed`) AS Total_Flights,
       ROUND(SUM(`# Transported Passengers`) / SUM(`# Available Seats`) * 100, 2) AS Load_Factor_Pct
FROM maindata_final
GROUP BY `Carrier Name`
ORDER BY Total_Passengers DESC
LIMIT 10;

-- 5) Top Routes by Number of Flights
SELECT `From - To City` AS Route,
       SUM(`# Departures Performed`) AS Total_Flights,
       SUM(`# Transported Passengers`) AS Passengers
FROM maindata_final
GROUP BY `From - To City`
ORDER BY Total_Flights DESC
LIMIT 10;

-- 6) Load Factor : Weekdays vs Weekend (Dayofweek 1 = Sun, 7 = Sat)
WITH base AS (
  SELECT *, STR_TO_DATE(CONCAT(`Year`, '-', `Month`, '-', `Day`), '%Y-%m-%d') AS flight_date
  FROM maindata_final
)
SELECT CASE WHEN DAYOFWEEK(flight_date) IN (1, 7) THEN 'Weekend' ELSE 'Weekday' END AS Day_Type,
       SUM(`# Available Seats`) AS Seats,
       SUM(`# Transported Passengers`) AS Passengers,
       ROUND(SUM(`# Transported Passengers`) / SUM(`# Available Seats`) * 100, 2) AS Load_Factor_Pct
FROM base
GROUP BY 1;



-- 8) Search flights by Source / Destination 
SELECT `Carrier Name`,
       `From - To City` AS Route,
       `Origin Country` AS Source_Country,
       `Origin State` AS Source_State,
       `Origin City` AS Source_City,
       `Destination Country` AS Dest_Country,
       `Destination State` AS Dest_State,
       `Destination City` AS Dest_City,
       `# Departures Performed` AS Flights,
       `# Transported Passengers` AS Passengers,
       `# Available Seats` AS Seats,
       `Year`, `Month`, `Day`
FROM maindata_final
WHERE `Origin Country` = 'United States'
  AND `Origin State` = 'California'
  AND `Origin City` = 'Los Angeles, CA'
  AND `Destination Country` = 'United States'
  AND `Destination State` = 'New York'
  AND `Destination City` = 'New York, NY';

-- Data
SELECT COUNT(*) AS Total_Rows,
       COUNT(DISTINCT `Carrier Name`) AS Total_Carriers,
       SUM(`# Transported Passengers`) AS Total_Passengers
FROM maindata_final;