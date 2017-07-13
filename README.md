The Director of the University Accommodation Office requires you to design a database
to assist with the administration of the office. The requirements collection and analysis
phase of the database design process has provided the following data requirements
specification for the University Accommodation Office database followed by examples of
query transactions that should be supported by the database.
B.1.1 Data Requirements
Students
The data stored on each full-time student includes: the matriculation number, name (first
and last name), home address (street, city, postcode), date of birth, sex, category of student
(for example, first year undergraduate, postgraduate), nationality, smoker (yes or no),
B.1
1256
|
Appendix B z Other Case Studies
special needs, any additional comments, current status (placed/waiting), and what course
the student is studying on.
The student information stored relates to those currently renting a room and those on
the waiting list. Students may rent a room in a hall of residence or student flat.
When a student joins the University, he or she is assigned to a member of staff who
acts as his or her Advisor of Studies. The Advisor of Studies is responsible for monitoring
the student’s welfare and academic progression throughout his or her time at University.
The data held on a student’s Advisor includes full name, position, name of department,
internal telephone number, and room number.
Halls of residence
Each hall of residence has a name, address, telephone number, and a hall manager who
supervises the operation of the hall. The halls provide only single rooms, which have a
room number, place number, and monthly rent rate.
The place number uniquely identifies each room in all halls controlled by the Accom-
modation Office and is used when renting a room to a student.
Student flats
The Accommodation Office also offers student flats. These flats are fully furnished and
provide single-room accommodation for groups of three, four, or five students. The
information held on student flats includes a flat number, address, and the number of single
bedrooms available in each flat. The flat number uniquely identifies each flat.
Each bedroom in a flat has a monthly rent rate, room number, and a place number.
The place number uniquely identifies each room available in all student flats and is used
when renting a room to a student.
Leases
A student may rent a room in a hall or student flat for various periods of time. New lease
agreements are negotiated at the start of each academic year with a minimum rental period
of one semester and a maximum rental period of one year, which includes Semesters 1, 2,
and the Summer Semester. Each individual lease agreement between a student and the
Accommodation Office is uniquely identified using a lease number.
The data stored on each lease includes the lease number, duration of the lease (given as
semesters), name and matriculation number of the student, place number, room number,
address details of the hall or student flat, and the date the student wishes to enter the room,
and the date the student wishes to leave the room (if known).
Invoices
At the start of each semester each student is sent an invoice for the following rental period.
Each invoice has a unique invoice number.
B.1 The University Accommodation Office Case Study
|
1257
The data stored on each invoice includes the invoice number, lease number, semester,
payment due, student’s full name and matriculation number, place number, room number,
and the address of the hall or flat. Additional data is also held on the payment of the
invoice and includes the date the invoice was paid, the method of payment (cheque, cash,
Visa, etc.), the date the first and second reminder is sent (if necessary).
Student flat inspections
Student flats are inspected by staff on a regular basis to ensure that the accommodation is
well maintained. The information recorded for each inspection is the name of the member
of staff who carried out the inspection, the date of inspection, an indication of whether
the property was found to be in a satisfactory condition (yes or no), and any additional
comments.
Accommodation staff
Some information is also held on members of staff of the Accommodation Office and
includes the staff number, name (first and last name), home address (street, city, postcode),
date of birth, sex, position (for example, Hall Manager, Administrative Assistant, Cleaner)
and location (for example, Accommodation Office or Hall).
Courses
The Accommodation Office also stores a limited amount of information on the courses run
by the University including the course number, course title (including year), course leader,
internal telephone number, room number, and department name. Each student is associated
with a single course.
Next-of-kin
Whenever possible, information on a student’s next-of-kin is stored which includes the
name, relationship, address (street, city, postcode), and contact telephone number.
Query Transactions (Sample)
Listed below are some examples of query transactions that should be supported by the
University Accommodation Office database system.
(a) Present a report listing the Manager’s name and telephone number for each hall of
residence.
(b) Present a report listing the names and matriculation numbers of students with the
details of their lease agreements.
(c) Display the details of lease agreements that include the Summer Semester.
(d) Display the details of the total rent paid by a given student.
B.1.2
1258
|
Appendix B z Other Case Studies
(e) Present a report on students that have not paid their invoices by a given date.
(f) Display the details of flat inspections where the property was found to be in an
unsatisfactory condition.
(g) Present a report of the names and matriculation numbers of students with their room
number and place number in a particular hall of residence.
(h) Present a report listing the details of all students currently on the waiting list for
accommodation, that is, not placed.
(i) Display the total number of students in each student category.
(j) Present a report of the names and matriculation numbers for all students who have not
supplied details of their next-of-kin.
(k) Display the name and internal telephone number of the Advisor of Studies for a par-
ticular student.
(l) Display the minimum, maximum, and average monthly rent for rooms in halls of
residence.
(m) Display the total number of places in each hall of residence.
(n) Display the staff number, name, age, and current location of all members of the
accommodation staff who are over 60 years old today.