DELIMITER $$

CREATE PROCEDURE send_welcome_email(IN patient_id INT)
BEGIN
    DECLARE patient_email VARCHAR(100);
    DECLARE patient_name VARCHAR(100);
    DECLARE subject VARCHAR(255);
    DECLARE body TEXT;
    
    SELECT email, CONCAT(first_name, ' ', last_name) INTO patient_email, patient_name
    FROM Patient
    WHERE id = patient_id;

    -- Prepare the email subject and body
    SET subject = 'Welcome to Our Healthcare System!';
    SET body = CONCAT('Dear ', patient_name, ',\n\nThank you for creating an account with us. We are happy to have you as a patient.\n\nBest regards,\nYour Healthcare Team');
    SELECT CONCAT('Email sent to: ', patient_email) AS email_status;

END$$

DELIMITER ;