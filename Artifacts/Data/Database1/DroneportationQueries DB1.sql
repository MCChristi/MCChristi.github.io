SELECT PassID,
       FirstName,
       LastName,
       SeatPrice,
       ROUND(AVG(SeatPrice), 2) AS AVG
  FROM passenger AS p
       INNER JOIN
       manifestPassenger AS mp USING (
           PassID
       )
 WHERE PassID = 12;

SELECT p.FirstName,
       p.LastName,
       mp.FlightID,
       mp.SeatPrice,
       (
           SELECT ROUND(AVG(SeatPrice), 2) AS AVG,
                  (
                      SELECT (mp.SeatPrice - ROUND(AVG(SeatPrice), 2) ) 
                        FROM manifestPassenger
                  )
                  AS Difference
             FROM passenger AS p
                  INNER JOIN
                  manifestPassenger AS mp USING (
                      PassID
                  )
       )
  FROM passenger AS p
       INNER JOIN
       manifestPassenger AS mp USING (
           PassID
       )
 WHERE PassID = 12
 GROUP BY FlightID;

SELECT p.FirstName,
       p.LastName,
       mp.FlightID,
       mp.SeatPrice,
       (
           SELECT ROUND(AVG(SeatPrice), 2) AS AVG
             FROM passenger AS p
                  INNER JOIN
                  manifestPassenger AS mp USING (
                      PassID
                  )
            WHERE PassID = 12
       )
       AS AvgSeatPrice,
       (
           SELECT SeatPrice
             FROM manifestPassenger
            WHERE PassID = 12 AND 
                  FlightId = mp.FlightId
       )
-      (
           SELECT ROUND(AVG(SeatPrice), 2) AS AVG
             FROM passenger AS p
                  INNER JOIN
                  manifestPassenger AS mp USING (
                      PassID
                  )
            WHERE PassID = 12
       )
       AS Difference
  FROM passenger AS p
       INNER JOIN
       manifestPassenger AS mp USING (
           PassID
       )
 WHERE PassID = 12
 GROUP BY FlightID;-- Query 2

SELECT *
  FROM flightReservation
 WHERE strftime('%Y', PickUpTime) = '2022' AND 
       DroneID = 1
UNION
SELECT *
  FROM flightReservation
 WHERE ActDropOffTime >= '2022-10-01 00:00:00' AND 
       ActDropOffTime < '2023-01-01 00:00:00' AND 
       DroneID = 10
 ORDER BY DroneID,
          PickUpTime;-- Query 3

SELECT d.DroneId,
       d.ModelID,
       (
           SELECT ROUND(AVG(CostPerMile), 2) 
             FROM flightReservation
            WHERE DroneId = d.DroneID
       )
       AS AvgCostPerMile
  FROM drone AS d
       INNER JOIN
       flightReservation AS fr USING (
           DroneID
       )
       INNER JOIN
       flightStatus AS fs USING (
           StatusID
       )
 WHERE StatusID = 5 AND 
       d.ModelID IN (
           SELECT ModelID
             FROM model
            WHERE Brand = 'Yuneec'
       )
 GROUP BY d.DroneID
 ORDER BY AvgCostPerMile DESC;-- Query 4

SELECT fr.FlightID,
       fr.PickUpTime,
       fr.CostPerMile
  FROM PassGroup AS pg
       INNER JOIN
       passGroupMember AS pGM USING (
           GroupID
       )
       INNER JOIN
       passenger AS p USING (
           PassID
       )
       INNER JOIN
       manifestPassenger AS mp USING (
           PassID
       )
       INNER JOIN
       flightReservation AS fr USING (
           FlightID
       )
 WHERE PickUpTime >= '2023-02-01 00:00:00' AND 
       PickUpTime < '2023-03-01 00:00:00' AND 
       pg.GroupTypeID IN (
           SELECT GroupTypeID
             FROM PassGroupType
            WHERE Description = "Family"
       )
 GROUP BY FlightID
 ORDER BY FlightID;-- Query 5
-- Query 6
SELECT ft.Description AS FlightType,
       COUNT(fr.FlightID) AS NumFlights
  FROM flightReservation AS fr
       INNER JOIN
       flightType AS ft USING (
           TypeID
       )
 WHERE PickUpTime >= '2023-04-20 00:00:00' AND 
       PickUpTime < '2023-04-25 00:00:00'
 GROUP BY ft.Description;-- Query 7
