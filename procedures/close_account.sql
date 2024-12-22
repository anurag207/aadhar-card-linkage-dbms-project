CREATE PROCEDURE close_account (
    account_no NUMBER
) AS
BEGIN
    DELETE FROM account
    WHERE accountno = account_no;
END;

----calling close_account   
DECLARE
    e NUMBER;
BEGIN
    e := :ACCOUNTNO;
    close_account(e);
END;
