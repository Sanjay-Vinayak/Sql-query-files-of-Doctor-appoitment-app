INSERT INTO Doctor (first_name, last_name, email, phone, city, specialization, qualification, password, is_available_today) 
VALUES 
('John', 'Doe', 'johndoe@example.com', '9876543210', 'New York', 'Cardiologist', 'MBBS, MD', 'hashed_password', TRUE),
('Alice', 'Brown', 'alicebrown@example.com', '9876543211', 'Los Angeles', 'Dermatologist', 'MBBS, MD', 'hashed_password', FALSE),
('Robert', 'Smith', 'robertsmith@example.com', '9876543212', 'Chicago', 'Neurologist', 'MBBS, MD', 'hashed_password', TRUE),
('Emily', 'Johnson', 'emilyjohnson@example.com', '9876543213', 'Houston', 'Pediatrician', 'MBBS, MD', 'hashed_password', TRUE),
('Michael', 'Davis', 'michaeldavis@example.com', '9876543214', 'Miami', 'Orthopedic', 'MBBS, MD', 'hashed_password', FALSE),
('Sarah', 'Wilson', 'sarahwilson@example.com', '9876543215', 'Dallas', 'Endocrinologist', 'MBBS, MD', 'hashed_password', TRUE),
('James', 'Anderson', 'jamesanderson@example.com', '9876543216', 'Phoenix', 'Ophthalmologist', 'MBBS, MD', 'hashed_password', FALSE),
('Olivia', 'Martinez', 'oliviamartinez@example.com', '9876543217', 'Philadelphia', 'Cardiologist', 'MBBS, MD', 'hashed_password', TRUE),
('William', 'Taylor', 'williamtaylor@example.com', '9876543218', 'San Antonio', 'Psychiatrist', 'MBBS, MD', 'hashed_password', TRUE),
('Sophia', 'Moore', 'sophiamoore@example.com', '9876543219', 'San Diego', 'Gastroenterologist', 'MBBS, MD', 'hashed_password', FALSE);

INSERT INTO Patient (first_name, last_name, email, phone, city, password) 
VALUES 
('Ethan', 'White', 'ethanwhite@example.com', '9123456780', 'New York', 'hashed_password'),
('Liam', 'Harris', 'liamharris@example.com', '9123456781', 'Los Angeles', 'hashed_password'),
('Noah', 'Clark', 'noahclark@example.com', '9123456782', 'Chicago', 'hashed_password'),
('Mason', 'Lewis', 'masonlewis@example.com', '9123456783', 'Houston', 'hashed_password'),
('Lucas', 'Walker', 'lucaswalker@example.com', '9123456784', 'Miami', 'hashed_password'),
('Emma', 'Hall', 'emmahall@example.com', '9123456785', 'Dallas', 'hashed_password'),
('Olivia', 'Allen', 'oliviaallen@example.com', '9123456786', 'Phoenix', 'hashed_password'),
('Ava', 'Young', 'avayoung@example.com', '9123456787', 'Philadelphia', 'hashed_password'),
('Sophia', 'King', 'sophiaking@example.com', '9123456788', 'San Antonio', 'hashed_password'),
('Isabella', 'Wright', 'isabellawright@example.com', '9123456789', 'San Diego', 'hashed_password');

INSERT INTO Disease (name, description) 
VALUES 
('Asthma', 'A respiratory condition causing difficulty in breathing.'),
('Diabetes', 'A condition where blood sugar levels are too high.'),
('Hypertension', 'High blood pressure affecting cardiovascular health.'),
('Migraine', 'Severe headaches with nausea and sensitivity to light.'),
('Depression', 'A mental health disorder causing persistent sadness.'),
('Arthritis', 'Inflammation of joints causing pain and stiffness.'),
('Epilepsy', 'A neurological disorder causing seizures.'),
('Skin Allergy', 'An allergic reaction causing redness and itching.'),
('Heart Disease', 'Various heart conditions affecting cardiovascular health.'),
('Thyroid Disorder', 'Hormonal imbalance affecting metabolism.');

INSERT INTO Doctor_Disease (doctor_id, disease_id) 
VALUES 
(1, 9),  (2, 8),  (3, 7),  (4, 6),  (5, 5),
(6, 4),  (7, 3),  (8, 2),  (9, 1),  (10, 10),
(1, 5),  (2, 7),  (3, 9),  (4, 2),  (5, 1),
(6, 10), (7, 8),  (8, 6),  (9, 4),  (10, 3);

INSERT INTO Appointment (patient_id, doctor_id, appointment_date, status, notes) 
VALUES 
(1, 1, '2024-03-25 10:00:00', 'Scheduled', 'Chest pain'),
(2, 2, '2024-03-25 11:00:00', 'Scheduled', 'Skin allergy'),
(3, 3, '2024-03-25 12:00:00', 'Completed', 'Seizure treatment'),
(4, 4, '2024-03-25 13:00:00', 'Scheduled', 'Joint pain'),
(5, 5, '2024-03-25 14:00:00', 'Cancelled', 'Depression symptoms'),
(6, 6, '2024-03-25 15:00:00', 'Scheduled', 'Frequent headaches'),
(7, 7, '2024-03-25 16:00:00', 'Completed', 'High blood pressure'),
(8, 8, '2024-03-25 17:00:00', 'Scheduled', 'Diabetes checkup'),
(9, 9, '2024-03-25 18:00:00', 'Scheduled', 'Asthma management'),
(10, 10, '2024-03-25 19:00:00', 'Cancelled', 'Thyroid imbalance');
