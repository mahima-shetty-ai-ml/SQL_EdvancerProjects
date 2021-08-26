Final
Use Tenant3
select first_name + ' ' + last_name as 'Full_Name' , email_id, phone from Profiles as A, TenancyHistory as B where A.profile_id = (select B.profile_id where A.marital_status = 'Y' and B.rent>9000)
Final



select * from Profiles
