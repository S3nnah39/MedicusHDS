/* Create Tables */

CREATE TABLE Patient (
  Patient_ID CHAR(6) NOT NULL,
  /* Address is in a separate table */
  Blood_Type ENUM('AB+', 'AB-', 'A+','A-', 'B+', 'B-', 'O+', 'O-'),
  Health_Insurance VARCHAR(20),
  Gender VARCHAR(6),
  /* Telephone is in a separate table */
  Date_Of_Birth VARCHAR(8), /* Do we want to change this to a DATE variable */
  Status VARCHAR(15),
  /* Name is in a separate table */
  Allergies VARCHAR(20),
  PRIMARY KEY (Patient_ID)
);

CREATE TABLE Patient_Address (
  Patient_ID CHAR(6) NOT NULL,
  Street VARCHAR(20),
  City VARCHAR(20),
  State VARCHAR(13), /* The state with the longest name in the U.S. is Massachusetts. */
  Zip_Code VARCHAR(5),
  PRIMARY KEY(Patient_ID, Street, City, State, Zip_Code),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Patient_Telephone (
  Patient_ID CHAR(6) NOT NULL,
  Telephone VARCHAR(12), /* 12 digits for +##-###-###-#### */
  PRIMARY KEY(Patient_ID, Telephone),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Patient_Name (
  Patient_ID CHAR(6) NOT NULL,
  First VARCHAR(20),
  Middle VARCHAR(20),
  Last VARCHAR(20),
  PRIMARY KEY(Patient_ID, First, Middle, Last),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Medical_History (
  Patient_ID CHAR(6) NOT NULL,
  Medicine_Prescribed VARCHAR(20),
  Dose VARCHAR(20),
  Date_Of_Visit VARCHAR(8), /* Do we want to change this to a DATE variable */
  Reason_For_Visit VARCHAR(20),
  /* Vaccination is in a separate table */
  PRIMARY KEY(Patient_ID),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Medical_History_Vaccination (
  Patient_ID CHAR(6) NOT NULL,
  Name VARCHAR(20),
  Manufacturer VARCHAR(20),
  Lot_No VARCHAR(10),
  PRIMARY KEY(Patient_ID, Name),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Department (
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY(Name)
);

CREATE TABLE Employee (
  Employee_ID CHAR(6) NOT NULL,
  Job_Title VARCHAR(20),
  Salary VARCHAR(10),
  Clearance INT,
  /* Telephone_No is in a separate table */
  /* Name is in a separate table */
  PRIMARY KEY(Employee_ID)
);

CREATE TABLE Employee_Telephone (
  Employee_ID CHAR(6) NOT NULL,
  Telephone_No VARCHAR(12), /* 12 digits for +##-###-###-#### */
  PRIMARY KEY(Employee_ID, Telephone_No),
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Employee_Name (
  Employee_ID CHAR(6) NOT NULL,
  First VARCHAR(20),
  Middle VARCHAR(20),
  Last VARCHAR(20),
  PRIMARY KEY(Employee_ID, First, Middle, Last),
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Medical_Staff (
  Employee_ID CHAR(6) NOT NULL,
  Qualifications VARCHAR(20),
  PRIMARY KEY(Employee_ID),
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Medicine (
  Name VARCHAR(20) NOT NULL,
  Amount Int,
  Storage_Conditions VARCHAR(20),
  Expiration_Date VARCHAR(8), /* Do we want to change this to a DATE variable */
  Date_Of_Purchase VARCHAR(8), /* Do we want to change this to a DATE variable */
  Manufacturer VARCHAR(20),
  PRIMARY KEY(Name)
);

CREATE TABLE Operations (
  Time VARCHAR(14), /* Do we want to change this to a DATETIME variable */
  Location VARCHAR(20),
  Name VARCHAR(20),
  PRIMARY KEY(Time, Location)
);

CREATE TABLE Medical_Equipment (
  Equipment_ID CHAR(6),
  Name VARCHAR(20),
  /* Incident_History is in a separate table */
  Date_Of_Purchase VARCHAR(8), /* Do we want to change this to a DATE variable */
  Warranty VARCHAR(20),
  Cost DOUBLE(10,2), /* Do we want to change this to a MONEY variable*/
  Manufacturer VARCHAR(20),
  PRIMARY KEY(Equipment_ID)
);

CREATE TABLE Medical_Equipment_Incident_History (
  Equipment_ID CHAR(6),
  Incident_History VARCHAR(20),
  PRIMARY KEY(Equipment_ID, Incident_History),
  FOREIGN KEY(Equipment_ID) REFERENCES Medical_Equipment(Equipment_ID)
);

CREATE TABLE Current_Treatment (
  Employee_ID CHAR(6),
  Name VARCHAR(20),
  Patient_ID CHAR(6),
  Date_Started VARCHAR(8), /* Do we want to change this to a DATE variable */
  PRIMARY KEY(Employee_ID, Name, Patient_ID),
  FOREIGN KEY(Employee_ID) REFERENCES Medical_Staff(Employee_ID),
  FOREIGN KEY(Name) REFERENCES Medicine(Name),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Primary_Physician (
  Employee_ID CHAR(6),
  Patient_ID CHAR(6),
  PRIMARY KEY(Employee_ID, Patient_ID),
  FOREIGN KEY(Employee_ID) REFERENCES Medical_Staff(Employee_ID),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Works_For (
  Employee_ID CHAR(6),
  Name VARCHAR(20),
  PRIMARY KEY(Employee_ID, Name),
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID),
  FOREIGN KEY(Name) REFERENCES Department(Name)
);

CREATE TABLE Head_Of (
  Employee_ID CHAR(6),
  Name VARCHAR(20),
  PRIMARY KEY(Employee_ID, Name),
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID),
  FOREIGN KEY(Name) REFERENCES Department(Name)
);

CREATE TABLE Scheduled_For (
  Employee_ID CHAR(6),
  Equipment_ID CHAR(6),
  Patient_ID CHAR(6),
  Time VARCHAR(14),
  Location VARCHAR(20),
  PRIMARY KEY(Employee_ID, Equipment_ID, Patient_ID, Location, Time),
  FOREIGN KEY(Employee_ID) REFERENCES Medical_Staff(Employee_ID),
  FOREIGN KEY(Equipment_ID) REFERENCES Medical_Equipment(Equipment_ID),
  FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID),
  FOREIGN KEY(Time, Location) REFERENCES Operations(Time, Location)
);

/* Functions */
-- Create_Patient_Record
INSERT INTO Patient (Patient_ID, Blood_Type, Health_Insurance, Gender, Date_Of_Birth, Status, Allergies) VALUES ('123457', 'O-', 'Mountain View Healthcare', 'Female', '06/23/1991', 'Not In Hospital', 'Penicillin'); 
INSERT INTO Patient_Address (Patient_ID, Street, City, State, Zip_Code) VALUES ('123457', '1979 Kerath', 'Silicon City', 'Missouri', '65201');
INSERT INTO Patient_Telephone (Patient_ID, Telephone)
VALUES ('123457', '314-557-7898');
INSERT INTO Patient_Name (Patient_ID, First, Middle, Last) VALUES ('123457', 'Rusty', 'Rust', 'Opourcer');

-- Delete_Patient_Record
DELETE FROM Patient WHERE Patient_ID='123456';
DELETE FROM Patient_Address WHERE Patient_ID='123456';
DELETE FROM Patient_Telephone WHERE Patient_ID='123456';
DELETE FROM Patient_Name WHERE Patient_ID='123456';

-- Update_Patient_Record
UPDATE Patient
SET Health_Insurance='Cyber Doctors, Inc.', Status='Stable', Allergies='Peanuts, Ragweed'
WHERE Patient_ID='123456';
UPDATE Patient_Address 
SET Street='2004 Red Rails'
WHERE Patient_ID='123456';
UPDATE Patient_Telephone
SET Telephone='99-999-9999'
WHERE Patient_ID='123456';
UPDATE Patient_Name
SET Middle='Rojo'
WHERE Patient_ID='123456';

-- Display_Department_Employees
SELECT First, Middle, Last 
FROM Employee_Name E_N
WHERE Employee_ID IN (SELECT Employee_ID
  FROM Works_For W
  WHERE W.Name='Laboratory');

-- Check_Current_Medicine_Prescriptions
SELECT First, Middle, Last
FROM Patient_Name P_N
WHERE Patient_ID IN (SELECT Patient_ID
  FROM Current_Treatment C_T
  WHERE C_T.Name='Immunotherapy');

-- Schedule_Medical_Operation
INSERT INTO Operations
VALUES ('12/09/21', 'Motherboard 0x08', 'Appendectomy');
INSERT INTO Scheduled_For
VALUES ('587652', '000001','123455', '12/09/21','Motherboard 0x08');

-- Count_Admitted_Patients
SELECT COUNT(*)
FROM Patient P
WHERE P.Status='Critical' AND P.Status='Stable' AND P.Status='Comatose';

-- Display_Average_Salary
SELECT AVG(Salary)
FROM Employee;
