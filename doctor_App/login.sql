SELECT id, first_name, last_name, email, phone, city, specialization, qualification, is_available_today 
FROM Doctor 
WHERE email = 'johndoe@example.com' 
AND password = 'hashed_password';

SELECT id, first_name, last_name, email, phone, city 
FROM Patient 
WHERE email = 'ethanwhite@example.com' 
AND password = 'hashed_password';