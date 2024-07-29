-- ################################## CHANGE ALL 
UPDATE posgres SET first_name = 'OMID';

-- ################################## CHANGE SPECTIAL
UPDATE posgres SET first_name = 'OMID' WHERE id = 2;

-- ################################## VIP TO USE id FOR UPDATE (VERY DANGEROUS)
UPDATE posgres SET first_name = 'OMID' ,last_name = 'Something' WHERE id = 2;



-- ################################## COUNT OF NUMBER OF DATA
SELECT COUNT(id) FROM posgres;



-- ################################## DELETE
DELETE FROM posgres;

-- ################################## DELETE WITH CONDTIONS
DELETE FROM posgres WHERE first_name = 'OMID';
