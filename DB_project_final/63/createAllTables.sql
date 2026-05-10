USE University_HR_ManagementSystem;
GO

-- =============================================
-- Stored Procedure: createAllTables
-- Creates all tables for University_HR_ManagementSystem
-- =============================================
CREATE OR ALTER PROCEDURE createAllTables
AS
BEGIN

    -- Department
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Department' AND xtype='U')
    CREATE TABLE Department (
        name                VARCHAR(100) PRIMARY KEY,
        building_location   VARCHAR(50)
    );

    -- Role
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Role' AND xtype='U')
    CREATE TABLE Role (
        role_name           VARCHAR(100) PRIMARY KEY,
        title               VARCHAR(100),
        description         VARCHAR(255),
        rank                INT,
        base_salary         DECIMAL(10,2),
        percentage_YOE      DECIMAL(5,2),
        percentage_overtime DECIMAL(5,2),
        annual_balance      INT,
        accidental_balance  INT
    );

    -- Employee
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Employee' AND xtype='U')
    CREATE TABLE Employee (
        emp_ID                  INT PRIMARY KEY IDENTITY(1,1),
        first_name              VARCHAR(100),
        last_name               VARCHAR(100),
        email                   VARCHAR(150) UNIQUE,
        password                VARCHAR(255),
        address                 VARCHAR(255),
        gender                  CHAR(1),
        official_day_off        VARCHAR(20),
        years_of_experience     INT,
        national_ID             VARCHAR(20) UNIQUE,
        employment_status       VARCHAR(50),   -- active, onleave, resigned, notice_period
        type_of_contract        VARCHAR(50),   -- full_time, part_time
        emergency_contact_name  VARCHAR(150),
        emergency_contact_phone VARCHAR(20),
        annual_balance          INT,
        accidental_balance      INT,
        hire_date               DATE,
        last_working_date       DATE NULL,
        dept_name               VARCHAR(100) FOREIGN KEY REFERENCES Department(name)
    );

    -- Employee_Role
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Employee_Role' AND xtype='U')
    CREATE TABLE Employee_Role (
        emp_ID      INT FOREIGN KEY REFERENCES Employee(emp_ID),
        role_name   VARCHAR(100) FOREIGN KEY REFERENCES Role(role_name),
        PRIMARY KEY (emp_ID, role_name)
    );

    -- Role_existsIn_Department
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Role_existsIn_Department' AND xtype='U')
    CREATE TABLE Role_existsIn_Department (
        department_name VARCHAR(100) FOREIGN KEY REFERENCES Department(name),
        Role_name       VARCHAR(100) FOREIGN KEY REFERENCES Role(role_name),
        PRIMARY KEY (department_name, Role_name)
    );

    -- Holiday
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Holiday' AND xtype='U')
    CREATE TABLE Holiday (
        holiday_ID      INT PRIMARY KEY IDENTITY(1,1),
        holiday_name    VARCHAR(150),
        start_date      DATE,
        end_date        DATE
    );

    -- Leave
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Leave' AND xtype='U')
    CREATE TABLE Leave (
        request_ID              INT PRIMARY KEY IDENTITY(1,1),
        date_of_request         DATE,
        start_date              DATE,
        end_date                DATE,
        final_approval_status   VARCHAR(50)   -- approved, pending, rejected
    );

    -- Medical_Leave
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Medical_Leave' AND xtype='U')
    CREATE TABLE Medical_Leave (
        request_ID          INT PRIMARY KEY FOREIGN KEY REFERENCES Leave(request_ID),
        insurance_status    BIT,
        disability_details  VARCHAR(255),
        type                VARCHAR(50),
        Emp_ID              INT FOREIGN KEY REFERENCES Employee(emp_ID)
    );

    -- Annual_Leave
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Annual_Leave' AND xtype='U')
    CREATE TABLE Annual_Leave (
        request_ID      INT PRIMARY KEY FOREIGN KEY REFERENCES Leave(request_ID),
        emp_ID          INT FOREIGN KEY REFERENCES Employee(emp_ID),
        replacement_emp INT NULL FOREIGN KEY REFERENCES Employee(emp_ID)
    );

    -- Accidental_Leave
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Accidental_Leave' AND xtype='U')
    CREATE TABLE Accidental_Leave (
        request_ID  INT PRIMARY KEY FOREIGN KEY REFERENCES Leave(request_ID),
        emp_ID      INT FOREIGN KEY REFERENCES Employee(emp_ID)
    );

    -- Unpaid_Leave
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Unpaid_Leave' AND xtype='U')
    CREATE TABLE Unpaid_Leave (
        request_ID  INT PRIMARY KEY FOREIGN KEY REFERENCES Leave(request_ID),
        Emp_ID      INT FOREIGN KEY REFERENCES Employee(emp_ID)
    );

    -- Compensation_Leave
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Compensation_Leave' AND xtype='U')
    CREATE TABLE Compensation_Leave (
        request_ID              INT PRIMARY KEY FOREIGN KEY REFERENCES Leave(request_ID),
        reason                  VARCHAR(255),
        date_of_original_workday DATE,
        emp_ID                  INT FOREIGN KEY REFERENCES Employee(emp_ID),
        replacement_emp         INT NULL FOREIGN KEY REFERENCES Employee(emp_ID)
    );

    -- Employee_Approve_Leave
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Employee_Approve_Leave' AND xtype='U')
    CREATE TABLE Employee_Approve_Leave (
        Emp1_ID     INT FOREIGN KEY REFERENCES Employee(emp_ID),
        Leave_ID    INT FOREIGN KEY REFERENCES Leave(request_ID),
        status      VARCHAR(50),
        PRIMARY KEY (Emp1_ID, Leave_ID)
    );

    -- Document
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Document' AND xtype='U')
    CREATE TABLE Document (
        doc_ID          INT PRIMARY KEY IDENTITY(1,1),
        type            VARCHAR(100),
        description     VARCHAR(255),
        file_name       VARCHAR(255),
        creation_date   DATE,
        expiry_date     DATE,
        status          VARCHAR(50),
        emp_ID          INT FOREIGN KEY REFERENCES Employee(emp_ID),
        medical_ID      INT NULL FOREIGN KEY REFERENCES Medical_Leave(request_ID),
        unpaid_ID       INT NULL FOREIGN KEY REFERENCES Unpaid_Leave(request_ID)
    );

END;
GO

-- =============================================
-- Stored Procedure: Create_Holiday
-- (called in team.sql after createAllTables)
-- =============================================
CREATE OR ALTER PROCEDURE Create_Holiday
AS
BEGIN
    -- Holiday table already created in createAllTables
    -- This proc exists for compatibility with team.sql
    PRINT 'Holiday table ready.';
END;
GO

-- =============================================
-- Stored Procedure: Add_Holiday
-- =============================================
CREATE OR ALTER PROCEDURE Add_Holiday
    @holiday_name   VARCHAR(150),
    @start_date     DATE,
    @end_date       DATE
AS
BEGIN
    INSERT INTO Holiday (holiday_name, start_date, end_date)
    VALUES (@holiday_name, @start_date, @end_date);
END;
GO

-- =============================================
-- Views referenced in the C# application
-- =============================================

-- All employee profiles with role and department
CREATE OR ALTER VIEW allEmployeeProfiles AS
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    e.email,
    e.address,
    e.gender,
    e.official_day_off,
    e.years_of_experience,
    e.national_ID,
    e.employment_status,
    e.type_of_contract,
    e.emergency_contact_name,
    e.emergency_contact_phone,
    e.annual_balance,
    e.accidental_balance,
    e.hire_date,
    e.last_working_date,
    e.dept_name,
    er.role_name,
    r.title,
    r.base_salary
FROM Employee e
LEFT JOIN Employee_Role er ON e.emp_ID = er.emp_ID
LEFT JOIN Role r ON er.role_name = r.role_name;
GO

-- Employees with no department
CREATE OR ALTER VIEW NoEmployeeDept AS
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    e.email,
    e.dept_name
FROM Employee e
WHERE e.dept_name IS NULL;
GO

-- All employee attendance (leave records)
CREATE OR ALTER VIEW allEmployeeAttendance AS
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    l.request_ID,
    l.date_of_request,
    l.start_date,
    l.end_date,
    l.final_approval_status
FROM Employee e
JOIN Annual_Leave al ON e.emp_ID = al.emp_ID
JOIN Leave l ON al.request_ID = l.request_ID
UNION
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    l.request_ID,
    l.date_of_request,
    l.start_date,
    l.end_date,
    l.final_approval_status
FROM Employee e
JOIN Medical_Leave ml ON e.emp_ID = ml.Emp_ID
JOIN Leave l ON ml.request_ID = l.request_ID
UNION
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    l.request_ID,
    l.date_of_request,
    l.start_date,
    l.end_date,
    l.final_approval_status
FROM Employee e
JOIN Accidental_Leave acl ON e.emp_ID = acl.emp_ID
JOIN Leave l ON acl.request_ID = l.request_ID
UNION
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    l.request_ID,
    l.date_of_request,
    l.start_date,
    l.end_date,
    l.final_approval_status
FROM Employee e
JOIN Unpaid_Leave ul ON e.emp_ID = ul.Emp_ID
JOIN Leave l ON ul.request_ID = l.request_ID;
GO

-- All performance (role rank per employee)
CREATE OR ALTER VIEW allPerformance AS
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    e.dept_name,
    r.role_name,
    r.rank,
    r.base_salary,
    r.percentage_YOE,
    e.years_of_experience
FROM Employee e
JOIN Employee_Role er ON e.emp_ID = er.emp_ID
JOIN Role r ON er.role_name = r.role_name;
GO

-- Rejected medical leaves
CREATE OR ALTER VIEW allRejectedMedicals AS
SELECT
    e.emp_ID,
    e.first_name,
    e.last_name,
    ml.request_ID,
    ml.type,
    ml.disability_details,
    l.start_date,
    l.end_date,
    l.final_approval_status
FROM Medical_Leave ml
JOIN Leave l ON ml.request_ID = l.request_ID
JOIN Employee e ON ml.Emp_ID = e.emp_ID
WHERE l.final_approval_status = 'rejected';
GO