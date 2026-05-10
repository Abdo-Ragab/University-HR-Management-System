EXEC createAllTables;

INSERT INTO Department(name, building_location)
VALUES
('MET','C3'),
('IET','B2'),
('CS','C4'),
('HR','A1'),
('Medical','D1'),
('Math','C1'),
('Physics','C2'),
('Business','B1');

INSERT INTO Role(role_name,title,description,rank,base_salary,percentage_YOE,percentage_overtime,annual_balance,accidental_balance)
VALUES
('President','President','Head of University',1,80000,3.00,30.00,40,10),
('Vice_President','Vice President','Deputy Head',2,60000,2.50,25.00,35,10),
('Dean_MET','Dean','Dean of MET',3,45000,2.00,20.00,30,8),
('Dean_IET','Dean','Dean of IET',3,45000,2.00,20.00,30,8),
('Vice_Dean_MET','Vice Dean','Vice Dean MET',4,35000,1.80,18.00,28,7),
('Vice_Dean_IET','Vice Dean','Vice Dean IET',4,35000,1.80,18.00,28,7),
('HR_Manager','HR Manager','HR Manager',3,30000,1.50,15.00,26,6),
('HR_Representative_MET','HR Rep','HR MET',4,22000,1.20,12.00,24,6),
('HR_Representative_IET','HR Rep','HR IET',4,22000,1.20,12.00,24,6),
('Lecturer_MET','Lecturer','Lecturer MET',5,20000,1.00,10.00,22,5),
('Lecturer_IET','Lecturer','Lecturer IET',5,20000,1.00,10.00,22,5),
('TA_MET','TA','TA MET',6,12000,0.80,8.00,20,5),
('TA_IET','TA','TA IET',6,12000,0.80,8.00,20,5),
('Medical_Doctor','Doctor','Clinic Doctor',5,18000,1.00,8.00,20,5),
('Admin_Staff','Admin','Administrative Staff',6,9000,0.50,5.00,18,4);

INSERT INTO Employee(first_name,last_name,email,password,address,gender,official_day_off,years_of_experience,national_ID,employment_status,type_of_contract,emergency_contact_name,emergency_contact_phone,annual_balance,accidental_balance,hire_date,last_working_date,dept_name)
VALUES
('Omar','Hassan','omar.hassan@guc.edu.eg','Pass1234','New Cairo','M','Friday',15,'2980101123456789','active','full_time','Ali Hassan','01000000001',30,6,'2012-09-01',NULL,'MET'),
('Sara','Adel','sara.adel@guc.edu.eg','Pass1234','Heliopolis','F','Friday',12,'2910202123456789','active','full_time','Mona Adel','01000000002',30,6,'2013-09-01',NULL,'IET'),
('Khaled','Mahmoud','khaled.mahmoud@guc.edu.eg','Pass1234','Nasr City','M','Saturday',10,'2930303123456789','active','full_time','Mahmoud Ali','01000000003',28,5,'2015-02-15',NULL,'MET'),
('Nour','Youssef','nour.youssef@guc.edu.eg','Pass1234','Maadi','F','Friday',8,'2950404123456789','active','full_time','Youssef Kamal','01000000004',28,5,'2016-09-01',NULL,'IET'),
('Hany','Fouad','hany.fouad@guc.edu.eg','Pass1234','Dokki','M','Friday',6,'2960505123456789','active','full_time','Fouad Saad','01000000005',26,5,'2018-02-01',NULL,'HR'),
('Maha','Kamel','maha.kamel@guc.edu.eg','Pass1234','Zamalek','F','Friday',5,'2970606123456789','active','full_time','Kamel Ibrahim','01000000006',24,5,'2019-01-10',NULL,'HR'),
('Yara','Ibrahim','yara.ibrahim@guc.edu.eg','Pass1234','6th October','F','Friday',4,'2980707123456789','active','full_time','Ibrahim Ali','01000000007',22,4,'2020-02-20',NULL,'MET'),
('Ahmed','Samir','ahmed.samir@guc.edu.eg','Pass1234','Tagamoa','M','Saturday',3,'2990808123456789','active','full_time','Samir Nabil','01000000008',22,4,'2021-03-01',NULL,'IET'),
('Laila','Khalil','laila.khalil@guc.edu.eg','Pass1234','Helwan','F','Friday',2,'3000909123456789','active','part_time','Khalil Omar','01000000009',10,3,'2022-02-01',NULL,'MET'),
('Mostafa','Saad','mostafa.saad@guc.edu.eg','Pass1234','Giza','M','Saturday',2,'3001010123456789','active','part_time','Saad Gamal','01000000010',10,3,'2022-02-01',NULL,'IET'),
('Rana','Magdy','rana.magdy@guc.edu.eg','Pass1234','New Cairo','F','Friday',7,'2951111123456789','active','full_time','Magdy Ali','01000000011',25,5,'2017-09-01',NULL,'Medical'),
('Tamer','Hussein','tamer.hussein@guc.edu.eg','Pass1234','Nasr City','M','Friday',9,'2941212123456789','active','full_time','Hussein Fathi','01000000012',26,5,'2016-01-01',NULL,'CS'),
('Dina','Maher','dina.maher@guc.edu.eg','Pass1234','Maadi','F','Friday',5,'2970101123456790','active','full_time','Maher Samir','01000000013',24,5,'2019-09-01',NULL,'Math'),
('Karim','Nasser','karim.nasser@guc.edu.eg','Pass1234','Zayed','M','Saturday',4,'2980202123456790','active','full_time','Nasser Ali','01000000014',22,4,'2020-09-01',NULL,'Physics'),
('Mina','Fekry','mina.fekry@guc.edu.eg','Pass1234','Shorouk','M','Friday',1,'3010303123456790','active','full_time','Fekry Samir','01000000015',18,4,'2024-02-01',NULL,'Business'),
('Heba','Shawky','heba.shawky@guc.edu.eg','Pass1234','New Cairo','F','Friday',7,'2950404123456790','onleave','full_time','Shawky Ali','01000000016',20,4,'2017-02-01',NULL,'MET'),
('Walid','Ramzy','walid.ramzy@guc.edu.eg','Pass1234','Nasr City','M','Friday',11,'2920505123456790','resigned','full_time','Ramzy Ali','01000000017',0,0,'2012-02-01','2024-01-31','HR'),
('Hossam','Lotfy','hossam.lotfy@guc.edu.eg','Pass1234','Giza','M','Friday',9,'2940606123456790','notice_period','full_time','Lotfy Farid','01000000018',15,3,'2015-09-01','2025-03-01','MET'),
('Salma','Khaled','salma.khaled@guc.edu.eg','Pass1234','Maadi','F','Friday',3,'2990707123456790','active','full_time','Khaled Adel','01000000019',20,4,'2021-09-01',NULL,'IET'),
('Youssef','Gamal','youssef.gamal@guc.edu.eg','Pass1234','Tagamoa','M','Saturday',2,'3000808123456790','active','full_time','Gamal Fathy','01000000020',20,4,'2022-09-01',NULL,'CS');

INSERT INTO Employee_Role(emp_ID,role_name)
VALUES
(1,'President'),
(2,'Vice_President'),
(3,'Dean_MET'),
(4,'Dean_IET'),
(5,'HR_Manager'),
(6,'HR_Representative_MET'),
(7,'Lecturer_MET'),
(8,'Lecturer_IET'),
(9,'TA_MET'),
(10,'TA_IET'),
(11,'Medical_Doctor'),
(12,'Admin_Staff'),
(13,'Vice_Dean_MET'),
(14,'Vice_Dean_IET'),
(15,'Admin_Staff'),
(16,'TA_MET'),
(17,'HR_Representative_IET'),
(18,'Admin_Staff'),
(19,'Lecturer_IET'),
(20,'Admin_Staff');

INSERT INTO Role_existsIn_Department(department_name,Role_name)
VALUES
('MET','Dean_MET'),
('MET','Vice_Dean_MET'),
('MET','Lecturer_MET'),
('MET','TA_MET'),
('IET','Dean_IET'),
('IET','Vice_Dean_IET'),
('IET','Lecturer_IET'),
('IET','TA_IET'),
('HR','HR_Manager'),
('HR','HR_Representative_MET'),
('HR','HR_Representative_IET'),
('Medical','Medical_Doctor'),
('Business','Admin_Staff'),
('CS','Admin_Staff');

EXEC Create_Holiday;

EXEC Add_Holiday 'New Year''s Day','2025-01-01','2025-01-01';
EXEC Add_Holiday 'Revolution Day','2025-01-25','2025-01-25';
EXEC Add_Holiday 'Spring Break','2025-04-20','2025-04-24';
EXEC Add_Holiday 'Labor Day','2025-05-01','2025-05-01';
EXEC Add_Holiday 'Eid al-Fitr','2025-03-31','2025-04-03';
EXEC Add_Holiday 'Eid al-Adha','2025-06-06','2025-06-10';
EXEC Add_Holiday 'Mawlid','2025-09-05','2025-09-05';

DELETE FROM Document;
DELETE FROM Medical_Leave;
DELETE FROM Annual_Leave;
DELETE FROM Accidental_Leave;
DELETE FROM Unpaid_Leave;
DELETE FROM Compensation_Leave;
DELETE FROM Employee_Approve_Leave;
DELETE FROM Leave;

INSERT INTO Leave(date_of_request,start_date,end_date,final_approval_status)
VALUES
('2025-03-01','2025-03-10','2025-03-20','approved'),
('2025-03-05','2025-03-25','2025-04-05','approved'),
('2025-04-01','2025-04-15','2025-04-15','approved'),
('2025-04-10','2025-04-25','2025-04-27','pending'),
('2025-05-01','2025-05-10','2025-05-10','rejected'),
('2025-05-05','2025-05-20','2025-05-30','pending'),
('2025-06-01','2025-06-10','2025-06-25','pending'),
('2025-06-15','2025-06-18','2025-06-18','approved');

INSERT INTO Medical_Leave(request_ID,insurance_status,disability_details,type,Emp_ID)
VALUES
(1,1,'Knee Injury','sick',11),
(2,0,'Back pain','sick',12);

INSERT INTO Annual_Leave(request_ID,emp_ID,replacement_emp)
VALUES
(3,7,9);

INSERT INTO Accidental_Leave(request_ID,emp_ID)
VALUES
(5,19);

INSERT INTO Unpaid_Leave(request_ID,Emp_ID)
VALUES
(4,16);

INSERT INTO Compensation_Leave(request_ID,reason,date_of_original_workday,emp_ID,replacement_emp)
VALUES
(8,'Worked on day off','2025-06-07',14,4);

INSERT INTO Employee_Approve_Leave(Emp1_ID,Leave_ID,status)
VALUES
(3,1,'approved'),
(11,1,'approved'),
(3,2,'approved'),
(11,2,'approved'),
(6,3,'approved'),
(5,4,'pending'),
(4,5,'rejected'),
(1,6,'pending'),
(5,7,'pending'),
(6,8,'approved');

INSERT INTO Document(type,description,file_name,creation_date,expiry_date,status,emp_ID,medical_ID,unpaid_ID)
VALUES
('Medical_Report','Knee injury','medrep11.pdf','2025-03-02','2025-09-01','valid',11,1,NULL),
('Medical_Report','Back pain','medrep12.pdf','2025-05-06','2025-12-31','valid',12,2,NULL),
('Unpaid_Request','Unpaid justification','unpaid16.pdf','2025-03-06','2025-04-30','valid',16,NULL,4);
