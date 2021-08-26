SELECT OrderID, Quantity,
CASE WHEN rent > 10000 THEN Customer Segm 
WHEN Quantity = 30 THEN 'The quantity is 30'
ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;

use Tenant3

Final
SELECT P.profile_id,
       P.first_name + ' '+ P.last_name as 'Full_Name',
       P.phone,
	   T.rent,
       Customer_Segment = CASE 
        WHEN T.rent > 10000 THEN 'A'
        WHEN (T.rent <= 10000 And T.rent >= 7500) THEN 'B'
		ELSE 'C'
       END
FROM Profiles  AS P
inner join TenancyHistory AS T
on P.profile_id = T.profile_id

Final