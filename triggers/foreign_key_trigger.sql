CREATE OR REPLACE TRIGGER foreign_key_trigger
BEFORE INSERT ON accountlink
FOR EACH ROW
DECLARE
    aNum accountlink.accountno%TYPE;
BEGIN
    SELECT accountno INTO aNum FROM accountlink WHERE accountno = :NEW.accountno;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20004, 'FOREIGN KEY VIOLATED BECAUSE VALUE IS NOT FOUND IN THE PARENT TABLE');
END;

-- primary key violation