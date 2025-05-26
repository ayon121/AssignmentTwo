<h1>Question One : What is PostgreSQL?</h1>
<p>
PostgresSQL is a powerfull object-relational database management system. It is open source and most popular ORDBMS. It is combined with many features that safely store and scale the most complicated data workloads. <br>

PostgreSQL is designed for enterprise-level performance. Most of the cases it easy to learn PostgreSQL. Expertise in databases is certainly not needed to understand PostgreSQL. Basically it is a software that lets developers read, write, and modify the relational database. Most Beautiful thing about PostgreSQL is it supports both relational (SQL) and non-relational (JSON) . <br>

IT is a versatile and powerful database management system suitable for various applications due to its open-source nature, extensibility, and strong features. It also offers robust security features, including SSL encryption, authentication mechanisms, and fine-grained access controls. It can handle large datasets and concurrent users efficiently, making it suitable for applications with high traffic or fluctuating data processing needs. 
</p>
<hr>
<br>
<h1>Question Two : Explain the Primary Key and Foreign Key concepts in PostgreSQL?</h1>
<p>
PostgreSQL is most popular ORDBMS in the present world. It is used almost in every industry for data management. In postgreSQL key is the most important role for data management.Keys are used to ensure data integrity, uniqueness, and relationships between tables. <br>

Primary Key and Foreign Key are the most common keys that are used in PostgreSQL. Here’s a breakdown of Primary Key and Foreign Key. <br></p>



<h5>Primary Key</h5><br>
<p>
Primary Key uniquely identifies each row in a table. It ensures no duplicate records. It helps the database index and retrieve data efficiently. Primary key can be a single column or a group of columns. <br>

Example : 
</p>
<br>
<br>
<code>
CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
name TEXT
);
</code>
<br>
<br>
<h5>Foreign Key</h5><br>
<p>
Foreign key creates a relationship between two tables. It ensures referential integrity. It is a column or a group of columns in one table that references the primary key of another table. It is the most important key to maintain relation between tables and databases <br>

Example : 
</p>
<br>
<br>
<code>
CREATE TABLE grades (
grade_id SERIAL PRIMARY KEY,
student_id INT REFERENCES students(student_id),
grade TEXT
);
</code>
<br>
<br>
<p>To maintain database keys are the most important part. Clear knowledge about keys is very important for understanding PostgreSQL</p>
<br>
