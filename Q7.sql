select * from Addresses

select * from TenancyHistory

select * from Houses

select * from Profiles

select * from Referral



SELECT Referral.profile_id, C.valid_till, DATEADD (MONTH, 1, C.valid_till) as NewDATE
from Referral
inner join 
(SELECT profile_id, count(profile_id) AS COUNT, valid_till 
from Referral
group by profile_id, valid_till
having count(profile_id)>2 ) C 
ON C.profile_id = Referral.profile_id

use Tenant3

FINAL
SELECT C.profile_id, valid_till, DATEADD (MONTH, 1, valid_till) as NewValidDate
from Referral
inner join
(SELECT profile_id, count(profile_id) AS COUNT
from Referral
group by profile_id
having count(profile_id)>2 )C
on C.profile_id= Referral.profile_id
FINAL





SELECT profile_id, count(profile_id) from Referral

group by profile_id

having count(profile_id)>2











(SELECT valid_till from Referral where COUNT(profile_id)>2)