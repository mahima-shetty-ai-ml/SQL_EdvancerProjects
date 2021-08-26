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


Select DISTINCT B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from TenancyHistory As E
inner join Referral AS A
ON E.profile_id = A.profile_id
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)


select * from Referral 





Select DISTINCT B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from TenancyHistory As E
inner join Referral AS A
ON E.profile_id = A.profile_id
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)



select profile_id, SUM(referrer_bonus_amount) from Referral 
WHERE profile_id IN (select profile_id from Referral GROUP BY profile_id HAVING COUNT(profile_id)>1 ) AND referral_valid = 1
GROUP BY profile_id



SELECT * FROM Referral WHERE referral_valid = 1 AND profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)


SELECT A.profile_id, sum(A.referrer_bonus_amount) BONUSCOST from Referral AS A
inner join Profiles AS B ON A.profile_id = B.profile_id
GROUP BY A.profile_id 
HAVING COUNT(A.profile_id)>1 AND A.referral_valid = 1





Select DISTINCT B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from  Referral AS A
inner join Profiles AS B
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)





Select DISTINCT B.first_name + ' ' + B.last_name AS 'Full_Name', B.email_id, B.phone, B.referral_code from  Profiles AS B
inner join Referral AS A
ON B.profile_id = A.profile_id
WHERE A.profile_id IN (select  profile_id from  Referral GROUP BY profile_id HAVING COUNT(profile_id)>1)

