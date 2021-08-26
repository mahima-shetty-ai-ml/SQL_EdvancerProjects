

Select (SELECT REPLACE('delhi', 'd', 'D')) from Profiles where City In('delhi');

CREATE DATABASE Tenant3
use Tenant3


SELECT P.city, SUM(T.rent) AS RENT from TenancyHistory AS T, Profiles AS P
GROUP BY P.city

SELECT SUM(rent) AS RENT from TenancyHistory AS T	

Pre_Final
SELECT
    Profiles.city as CITY,
    SUM (TenancyHistory.rent) TotalRentByCity
FROM
    Profiles
INNER JOIN TenancyHistory ON Profiles.profile_id = TenancyHistory.profile_id

GROUP BY
    Profiles.city


SELECT Sum(Rent) AS TOTALCOST FROM TenancyHistory 
Pre_Final





Final
SELECT
	isnull
    (Profiles.city,'Grand Total') as CITY,
    SUM (TenancyHistory.rent) TotalRentByCity
FROM
    Profiles
INNER JOIN TenancyHistory ON Profiles.profile_id = TenancyHistory.profile_id

GROUP BY
    Profiles.city
WITH ROLLUP
Final