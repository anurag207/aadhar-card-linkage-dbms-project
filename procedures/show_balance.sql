
CREATE PROCEDURE show_balance (
    account_no NUMBER,
    balan OUT NUMBER
) AS
BEGIN
    SELECT balance INTO balan
    FROM account
    WHERE accountno = account_no;
END;

-- calling show_balance

DECLARE
    bal NUMBER;
BEGIN
    show_balance(:accno, bal);
    dbms_output.put_line(bal);
END;

