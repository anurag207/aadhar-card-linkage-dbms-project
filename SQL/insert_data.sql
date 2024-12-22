-- Inserting Data into Tables

-- Mobile
INSERT INTO mobile VALUES (9799670662, 'airtel', 'up');
INSERT INTO mobile VALUES (9799650661, 'airtel', 'punjab');
INSERT INTO mobile VALUES (9899650661, 'vodafone', 'rajasthan');
INSERT INTO mobile VALUES (9499650676, 'bsnl', 'ap');
INSERT INTO mobile VALUES (9599650676, 'idea', 'mp');

-- Aadhaar
INSERT INTO aadhar VALUES (322112345450, 'himanshu', 'amethia', 'male', 'gorakhpur', TO_DATE('22/April/2011', 'DD/MON/YYYY'), 18);
INSERT INTO aadhar VALUES (312112345450, 'himanshu', 'jain', 'male', 'hissar', TO_DATE('21/April/1998', 'DD/MON/YYYY'), 19);
INSERT INTO aadhar VALUES (242112345450, 'himanshu', 'sharma', 'male', 'kota', TO_DATE('25/April/1998', 'DD/MON/YYYY'), 19);
INSERT INTO aadhar VALUES (142112345450, 'anurag', 'kamboj', 'male', 'jagadhri', TO_DATE('25/April/1996', 'DD/MON/YYYY'), 20);
INSERT INTO aadhar VALUES (562112345450, 'hk', 'amethia', 'male', 'jaipur', TO_DATE('25/March/1996', 'DD/MON/YYYY'), 20);

-- Mobile Link
INSERT INTO mobilelink VALUES (9799670662, 322112345450);
INSERT INTO mobilelink VALUES (9799650661, 322112345450);
INSERT INTO mobilelink VALUES (9899650661, 312112345450);
INSERT INTO mobilelink VALUES (9499650676, 242112345450);
INSERT INTO mobilelink VALUES (9599650676, 142112345450);
INSERT INTO mobilelink VALUES (9599650676, 562112345450);

-- Bank
INSERT INTO bank VALUES ('hdfc');
INSERT INTO bank VALUES ('icici');
INSERT INTO bank VALUES ('sbi');
INSERT INTO bank VALUES ('bandhan');
INSERT INTO bank VALUES ('pnb');

-- Add Branch
INSERT INTO branchadd VALUES ('fatehabad', 'modeltown');
INSERT INTO branchadd VALUES ('faridabad', 'anaj mandi');
INSERT INTO branchadd VALUES ('patiala', '22 no.');
INSERT INTO branchadd VALUES ('ambala', 'new market');
INSERT INTO branchadd VALUES ('jagadhri', 'old market');

--Banck Branch
INSERT INTO bankbranch VALUES ('punb0019100', 'fatehabad');
INSERT INTO bankbranch VALUES ('hdfc0000116', 'faridabad');
INSERT INTO bankbranch VALUES ('icici00001', 'patiala');
INSERT INTO bankbranch VALUES ('bdbl0001014', 'ambala');
INSERT INTO bankbranch VALUES ('sbin0003897', 'jagadhri');

-- Branches
INSERT INTO branches VALUES ('punb0019100', 'pnb');
INSERT INTO branches VALUES ('hdfc0000116', 'hdfc');
INSERT INTO branches VALUES ('icici00001', 'icici');
INSERT INTO branches VALUES ('bdbl0001014', 'bandhan');
INSERT INTO branches VALUES ('sbin0003897', 'sbi');

-- Accont
INSERT INTO account VALUES ('00987654321', 'himanshujain', 1500);
INSERT INTO account VALUES ('00987654320', 'himanshujain', 15000);
INSERT INTO account VALUES ('00987654323', 'anuragkamboj', 10);
INSERT INTO account VALUES ('00987654324', 'himanshuamethia', 20);
INSERT INTO account VALUES ('00987654325', 'himanshusharma', 200000);

-- Accountlink  
INSERT INTO accountlink VALUES ('00987654321', 322112345450);
INSERT INTO accountlink VALUES ('00987654320', 322112345450);
INSERT INTO accountlink VALUES ('00987654323', 312112345450);
INSERT INTO accountlink VALUES ('00987654324', 242112345450);
INSERT INTO accountlink VALUES ('00987654325', 142112345450);

-- Accounts
INSERT INTO accounts VALUES ('punb0019100', 00987654321);
INSERT INTO accounts VALUES ('hdfc0000116', 00987654320);
INSERT INTO accounts VALUES ('icici00001', 00987654323);
INSERT INTO accounts VALUES ('bdbl0001014', 00987654324);
INSERT INTO accounts VALUES ('sbin0003897', 00987654325);

-- Saving
INSERT INTO saving VALUES (00987654321, 8);
INSERT INTO saving VALUES (00987654320, 10);
INSERT INTO saving VALUES (00987654323, 10);
INSERT INTO saving VALUES (00987654324, 9);
INSERT INTO saving VALUES (00987654325, 9);

-- Current
INSERT INTO current1 VALUES (00987654321, 7);
INSERT INTO current1 VALUES (00987654320, 8);
INSERT INTO current1 VALUES (00987654323, 8);
INSERT INTO current1 VALUES (00987654324, 9);
INSERT INTO current1 VALUES (00987654325, 9);

-- Family Details
INSERT INTO familydetails VALUES (322112345450, 500000, 7, 'agriculture');
INSERT INTO familydetails VALUES (312112345450, 1000000, 7, 'buisness');
INSERT INTO familydetails VALUES (242112345450, 100000, 8, 'govtemployee');
INSERT INTO familydetails VALUES (142112345450, 100000, 8, 'teaching');
INSERT INTO familydetails VALUES (562112345450, 700000, 8, 'propertydealer');

