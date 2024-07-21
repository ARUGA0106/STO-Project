 
CREATE TABLE Patient (
    BeneficiaryID VARCHAR(20) PRIMARY KEY,
    Email VARCHAR(255),
    FullName VARCHAR(255),
    Weight DECIMAL(5,1),
    AgeGroup VARCHAR(20),
    Gender VARCHAR(10),
    Location VARCHAR(255),
    DateOfBirth DATE,
    Category VARCHAR(20),
    DesignatedCTCCenter VARCHAR(255)
);

-- Create Staff table
CREATE TABLE Staff (
    StaffID VARCHAR(20) PRIMARY KEY,
    FullName VARCHAR(255),
    Role VARCHAR(20),
    Gender VARCHAR(10),
    Age INT,
    Designation VARCHAR(255)
);

-- Create Role table
CREATE TABLE Role (
    RoleID INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(50)
);

-- Create Reports table
CREATE TABLE Reports (
    ResourceID INT AUTO_INCREMENT PRIMARY KEY,
    ResourceName VARCHAR(255),
    ResourceCategory VARCHAR(50),
    Description TEXT,
    UploadedBy VARCHAR(255),
    DateUploaded DATE
);

-- Create CTCCenter table
CREATE TABLE CTCCenter (
    CenterID INT AUTO_INCREMENT PRIMARY KEY,
    CenterName VARCHAR(255),
    Address TEXT,
    PhoneContact VARCHAR(20),
    Email VARCHAR(255),
    CTCCategory VARCHAR(50)
);

-- Create MIR table
CREATE TABLE MIR (
    MIRID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255),
    Name VARCHAR(255),
    Date DATE,
    Time TIME,
    Response VARCHAR(255)
);

-- Create MPR table
CREATE TABLE MPR (
    MPRID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255),
    Name VARCHAR(255),
    Date DATE,
    Time TIME,
    Response VARCHAR(255)
);

-- Create MIR_SMS table
CREATE TABLE MIR_SMS (
    MIRSMSID INT AUTO_INCREMENT PRIMARY KEY,
    PhoneNumber VARCHAR(20),
    FullName VARCHAR(255),
    Date DATE,
    Time TIME,
    Response VARCHAR(255)
);

-- Create MPR_SMS table
CREATE TABLE MPR_SMS (
    MPRSMSID INT AUTO_INCREMENT PRIMARY KEY,
    PhoneNumber VARCHAR(20),
    FullName VARCHAR(255),
    Date DATE,
    Time TIME,
    Response VARCHAR(255)
);
--  Adding foreign key constraint to Staff table referencing Role table
ALTER TABLE Staff
ADD CONSTRAINT fk_Staff_Role FOREIGN KEY (Role) REFERENCES Role(RoleName);
--  Adding unique constraint to Email column in Patient table
ALTER TABLE Patient
ADD CONSTRAINT uc_Patient_Email UNIQUE (Email);
-- Example: Granting SELECT permission on Patient table to a specific user
GRANT SELECT ON Patient TO 'username'@'localhost';

--Revoking INSERT permission on Reports table from a specific user
REVOKE INSERT ON Reports FROM 'username'@'localhost';
-- Example: Encrypting the Password column in a table using AES encryption
UPDATE Users
SET Password = AES_ENCRYPT(Password, 'encryption_key');
-- Creating a database backup
BACKUP DATABASE dbname TO DISK = 'backup_file_path';
--Parameterized query in PHP
$stmt = $pdo->prepare('SELECT * FROM Users WHERE Username = ? AND Password = ?');
$stmt->execute([$username, $password]);
-- Example: Creating an audit log table to track database modifications
CREATE TABLE AuditLog (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    Action VARCHAR(50),
    TableName VARCHAR(50),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
