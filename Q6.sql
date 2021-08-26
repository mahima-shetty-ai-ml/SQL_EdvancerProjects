

Final
CREATE VIEW vw_tenant
AS
SELECT profile_id,C.rent, C.move_in_date, D.house_type, D.beds_vacant, E.description AS Address,E.city
from 
(SELECT profile_id, house_id, move_in_date, rent from TenancyHistory where move_in_date>='20150430')C
inner join 
(SELECT house_id,beds_vacant, house_type from Houses where beds_vacant>0)D
inner join 
(SELECT house_id,description, city from Addresses)E
On D.house_id = E.house_id
ON C.house_id = D.house_id


Select * from vw_tenant
Final










use Tenant3


CREATE VIEW tenant
AS SELECt * FROM TenancyHistory



select * from Addresses

select * from TenancyHistory

select * from Houses

select * from Profiles

select * from Referral