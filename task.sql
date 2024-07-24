-- Create database
CREATE DATABASE SchoolDB;
USE SchoolDB;

-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) UNIQUE NOT NULL
);

-- Create enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);

-- Insert data into students table
INSERT INTO students (name, age, email) VALUES
('Alice Johnson', 20, 'alice@example.com'),
('Bob Smith', 22, 'bob@example.com'),
('Charlie Brown', 21, 'charlie@example.com'),
('Diana Ross', 23, 'diana@example.com'),
('Ethan Hunt', 19, 'ethan@example.com');

-- Insert data into courses table
INSERT INTO courses (course_name, course_code) VALUES
('Introduction to Computer Science', 'CS101'),
('Calculus I', 'MATH101'),
('Physics I', 'PHY101'),
('Introduction to Psychology', 'PSY101');

-- Insert data into enrollments table
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-01-10'),
(1, 2, '2024-01-12'),
(2, 1, '2024-01-11'),
(3, 3, '2024-01-13'),
(4, 4, '2024-01-14'),
(5, 2, '2024-01-15'),
(5, 3, '2024-01-16');
