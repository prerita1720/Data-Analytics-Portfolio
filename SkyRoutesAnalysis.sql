CREATE DATABASE AIRLINE;

USE AIRLINE;

SELECT*FROM AIRROUTE;

SELECT RouteCode, Origin, Destination, COUNT(*) AS NumFlights
FROM airroute
GROUP BY RouteCode, Origin, Destination
ORDER BY NumFlights DESC
LIMIT 10;


SELECT RouteCode,
       COUNT(*) AS NumFlights,
       ROUND(AVG(Revenue), 2) AS AvgRevenue,
       ROUND(AVG(OperationalCost), 2) AS AvgCost,
       ROUND(AVG(Revenue - OperationalCost), 2) AS AvgProfit
FROM airroute
GROUP BY RouteCode
ORDER BY AvgProfit DESC;

SELECT RouteCode,
       COUNT(*) AS NumFlights,
       ROUND(AVG(Revenue), 2) AS AvgRevenue,
       ROUND(AVG(OperationalCost), 2) AS AvgCost,
       ROUND(AVG(Revenue - OperationalCost), 2) AS AvgProfit
FROM airrouteData
GROUP BY RouteCode
HAVING AvgProfit < 0
ORDER BY AvgProfit ASC;

SELECT RouteCode,
       SUM(SeatsSold) AS TotalSeatsSold,
       SUM(SeatsAvailable) AS TotalSeatsAvailable,
       ROUND(100.0 * SUM(SeatsSold) / SUM(SeatsAvailable), 2) AS OccupancyPct
FROM airrouteData
GROUP BY RouteCode
ORDER BY OccupancyPct DESC;

SELECT RouteCode,
       DATE_FORMAT(FlightDate, '%Y-%m') AS FlightMonth,
       ROUND(SUM(Revenue - OperationalCost), 2) AS TotalProfit,
       COUNT(*) AS NumFlights
FROM airrouteData
GROUP BY RouteCode, DATE_FORMAT(FlightDate, '%Y-%m')
ORDER BY RouteCode, FlightMonth;

SELECT
  CASE
    WHEN Origin IN ('BOM','DEL','BLR','MAA','CCU','HYD','PNQ','AMD','GOI','COK','JAI','LKO','IXC','PAT','NAG')
     AND Destination IN ('BOM','DEL','BLR','MAA','CCU','HYD','PNQ','AMD','GOI','COK','JAI','LKO','IXC','PAT','NAG')
    THEN 'Domestic'
    ELSE 'International'
  END AS RouteType,
  COUNT(*) AS NumFlights,
  ROUND(AVG(Revenue), 2) AS AvgRevenue,
  ROUND(AVG(OperationalCost), 2) AS AvgCost,
  ROUND(AVG(Revenue - OperationalCost), 2) AS AvgProfit,
  ROUND(SUM(Revenue - OperationalCost), 2) AS TotalProfit,
  ROUND(100.0 * SUM(SeatsSold) / SUM(SeatsAvailable), 2) AS OccupancyPct
FROM airlinerouteData
GROUP BY RouteType;

SELECT RouteCode,
       ROUND(AVG(Revenue), 2) AS AvgRevenue,
       ROUND(AVG(FlightDurationMins), 2) AS AvgDurationMins,
       ROUND(AVG(Revenue / FlightDurationMins), 2) AS AvgRevenuePerMinute,
       RANK() OVER (ORDER BY AVG(Revenue / FlightDurationMins) DESC) AS RevPerMinRank
FROM airRouteData
GROUP BY RouteCode
ORDER BY RevPerMinRank;

