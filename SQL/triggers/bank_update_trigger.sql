CREATE OR REPLACE TRIGGER bank_update_trigger
AFTER UPDATE OF bankname ON bank
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('OLD NAME: ' || :OLD.bankname);
    DBMS_OUTPUT.PUT_LINE('NEW NAME: ' || :NEW.bankname);
END;