#DOCTOR PROFILE UPDATE
UPDATE Doctor
SET 
    first_name = 'Jon', 
    password = 'UpdatedPassword', #add the fields which all are needed to update
    is_available_today = TRUE
WHERE id = 1;  

#Patient Profile Update
UPDATE Patient
SET 
    first_name = 'Etan'
    #add the fields which all are neede to update
WHERE id = 1; 