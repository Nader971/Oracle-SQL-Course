/* 

01- Show first name, last name, and gender of patients whose gender is 'M'
  select first_name, last_name, gender
  from patients
  where gender is 'M';

02- Show first name and last name of patients who does not have allergies. (null)
  SELECT first_name, last_name FROM patients
  where allergies is null;

03- Show first name of patients that start with the letter 'C'
  SELECT first_name FROM patients
  where first_name like 'C%';

04-Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
  select first_name, last_name FROM patients
  WHERE weight between 100 AND 120;

5- Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
  UPDATE patients SET allergies = 'NKA'
  WHERE allergies IS NULL;

06- Show first name and last name concatinated into one column to show their full name.
  select first_name||' '||last_name as "Full name" FROM patients;

07-  Show first name, last name, and the full province name of each patient.
Example: 'Ontario' instead of 'ON'

  select first_name, last_name, province_name from patients
  JOIN  province_names
  on province_names.province_id = patients.province_id;

08- Show how many patients have a birth_date with 2010 as the birth year.
  select count(*) aS total_patients from patients 
  where year(birth_date) = 2010;

09- Show the first_name, last_name, and height of the patient with the greatest height.
  select first_name, last_name, MAX(height) from patients;

10- Show all columns for patients who have one of the following patient_ids:
1,45,534,879,1000

  SELECT * FROM patients
  WHERE patient_id IN (1, 45, 534, 879, 1000);

11- Show the total number of admissions
  SELECT count(*) FROM admissions;

12- Show all the columns from admissions where the patient was admitted and discharged on the same day.
  SELECT * FROM admissions
  WHERE admission_date = discharge_date;

13- Show the patient id and the total number of admissions for patient_id 579.
  select patient_id, count(*) from admissions 
  where patient_id = 579;

14- Based on the cities that our patients live in, show unique cities that are in province_id 'NS'?
  select distinct city from patients 
  where province_id = 'NS';

15- Write a query to find the first_name, last name, and birth date of patients who has height greater than 160 and weight greater than 70
  select first_name, last_name, birth_date from patients
  where height > 160 
  and weight > 70;

16-Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'
  select first_name, last_name, allergies from patients
  where allergies is not null
  and city =  'Hamilton';

17- Show unique birth years from patients and order them by ascending.
  select distinct year(birth_date) from patients
  order by  year(birth_date) asc;

18- Show unique first names from the patients table which only occurs once in the list.
For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.
  SELECT first_name
  FROM patients
  GROUP BY first_name
  HAVING COUNT(first_name) = 1;

19- Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
  select patient_id, first_name from patients
  where len(first_name) >= 6
  and first_name like 'S%%%%%'
  and first_name like '%%%%%S';

20- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
Primary diagnosis is stored in the admissions table.
  SELECT patients.patient_id, patients.first_name, patients.last_name from patients join admissions
  ON admissions.patient_id = patients.patient_id
  WHERE diagnosis = 'Dementia';

21- Display every patient's first_name.
Order the list by the length of each name and then by alphabetically
  SELECT first_name FROM patients
  order by LEN(first_name), first_name ASC;


22- Show the total amount of male patients and the total amount of female patients in the patients table.
Display the two results in the same row.
  SELECT SUM(gender = 'M') AS MALE_COUNT ,SUM(gender = 'F') AS FEMALE_COUNT from patients;
  
23- Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.
  SELECT first_name, last_name, allergies from patients
  where allergies =  'Penicillin' or allergies =  'Morphine'
  order by allergies, first_name, last_name asc;
