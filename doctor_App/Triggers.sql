#Trigger to activate stored procedure to send email 

DELIMITER $$

CREATE TRIGGER after_patient_insert
AFTER INSERT ON Patient
FOR EACH ROW
BEGIN
    CALL send_welcome_email(NEW.id);
END$$

DELIMITER ;

#Trigger to automatically assign diseases to doctors
DELIMITER $$
CREATE TRIGGER after_doctor_assign_disease
AFTER INSERT ON Doctor_Disease
FOR EACH ROW
BEGIN
    INSERT INTO Assignment_Log (doctor_id, disease_id, action)
    VALUES (NEW.doctor_id, NEW.disease_id, 'Disease Assigned');
END$$

DELIMITER ;

# Trigger to Update Appointment Status When Appointment Date is Passed
DELIMITER $$

CREATE TRIGGER update_appointment_status
AFTER UPDATE ON Appointment
FOR EACH ROW
BEGIN
    IF NEW.appointment_date < NOW() AND NEW.status = 'Scheduled' THEN
        UPDATE Appointment
        SET status = 'Completed'
        WHERE id = NEW.id;
    END IF;
END$$

DELIMITER ;

