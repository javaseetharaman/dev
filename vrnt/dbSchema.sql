-- Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    adhaar_number VARCHAR(20),
    mobile_number VARCHAR(20),
    email VARCHAR(100),
    dob DATE,
    photo VARCHAR(255),
    address VARCHAR(255),
    is_distance_learner BOOLEAN,
    branch_id INT,
    caste_id INT,
    mother_tongue_id INT,
    qualification_id INT
);

-- Roles table
CREATE TABLE Roles (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(50)
);

-- UserRoles table
CREATE TABLE UserRoles (
    user_role_id INT PRIMARY KEY,
    user_id INT,
    role_id INT,
    is_active BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);

-- Schools table
CREATE TABLE Schools (
    school_id INT PRIMARY KEY,
    school_name VARCHAR(100),
    address VARCHAR(255)
);

-- UserSchools table
CREATE TABLE UserSchools (
    user_school_id INT PRIMARY KEY,
    user_id INT,
    school_id INT,
    date_of_joining DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

-- Exams table
CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    exam_type VARCHAR(50),
    exam_level VARCHAR(50),
    exam_year INT,
    repeat_exam BOOLEAN
);

-- UserExams table
CREATE TABLE UserExams (
    user_exam_id INT PRIMARY KEY,
    user_id INT,
    exam_id INT,
    teacher_certified BOOLEAN,
    examiner_certified BOOLEAN,
    mother_tongue_certified BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);

-- ExamSubjects table
CREATE TABLE ExamSubjects (
    exam_subject_id INT PRIMARY KEY,
    exam_id INT,
    subject_name VARCHAR(50),
    number_of_chapters INT,
    specific_chapter_numbers VARCHAR(100),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);

-- Qualifications table
CREATE TABLE Qualifications (
    qualification_id INT PRIMARY KEY,
    qualification_name VARCHAR(100),
    board_qualified BOOLEAN,
    board_details VARCHAR(255),
    sanskrit_exam_qualified BOOLEAN
);

-- BankDetails table
CREATE TABLE BankDetails (
    bank_id INT PRIMARY KEY,
    user_id INT,
    bank_name VARCHAR(100),
    branch_name VARCHAR(100),
    account_number VARCHAR(50),
    ifsc_code VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Branch table
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100)
);

-- Caste table
CREATE TABLE Caste (
    caste_id INT PRIMARY KEY,
    caste_name VARCHAR(100)
);

-- Language table
CREATE TABLE Language (
    language_id INT PRIMARY KEY,
    language_name VARCHAR(100)
);
