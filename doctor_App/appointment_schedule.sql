#creating an appointmnet 
INSERT INTO Appointment (patient_id, doctor_id, appointment_date, status)
VALUES (1, 5, '2024-03-25 10:00:00', 'Scheduled');

#to get all the appoitment of the patient with doctor details
SELECT 
    a.id AS appointment_id, 
    a.appointment_date, 
    d.first_name AS doctor_first_name, 
    d.last_name AS doctor_last_name
FROM Appointment a
JOIN Doctor d ON a.doctor_id = d.id
WHERE a.patient_id = 2
  AND a.status = 'Scheduled';
  
  #to get all the appointment of the doctor with patioent details
  SELECT 
    a.id AS appointment_id, 
    a.appointment_date, 
    p.first_name AS patient_first_name, 
    p.last_name AS patient_last_name
FROM Appointment a
JOIN Patient p ON a.patient_id = p.id
WHERE a.doctor_id = 2
  AND a.status = 'Scheduled';