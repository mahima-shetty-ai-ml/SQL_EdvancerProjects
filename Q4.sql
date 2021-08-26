select	* from Referral WHERE COUNT(profile_id)>1

select	COUNT(profile_id) from Referral



SELECT A.profile_id, SUM(referrer_bonus_amount)
FROM Referral AS A, Profiles AS B 
where A.profile_id = (select profile_id from  Referral GROUP BY profile_id HAVING COUNT (profile_id)>1 ) 
GROUP BY A.profile_id


select profile_id from  Referral GROUP BY profile_id HAVING COUNT (profile_id)>1 


select * from TenancyHistory

select * from Referral

select * from Profiles

Select * from TenancyHistory As E
inner join Referral AS A
ON E.profile_id = A.profile_id AND  HAVING COUNT (A.profile_id)>1 
ORDER BY rent DESC


select profile_id from  Referral GROUP BY profile_id HAVING COUNT (profile_id)>1

Select * from TenancyHistory As E
inner join Referral AS A

ON E.profile_id = A.profile_id
WHERE A.profile_id IN (select profile_id from  Referral GROUP BY profile_id HAVING COUNT (profile_id)>1) 

Select B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from TenancyHistory As E
inner join Referral AS A
ON E.profile_id = A.profile_id
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select DISTINCT profile_id from  Referral GROUP BY profile_id HAVING COUNT (profile_id)>1)



FINAL

Select DISTINCT B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from  Referral AS A
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)


Select DISTINCT B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from TenancyHistory As E
inner join Referral AS A
ON E.profile_id = A.profile_id
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)


select profile_id, SUM(referrer_bonus_amount) AS BONUSCOST  from Referral 
WHERE profile_id IN (select profile_id from Referral GROUP BY profile_id HAVING COUNT(profile_id)>1 ) AND referral_valid = 1
GROUP BY profile_id

FINAL


Select DISTINCT B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from TenancyHistory As E
inner join Referral AS A
ON E.profile_id = A.profile_id
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)
GROUP BY A.profile_id


Select DISTINCT A.profile_id , B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from  Referral AS A
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1) AND A.referral_valid = 1



select profile_id, SUM(referrer_bonus_amount) AS BONUSCOST  from Referral 
WHERE profile_id IN (select profile_id from Referral GROUP BY profile_id HAVING COUNT(profile_id)>1 ) AND referral_valid = 1
GROUP BY profile_id



(Select DISTINCT A.profile_id , B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from  Referral AS A
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1) AND A.referral_valid = 1)C
INNER JOIN
(select profile_id, SUM(referrer_bonus_amount) AS BONUSCOST  from Referral 
WHERE profile_id IN (select profile_id from Referral GROUP BY profile_id HAVING COUNT(profile_id)>1 ) AND referral_valid = 1)D
GROUP BY profile_id



use Tenant3


Final 
select C.profile_id, first_name + ' ' + last_name as Full_Name, email_id, phone, referral_code, TotalBonus
from Profiles 
inner join
(SELECT profile_id , COUNT (profile_id) AS ReferralCount 
FROM Referral GROUP BY profile_id)C
inner join
(select profile_id, SUM(referrer_bonus_amount) as TotalBonus
from Referral
where referral_valid = 1
GROUP BY profile_id)D
ON C.profile_id = D.profile_id
on Profiles.profile_id = C.profile_id
where C.ReferralCount>1
Final









