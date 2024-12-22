-- Creating Tables
CREATE TABLE mobile (
    mobileno NUMBER(15) PRIMARY KEY,
    simcompany CHAR(15),
    state CHAR(15)
);

CREATE TABLE aadhar (
    aadharno NUMBER(15) PRIMARY KEY,
    firstname CHAR(15),
    lastname CHAR(15),
    gender CHAR(15),
    address CHAR(15),
    dob DATE,
    age NUMBER(15)
);

CREATE TABLE mobilelink (
    mobileno NUMBER(15) REFERENCES mobile(mobileno),
    aadharno NUMBER(15) REFERENCES aadhar(aadharno),
    PRIMARY KEY (mobileno, aadharno)
);

CREATE TABLE bank (
    bankname CHAR(15) PRIMARY KEY
);

CREATE TABLE branchadd (
    branchname CHAR(15) PRIMARY KEY,
    address CHAR(15)
);

CREATE TABLE bankbranch (
    ifsccode CHAR(15) PRIMARY KEY,
    branchname CHAR(15) REFERENCES branchadd(branchname)
);

CREATE TABLE branches (
    ifsccode CHAR(15) REFERENCES bankbranch(ifsccode),
    bankname CHAR(15) REFERENCES bank(bankname),
    PRIMARY KEY (ifsccode, bankname)
);

CREATE TABLE account (
    accountno NUMBER(15) PRIMARY KEY,
    accholder CHAR(15),
    balance NUMBER(15)
);

CREATE TABLE accountlink (
    accountno NUMBER(15) REFERENCES account(accountno),
    aadharno NUMBER(15) REFERENCES aadhar(aadharno),
    PRIMARY KEY (accountno, aadharno)
);

CREATE TABLE accounts (
    ifsccode CHAR(15) REFERENCES bankbranch(ifsccode),
    accountno NUMBER(15) REFERENCES account(accountno),
    PRIMARY KEY (ifsccode, accountno)
);

CREATE TABLE saving (
    aacountno NUMBER(15) PRIMARY KEY,
    interestrate NUMBER(15)
);

CREATE TABLE current1 (
    aacountno NUMBER(15) PRIMARY KEY,
    currentrate NUMBER(15)
);

CREATE TABLE familydetails (
    aadharno NUMBER(15) PRIMARY KEY,
    familyincome NUMBER(15),
    totalmembers NUMBER(15),
    mainoccupation CHAR(15)
);

CREATE TABLE propertydetails (
    aadharno NUMBER(15) REFERENCES familydetails(aadharno),
    property CHAR(15)
);
