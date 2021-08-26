
use Tenant3

select * from TenancyHistory


Final
select profile_id, first_name + ' ' + last_name as 'Full_Name', phone from Profiles where profile_id = (select profile_id from TenancyHistory where DATEDIFF(month, [move_in_date], [move_out_date]) = (select max(DATEDIFF(month, [move_in_date], [move_out_date])) from TenancyHistory))
Final