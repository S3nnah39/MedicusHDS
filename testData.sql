INSERT INTO Patient (Patient_ID, Blood_Type, Health_Insurance, Gender, Date_Of_Birth, Status, Allergies)
VALUES ('123450', 'O+', 'Sawo Healthcare', 'Female', '06/23/1990', 'In Hospital', 'None');
INSERT INTO Patient (Patient_ID, Blood_Type, Health_Insurance, Gender, Date_Of_Birth, Status, Allergies)
VALUES ('123451', 'B-', 'Pihton Healthcare', 'Male',  '16/03/1982', 'Not In Hospital', 'None');
INSERT INTO Patient (Patient_ID, Blood_Type, Health_Insurance, Gender, Date_Of_Birth, Status, Allergies)
VALUES ('123452', 'AB+', 'Getther Healthcare', 'Female',  '20/12/2000', 'In Hospital', 'Eggs');
INSERT INTO Patient (Patient_ID, Blood_Type, Health_Insurance, Gender, Date_Of_Birth, Status, Allergies)
VALUES ('123453', 'A+', 'Better Healthcare', 'Male', '06/23/1990', 'In Hospital', 'None');
INSERT INTO Patient (Patient_ID, Blood_Type, Health_Insurance, Gender, Date_Of_Birth, Status, Allergies)
VALUES ('123454', 'A-', 'Pihton Healthcare', 'Female',  '08/23/1990', 'In Hospital', 'None');
INSERT INTO Patient (Patient_ID, Blood_Type, Health_Insurance, Gender, Date_Of_Birth, Status, Allergies)
VALUES ('123455', 'A-', 'Better Healthcare', 'Female', '08/23/1990', 'In Hospital', 'None');

INSERT INTO Patient_Address (Patient_ID, Street, City, State, Zip_Code) VALUES ('123450', '2079 Piddle Lant', 'Silicon City', 'Missouri', '65211');
INSERT INTO Patient_Address (Patient_ID, Street, City, State, Zip_Code) VALUES ('123451', '192 Avenorm Street', 'Bluford', 'Illinois', '65300');
INSERT INTO Patient_Address (Patient_ID, Street, City, State, Zip_Code) VALUES ('123452', '2100 Venery Laret', 'Joplin', 'Missouri', '45201');
INSERT INTO Patient_Address (Patient_ID, Street, City, State, Zip_Code) VALUES ('123453', '1979 Kernel Path', 'Chicago', 'Illinois', '25201');
INSERT INTO Patient_Address (Patient_ID, Street, City, State, Zip_Code) VALUES ('123454', '1009 Pathway', 'Chicago', 'Illinois', '25041');
INSERT INTO Patient_Address (Patient_ID, Street, City, State, Zip_Code) VALUES ('123455', '2079 Kernah', 'Pretoria', 'Illinois', '43201');

INSERT INTO Patient_Telephone (Patient_ID, Telephone) VALUES ('123450', '555-010-7287');
INSERT INTO Patient_Telephone (Patient_ID, Telephone) VALUES ('123451', '555-010-4538');
INSERT INTO Patient_Telephone (Patient_ID, Telephone) VALUES ('123452', '555-018-3723');
INSERT INTO Patient_Telephone (Patient_ID, Telephone) VALUES ('123453', '555-011-7658');
INSERT INTO Patient_Telephone (Patient_ID, Telephone) VALUES ('123454', '555-014-4189');
INSERT INTO Patient_Telephone (Patient_ID, Telephone) VALUES ('123455', '555-017-0974');

INSERT INTO Patient_Name (Patient_ID, First, Middle, Last) VALUES ('123450', 'Fridah', 'Lawrence', 'Omak');
INSERT INTO Patient_Name (Patient_ID, First, Middle, Last) VALUES ('123451', 'Dawson', 'Hamilton', 'Massac');
INSERT INTO Patient_Name (Patient_ID, First, Middle, Last) VALUES ('123452', 'Amirah', 'Brown', 'Sania');
INSERT INTO Patient_Name (Patient_ID, First, Middle, Last) VALUES ('123453', 'Brian', 'Schuyler', 'Coup');
INSERT INTO Patient_Name (Patient_ID, First, Middle, Last) VALUES ('123454', 'Faith', 'Lauren', 'Monk');
INSERT INTO Patient_Name (Patient_ID, First, Middle, Last) VALUES ('123455', 'Paula', 'Vienea', 'Warren');

INSERT INTO Medical_History (Patient_ID, Medicine_Prescribed, Dose, Date_Of_Visit, Reason_For_Visit) VALUES ('123450', 'Benadryl', '2mg/day ', '01/01/2019','Check-up');
INSERT INTO Medical_History (Patient_ID, Medicine_Prescribed, Dose, Date_Of_Visit, Reason_For_Visit) VALUES ('123453', 'Crestor', '1mg/day ', '01/10/2019','Follow-up');
INSERT INTO Medical_History (Patient_ID, Medicine_Prescribed, Dose, Date_Of_Visit, Reason_For_Visit) VALUES ('123452', 'Atenolol', '2mg/day ', '04/21/2020','Check-up');
INSERT INTO Medical_History (Patient_ID, Medicine_Prescribed, Dose, Date_Of_Visit, Reason_For_Visit) VALUES ('123451', 'Levaquin', '1mg/day ', '11/07/2018','Check-up');


INSERT INTO Medical_History_Vaccination (Patient_ID, Name, Manufacturer, Lot_No) VALUES ('123450','Adenovirus','Viral Vector', '001503');
INSERT INTO Medical_History_Vaccination (Patient_ID, Name, Manufacturer, Lot_No) VALUES ('123450','YF-Vax','Sanofi Pasteur', 'UE805AA');
INSERT INTO Medical_History_Vaccination (Patient_ID, Name, Manufacturer, Lot_No) VALUES ('123452','Ipol','Sanofi', 'U927AAA');

INSERT INTO Department(Name) VALUES('Pharmacy');
INSERT INTO Department(Name) VALUES('Oncology');
INSERT INTO Department(Name) VALUES('Intensive Care Unit');
INSERT INTO Department(Name) VALUES('Laboratory');
INSERT INTO Department(Name) VALUES('Neurology');

INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES ('987650','Account Manager', '40000','2');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES ('987651','Administrator', '80000','1');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES ('987652','Clinical Coordinator', '60000','1');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES ('987653','Coordinator', '45000','3');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES ('987654','Directr of Nursing', '82000','1');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES ('987655','Chief Financial Officer', '90000','1');

INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('987650', '573-999-9999');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('987651', '573-999-8899');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('987652', '573-287-9009');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('987653', '573-059-1299');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('987654', '813-287-9009');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('987655', '313-007-5059');

INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES ('987650','Juluis', 'Michael', 'Kahwai');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES ('987651','Alfrida', 'Omina', 'Justus');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES ('987652','Marged', 'Ratnam', 'Sahi');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES ('987653','Suleiman', 'Abdullahi', 'Moha');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES ('987654','Khadija', 'Salome', 'Sahil');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES ('987655','Malik', 'Khaleed', 'Mohammed');

INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES('587650','Surgeon', '80000','1');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES('587651','Pharmacist', '50000','2');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES('587652','Anesthesiologist', '60000','1');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES('587653','Nurse', '45000','3');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES('587654','Doctor', '82000','1');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES('587655','Doctor', '81000','1');
INSERT INTO Employee (Employee_ID, Job_Title, Salary, Clearance) VALUES('587656','Doctor', '84000','1');

INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('587650', '623-999-9999');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('587651', '913-999-8899');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('587652', '183-287-9009');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('587653', '173-059-1299');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('587654', '113-287-9009');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('587655', '313-307-9009');
INSERT INTO Employee_Telephone (Employee_ID, Telephone_No) VALUES ('587656', '513-211-8809');

INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES('587650','Arturo', 'Mitchel', 'Kino');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES('587651','Aziadd', 'Renae', 'Elised');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES('587652','Maggie', 'Lana', 'Sahil');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES('587653','Mina', 'Lahina', 'Abdullahi');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES('587654','Zurine', 'Mia', 'Florez');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES('587655','Ivy', 'Chep', 'Rono');
INSERT INTO Employee_Name (Employee_ID, First, Middle, Last) VALUES('587656','Paul', 'Niko', 'Dawson');

INSERT INTO Medical_Staff(Employee_ID, Qualifications) VALUES ('587650', 'ABS License');
INSERT INTO Medical_Staff(Employee_ID, Qualifications) VALUES ('587651', 'ASHP License');
INSERT INTO Medical_Staff(Employee_ID, Qualifications) VALUES ('587652', 'Medical License');
INSERT INTO Medical_Staff(Employee_ID, Qualifications) VALUES ('587653', 'RN License');
INSERT INTO Medical_Staff(Employee_ID, Qualifications) VALUES ('587654', 'Medical License');
INSERT INTO Medical_Staff(Employee_ID, Qualifications) VALUES ('587655', 'Medical License');
INSERT INTO Medical_Staff(Employee_ID, Qualifications) VALUES ('587656', 'Medical License');

/*-----*/
INSERT INTO Medicine(Name, Amount, Storage_Conditions, Expiration_Date, Date_Of_Purchase, Manufacturer) VALUES('Anastrozole', '10', 'Room temp', '11/10/2025', '11/10/2019','Jansen');
INSERT INTO Medicine(Name, Amount, Storage_Conditions, Expiration_Date, Date_Of_Purchase, Manufacturer) VALUES('Ibuprofen', '20', 'Room temp', '01/09/2025', '01/09/2019','Zole');
INSERT INTO Medicine(Name, Amount, Storage_Conditions, Expiration_Date, Date_Of_Purchase, Manufacturer) VALUES('Cetrizine', '15', 'Refrigerated', '02/10/2025', '02/10/2018','Tiom');
INSERT INTO Medicine(Name, Amount, Storage_Conditions, Expiration_Date, Date_Of_Purchase, Manufacturer) VALUES('Ninlaro', '30', 'Room temp', '10/10/2025', '10/10/2019','Jansen');

INSERT INTO Operations(Time, Location, Name) VALUES('10:00am 01/05/2018', 'S140','X-ray');
INSERT INTO Operations(Time, Location, Name) VALUES('9:00am 03/17/2018', 'S141','Soft tissue injury surgery');
INSERT INTO Operations(Time, Location, Name) VALUES('9:00am 03/17/2018', 'S142' ,'Shoulder surgery');
INSERT INTO Operations(Time, Location, Name) VALUES('9:00am 11/25/2018', 'S151','Lower-back pain surgery');
INSERT INTO Operations(Time, Location, Name) VALUES('12:00pm 01/17/2018', 'S152' ,'Achilles Tear surgery');

INSERT INTO Medical_Equipment(Equipment_ID, Name, Date_Of_Purchase, Warranty, Cost, Manufacturer) VALUES ('000001', 'X-ray machine', '01/01/2015','DE3974TH','10500','Kalare');
INSERT INTO Medical_Equipment(Equipment_ID, Name, Date_Of_Purchase, Warranty, Cost, Manufacturer) VALUES ('000002', 'Surgical table', '01/01/2015','FF3745H','9500','CMGR');
INSERT INTO Medical_Equipment(Equipment_ID, Name,  Date_Of_Purchase, Warranty, Cost, Manufacturer) VALUES ('000003', 'Lab Refrigerator', '01/01/2015','S32GT99K','9000','MedShare');
INSERT INTO Medical_Equipment(Equipment_ID, Name, Date_Of_Purchase, Warranty, Cost, Manufacturer) VALUES ('000004', 'Lab Refrigerator', '01/01/2015','S32GG89K','10500','MedShare');

INSERT INTO Medical_Equipment_Incident_History (Equipment_ID, Incident_History) VALUES ('000001', 'Repaired 08/26/19');
INSERT INTO Medical_Equipment_Incident_History (Equipment_ID, Incident_History) VALUES ('000002', 'Broke 01/12/19');
INSERT INTO Medical_Equipment_Incident_History (Equipment_ID, Incident_History) VALUES ('000003', 'Repaired 05/07/18');
INSERT INTO Medical_Equipment_Incident_History (Equipment_ID, Incident_History) VALUES ('000004', 'No incidents');

INSERT INTO Current_Treatment(Employee_ID, Name, Patient_ID, Date_Started) VALUES('587654','Ibuprofen','123450','03/04/2019');
INSERT INTO Current_Treatment(Employee_ID, Name, Patient_ID, Date_Started) VALUES('587654','Anastrozole','123451','08/14/2019');
INSERT INTO Current_Treatment(Employee_ID, Name, Patient_ID, Date_Started) VALUES('587653','Ninlaro','123453','11/25/2019');

INSERT INTO Primary_Physician(Employee_ID, Patient_ID) VALUES('587654','123450');
INSERT INTO Primary_Physician(Employee_ID, Patient_ID) VALUES('587655','123454');
INSERT INTO Primary_Physician(Employee_ID, Patient_ID) VALUES('587655','123453');
INSERT INTO Primary_Physician(Employee_ID, Patient_ID) VALUES('587654','123451');

INSERT INTO Works_For(Employee_ID, Name) VALUES('587651','Pharmacy');
INSERT INTO Works_For(Employee_ID, Name) VALUES('587655','Laboratory');
INSERT INTO Works_For(Employee_ID, Name) VALUES('587654','Intensive Care Unit');

INSERT INTO Head_Of(Employee_ID, Name) VALUES('587651','Pharmacy');
INSERT INTO Head_Of(Employee_ID, Name) VALUES('587650','Neurology');
INSERT INTO Head_Of(Employee_ID, Name) VALUES('587654','Intensive Care Unit');

INSERT INTO Scheduled_For(Employee_ID, Equipment_ID, Patient_ID, Time, Location) VALUES('587650','000002','123453','9:00am 03/17/2018', 'S142');
INSERT INTO Scheduled_For(Employee_ID, Equipment_ID, Patient_ID, Time, Location) VALUES('587652','000002','123453','9:00am 03/17/2018', 'S142');
INSERT INTO Scheduled_For(Employee_ID, Equipment_ID, Patient_ID, Time, Location) VALUES('587650','000002','123451','12:00pm 01/17/2018', 'S152');
