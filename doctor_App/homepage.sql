# Appointments for the doctor once doctor login.
SELECT id, doctor_id, patient_id, appointment_date, status
FROM Appointment
WHERE doctor_id = 9
ORDER BY appointment_date;

#Appointments for the doctor for particular date
SELECT id, doctor_id, patient_id, appointment_date, status
FROM Appointment
WHERE doctor_id = 9 AND appointment_date = '2024-03-25 18:00:00';

#Count availabe appointments for the doctor
SELECT COUNT(*) AS available_slots
FROM Appointment
WHERE doctor_id = 9;

#Search doctor by name
SELECT id, first_name, last_name, email, phone, city, specialization, qualification 
FROM Doctor 
WHERE first_name LIKE '%John%' OR last_name LIKE '%John%';

#Search doctor by Disease
SELECT d.id, d.first_name, d.last_name, d.email, d.phone, d.city, d.specialization, d.qualification 
FROM Doctor d
JOIN Doctor_Disease dd ON d.id = dd.doctor_id
JOIN Disease dis ON dd.disease_id = dis.id
WHERE dis.name LIKE '%Asthma%';

#search doctor based on specialization
SELECT id, first_name, last_name, email, phone, city, specialization, qualification 
FROM Doctor 
WHERE specialization LIKE '%Cardiologist%';

#search doctor based on Availability
SELECT id, first_name, last_name, email, phone, city, specialization, qualification 
FROM Doctor 
WHERE is_available_today = TRUE;

#Search doctor based on id
SELECT id, first_name, last_name, email, phone, city, 
       specialization, qualification, is_available_today
FROM Doctor
WHERE id = 9;