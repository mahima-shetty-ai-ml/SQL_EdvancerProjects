SELECT house_id, house_type,bhk_type,bed_count,beds_vacant FROM Houses

where DIFFERENCE(bed_count,beds_vacant)  = ( select MAX(DIFFERENCE(bed_count,beds_vacant)) from Houses )


use Tenant3



final
SELECT house_id, house_type, bhk_type, bed_count, beds_vacant, furnishing_type  FROM Houses
WHERE (bed_count - beds_vacant) = (select ( MAX(bed_count - beds_vacant)) from Houses)
final











where DIFF  = ( select MAX(DIFFERENCE(bed_count,beds_vacant)) from Houses )

