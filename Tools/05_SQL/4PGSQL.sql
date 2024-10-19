-- ################################## EQUIT JOIN
SELECT 
    people.id,
    people.firt_name,  
    people.last_name,
    phone_number.person_id,
    phone_number.title,
    phone_number.country_code,
    phone_number.phone_number,
FROM
    people,phone_number
WHERE
    peopl.id = phone_number.person_id 











