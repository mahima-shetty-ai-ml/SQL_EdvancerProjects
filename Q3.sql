select * from Profiles
A


select * from Referral
B


select * from Houses
C


select * from [Employment Status]
D


select * from TenancyHistory
E




select (A.profile_id), A.first_name + ' ' + A.last_name AS 'Full_Name', A.phone, A.email_id, A.city, C.house_id, E.move_in_date, E.move_out_date, E.rent,
COUNT(B.referral_valid), D.latest_employer, D.occupational_category 
from TenancyHistory AS E, [Employment Status] AS D, Houses AS C, Referral AS B, Profiles AS A 
WHERE (A.city IN ('Bangalore','Pune') AND move_in_date>='20150101' AND move_out_date<='20160101' ) ORDER BY rent DESC


select 
from TenancyHistory AS E, [Employment Status] AS D, Houses AS C, Referral AS B, Profiles AS A 
WHERE (A.city IN ('Bangalore','Pune') AND move_in_date>='20150101' AND move_out_date<='20160101' ) ORDER BY rent DESC


SELECT A.profile_id,first_name
    FROM TenancyHistory AS E, [Employment Status] AS D, Houses AS C, Referral AS B, Profiles AS A
    WHERE (A.city IN ('Bangalore','Pune') AND E.move_in_date>='20150101' AND E.move_out_date<='20160101' )
	GROUP BY (profile_id)


SELECT profile_id,first_name + ' ' + last_name AS 'Full_Name' ,City, phone, email_id FROM Profiles
WHERE city in ('Bangalore', 'Pune')
UNION
SELECT move_in_date, move_out_date, rent FROM TenancyHistory AS E
WHERE move_in_date>='20150101' AND move_out_date<='20160101'
ORDER BY E.rent DESC;





SELECT * from TenancyHistory AS E ORDER BY rent DESC


select 
from TenancyHistory AS E, [Employment Status] AS D, Houses AS C, Referral AS B, Profiles AS A 
WHERE (A.city IN ('Bangalore','Pune') AND move_in_date>='20150101' AND move_out_date<='20160101' ) ORDER BY rent DESC


select * from TenancyHistory INNER JOIN Profiles
from TenancyHistory AS E, [Employment Status] AS D, Houses AS C, Referral AS B, Profiles AS A 




profile_id, first_name + ' ' + last_name AS 'Full_Name' ,  phone, email id, city , house id, move_in_date , move_out_date, rent, COUNT(profile_id),  latest_employer and the occupational_category



use Tenant3
select * from Addresses

select * from TenancyHistory

select * from Houses

select * from Profiles

select * from Referral
select * from EmploymentStatus


select R.profile_id, P.first_name + ' ' + P.last_name AS 'Full_Name', P.phone, P.email_id, P.city, T.house_id, T.move_in_date, T.move_out_date, T.rent,count(R.profile_id), E.latest_employer, E.occupational_category
from Referral as R
inner join Profiles AS P
inner join EmploymentStatus AS E
inner join TenancyHistory AS T
inner join Houses AS H
on T.house_id = H.house_id
on E.profile_id = T.profile_id
on P.profile_id = E.profile_id
on R.profile_id = P.profile_id
where P.city in ('Bangalore', 'Pune') and move_in_date>='20150101' and move_out_date<='20160101'
GROUP BY R.profile_id
ORDER BY rent DESC

Select P.profile_id, P.Full_Name, P.phone, P.email_id, P.city, T.house_id, T.move_in_date, T.move_out_date, T.rent,R.ReferralCount, E.latest_employer, E.occupational_category
from
(select profile_id, first_name + ' ' + last_name AS 'Full_Name', phone, email_id,city from Profiles where city in ('Bangalore', 'Pune'))P
inner join 
(select profile_id, house_id, move_in_date, move_out_date, rent from TenancyHistory )T
inner join 
(select profile_id, latest_employer, occupational_category from EmploymentStatus)E
inner join 
(select profile_id, count(profile_id) AS ReferralCount from Referral group by profile_id)R
ON R.profile_id = E.profile_id
ON T.profile_id = E.profile_id
ON P.profile_id = T.profile_id

Final
Select P.profile_id, P.Full_Name, P.phone, P.email_id, P.city, T.house_id, T.move_in_date, T.move_out_date, 
T.rent,R.ReferralCount, E.latest_employer, E.occupational_category
from
(select profile_id, first_name + ' ' + last_name AS 'Full_Name', phone, email_id,city from Profiles where city in ('Bangalore', 'Pune'))P
inner join 
(select profile_id, house_id, move_in_date, move_out_date, rent from TenancyHistory 
where move_in_date>='20150101' and move_out_date<='20160101' )T
inner join 
(select profile_id, latest_employer, occupational_category from EmploymentStatus)E
inner join 
(select profile_id, count(profile_id) AS ReferralCount from Referral group by profile_id)R
ON R.profile_id = E.profile_id
ON T.profile_id = E.profile_id
ON P.profile_id = T.profile_id
ORDER BY rent DESC
Final

use Tenant3

Final
Select P.profile_id, P.Full_Name, P.phone, P.email_id, P.city, T.house_id, T.move_in_date, T.move_out_date, 
T.rent,R.ReferralCount, E.latest_employer, E.occupational_category
from
(select profile_id, first_name + ' ' + last_name AS 'Full_Name', phone, email_id,city from Profiles where city in ('Bangalore', 'Pune'))P
inner join 
(select profile_id, house_id, move_in_date, move_out_date, rent from TenancyHistory 
where move_in_date>='20150101' and move_in_date<='20160101' )T
inner join 
(select profile_id, latest_employer, occupational_category from EmploymentStatus)E
inner join 
(select profile_id, count(profile_id) AS ReferralCount from Referral group by profile_id)R
ON R.profile_id = E.profile_id
ON T.profile_id = E.profile_id
ON P.profile_id = T.profile_id
ORDER BY rent DESC
Final