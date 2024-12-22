-- tells which mobile no. is linked with a given addhar no.

DECLARE
    CURSOR C1 IS
        SELECT mobileno FROM mobilelink WHERE aadharno = 322112345450;
    REC C1%ROWTYPE;
BEGIN
    OPEN C1;
    LOOP
        FETCH C1 INTO REC;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('mobileno ' || REC.mobileno);
    END LOOP;
    CLOSE C1;
END;
