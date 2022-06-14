/* Extract subject ID and teacher name */
select Subject_ID, Subject_Teacher from subjects;

/*Teachers who teach maths */
select distinct Subject_Teacher from subjects where Subject_Name = 'Maths';

/*Students older than 5 */
select FirstName, LastName from student where Age > 5;

/*Students older than 6 and are in class B */
select FirstName, LastName from student where Age > 6 and Class = 'B';

/*Who teaches english or history */
select distinct Subject_Teacher from subjects where Subject_Name = 'English' or Subject_Name = 'History';

/*Who doesnt teach any subjects? */
select FirstName, LastName from teachers where Teacher_Class = '';

/*Students listed alphabetically (ordered by surname here) */
select FirstName, LastName from student order by LastName, FirstName;

