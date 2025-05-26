<h1>Question One : What is PostgreSQL?</h1>
<p>
PostgreSQL একটি শক্তিশালী অবজেক্ট-রিলেশনাল ডেটাবেস ম্যানেজমেন্ট সিস্টেম। এটি ওপেন সোর্স এবং সবচেয়ে জনপ্রিয় ORDBMS (Object-Relational Database Management System) গুলোর একটি। এটি জটিল ডেটা নিরাপদে সংরক্ষণ এবং স্কেল করতে সহায়তা করে। <br>

PostgreSQL ডিজাইন করা হয়েছে এন্টারপ্রাইজ-লেভেলের পারফরম্যান্সের জন্য। বেশিরভাগ ক্ষেত্রেই PostgreSQL শেখা সহজ। PostgreSQL বোঝার জন্য গভীর ডেটাবেজ জ্ঞান প্রয়োজন হয় না। মূলত এটি এমন একটি সফটওয়্যার যা ডেভেলপারদের রিলেশনাল ডেটাবেজ পড়তে, লিখতে এবং পরিবর্তন করতে সহায়তা করে। PostgreSQL-এর সবচেয়ে সুন্দর দিক হলো এটি রিলেশনাল (SQL) এবং নন-রিলেশনাল (JSON) উভয়কেই সমর্থন করে। <br>

এটি একটি শক্তিশালী ডেটাবেজ ম্যানেজমেন্ট সিস্টেম যা বিভিন্ন অ্যাপ্লিকেশনের জন্য উপযুক্ত, কারণ এটি ওপেন সোর্স, সম্প্রসারনযোগ্য এবং শক্তিশালী বৈশিষ্ট্যসমূহ রয়েছে। এটি শক্তিশালী সিকিউরিটি ফিচার সরবরাহ করে, যেমন SSL এনক্রিপশন, অথেন্টিকেশন মেকানিজম এবং সূক্ষ্মভাবে নিয়ন্ত্রিত এক্সেস কন্ট্রোল। এটি বড় ডেটাসেট এবং একসাথে অনেক ব্যবহারকারী দক্ষতার সাথে পরিচালনা করতে পারে, যার ফলে এটি হাই-ট্রাফিক বা পরিবর্তনশীল ডেটা প্রসেসিং প্রয়োজন এমন অ্যাপ্লিকেশনগুলোর জন্য আদর্শ।
</p>
<hr>
<br>




<h1>Question Two : Explain the Primary Key and Foreign Key concepts in PostgreSQL?</h1>
<p>
PostgreSQL বর্তমানে বিশ্বের সবচেয়ে জনপ্রিয় ORDBMS (Object-Relational Database Management System)। এটি প্রায় প্রতিটি শিল্পেই ডেটা ব্যবস্থাপনার জন্য ব্যবহৃত হয়। PostgreSQL-এ "Key" ডেটা ব্যবস্থাপনায় সবচেয়ে গুরুত্বপূর্ণ ভূমিকা পালন করে। Keys ব্যবহৃত হয় ডেটার স্বতন্ত্রতা এবং টেবিলগুলোর মধ্যে সম্পর্ক নিশ্চিত করার জন্য। <br>

Primary Key এবং Foreign Key হলো PostgreSQL-এ ব্যবহৃত সবচেয়ে সাধারণ এবং গুরুত্বপূর্ণ keys। নিচে Primary Key এবং Foreign Key-এর ব্যাখ্যা দেওয়া হলো। <br>
</p>

<h5>Primary Key</h5><br>
<p>
Primary Key প্রতিটি সারিকে (row) টেবিলের মধ্যে ইউনিক (অদ্বিতীয়ভাবে) চিহ্নিত করে। এটি নিশ্চিত করে যে কোনো ডুপ্লিকেট রেকর্ড থাকবে না। এটি ডেটাবেজকে ইনডেক্স এবং ডেটা দ্রুত পুনরুদ্ধার করতে সাহায্য করে। Primary Key একক কলাম বা কলামের সমষ্টি হতে পারে। <br>

উদাহরণ :
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
Foreign Key দুটি টেবিলের মধ্যে সম্পর্ক তৈরি করে। এটি রেফারেনশিয়াল ইন্টিগ্রিটি নিশ্চিত করে। এটি এমন একটি কলাম বা কলামের সমষ্টি যা অন্য একটি টেবিলের Primary Key কে রেফারেন্স করে। এটি টেবিল এবং ডেটাবেজগুলোর মধ্যে সম্পর্ক বজায় রাখার জন্য সবচেয়ে গুরুত্বপূর্ণ key। <br>

উদাহরণ :
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
<p>
ডেটাবেজ পরিচালনায় Keys সবচেয়ে গুরুত্বপূর্ণ অংশ। PostgreSQL বুঝতে হলে Keys সম্পর্কে পরিষ্কার ধারণা থাকা অত্যন্ত জরুরি।
</p>
<br>
<hr>


<h1>Question Three : What is the difference between the VARCHAR and CHAR data types?</h1>
<p>
In PostgreSQL, data types are used to define the kind of data a column can store. There are many data type in PostgreSQL. VARCHAR and CHAR are used for character type data.But there is difference between them. <br>
VARCHAR stores text up to a specified length. But CHAR always stores exactly n characters.VARCHAR only stores what is inputed. Where CHAR stores full length with spaces.<br>
Example:
</p><br>
<code>
CREATE TABLE test (
    name_v VARCHAR(5),
    name_c CHAR(5)
);

INSERT INTO test (name_v, name_c) VALUES ('abc', 'abc');

</code>
<br>
<p>Both VARCHAR and CHAR is very useful data types. But In most cases, VARCHAR is the best choice.</p>
<hr>




<h1>Question Four : How can you modify data using UPDATE statements?</h1>
<p>
In PostgreSQL UPDATE statement is used in SQL to modify existing data in a table. It is most important statement for database management. There are many ways to use UPDATE statement.<br>
There is a way to use UPDATE statement : 
</p>
<code>
    UPDATE students
    SET email = 'newemail@example.com'
    WHERE student_id = 1;
</code>
<p>We can also multiple values of a table at a time</p>
<code>
    UPDATE students
    SET name = 'Ayon', email = 'ayon@example.com'
    WHERE student_id = 2;
</code>
<p>UPDATE is most useful statement. But we have to use it carefully. Always use a WHERE clause to avoid updating all rows.</p>
<hr>


<h1>Question Five : What are the LIMIT and OFFSET clauses used for?</h1>
<p>
The LIMIT and OFFSET clauses in PostgreSQL are used to control how many rows are returned by a query and where to start from in the result set. These two are most important statements for database query. <br>

LIMIT is used to specify the maximum number of rows to return. OFFSET is used to skip a specified number of rows before starting to return rows. LIMIT and OFFSET can be used to paginate results, improving usability and performance.LIMIT also can be used for data sampling and performance optimization.
Example :
</p>
<code>
    SELECT * FROM students
    ORDER BY student_id
    LIMIT 5 OFFSET 5;
</code>
<p>In a word, LIMIT and OFFSET are used when you want to retrieve only a few records from your result of query</p>