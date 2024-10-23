CREATE TRIGGER lambda_trigger
AFTER INSERT ON mental_health_assessment.features
FOR EACH ROW
BEGIN
    CALL update_row_counter_and_trigger_train_lambda();
END;
