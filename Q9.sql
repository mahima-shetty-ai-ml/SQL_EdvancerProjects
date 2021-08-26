SELECT * FROM Referral

SELECT profile_id, first_name + ' ' + last_name as 'Full_Name', phone from Profiles
where profile_id  not in (Select profile_id from Referral )

select profile_id from Profiles
where profile_id not in (Select profile_id from Referral )

use Tenant3

Final
SELECT P.profile_id, first_name + ' ' + last_name as 'Full_Name', phone, P.city, H.house_type, H.bed_count, H.beds_vacant, H.bhk_type, H.furnishing_type from Profiles AS P
inner join 
Houses As H
inner join TenancyHistory AS T
on H.house_id = T.house_id
on T.profile_id = P.profile_id
where P.profile_id  not in (Select profile_id from Referral )
Final