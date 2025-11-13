-- Database creation--
create database Hospital;
use Hospital;
-- Table creation --
create table Patients(
    Patient_ID varchar(20),
    Patient_Name varchar(20),
    Age int,
    Gender varchar(10),
    Admission_Date datetime
);
-- Alteration in table to add new column --
alter table Patients
add DoctorAssigned varchar(50)
--alter table Patients to increase length--
alter table Patients
modify Patient_Name varchar(100)
rename table Patients to Patient_info 


