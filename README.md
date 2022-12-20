## **SQL untuk Data Analyst**

SQL adalah salah satu skill yang harus dikuasai jika ingin menjadi seorang Data Analyst. SQL digunakan untuk berinteraksi dengan database. Keunggulan SQL adalah mampu memproses data dalam jumlah besar dalam waktu singkat.

**Structured Query Language (SQL)** adalah bahasa standar untuk menyimpan, memanipulasi, dan mengambil data dalam database (w3school). khususnya database dengan tipe _**Relational Database Management System (RDBMS),**_ yaitu database yang menyimpan data dalam bentuk tabular dan mempunyai hubungan antar tabel satu dengan tabel lainnya.

Materi ini telah saya rangkum dalam 3 tulisan:
1. [Dasar-Dasar SQL untuk Data Analyst](https://ahmadilhamhabibi.medium.com/dasar-dasar-sql-untuk-data-analyst-a7682d28ab67)
2. [SQL Queries — Part I](https://ahmadilhamhabibi.medium.com/sql-queries-part-i-3bdace79030b)
3. [SQL Queries — Part II](https://ahmadilhamhabibi.medium.com/sql-queries-part-ii-ed090113b83e)

### **Jenis-Jenis Perintah SQL**

Ada beberapa jenis perintah yang digunakan untuk mengakses data dalam database. Jenis perintah SQL adalah sebagai berikut

A. **DDL (Data Definition Language)**  
DDL digunakan untuk membangun kerangka database seperti tabel dan database itu sendiri. Perintah penting dalam DDL diantaranya: CREATE, ALTER, DROP

B. **DML (Data Manipulation Language)**  
DML dimanfaatkan untuk memanipulasi data dalam database. Perintah penting dalam DML diantaranya: SELECT, INSERT, UPDATE, DELETE. Seorang Data Analyst akan lebih banyak menggunakan DML daripada jenis perintah SQL lainnya.

C. **DCL (Data Control Language)**  
DCL berfungsi untuk mengontrol data dan server database. Misalnya menentukan siapa user yang dalam mengakses atau mengubah data. Perintah Penting dalam DCL adalah GRANT dan REVOKE.

Berikut penjelasan perintah-perintah SQL yang sering digunakan:

**1. CREATE**
CREATE digunakan untuk membuat database atau membuat tabel. Untuk membuat databasae perintahnya cukup sederhana yaitu:  
`CREATE DATABASE nama_database`

**2. INSERT**
INSERT efektif untuk memasukkan data dengan sedikit baris. Untuk data dalam jumlah banyak kita bisa langsung meng-upload file data kedalam tabel. Jika tidak dituliskan nama kolom secara spesifik maka data akan dimasukkan sesuai dengan urutan kolom. Mesti tidak wajib tetapi penentuan kolom dalam INSERT sangat dianjurkan. Dalam sekali eksekusi perintah INSERT, kita bisa memasukkan satu atau lebih data. Berikut contoh INSERT beberapa data sekaligus pada tabel Customer.

![Insert data ke tabel Customer](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/2.2-InsertCustomer.jpg)

**3. DELETE**
Satu lagi jenis perintah DDL yang sering digunakan adalah DELETE yang berfungsi untuk menghapus database, tabel, maupun data dalam tabel. Penggunaan perintah DELETE biasanya dikombinasikan dengan perintah yang lain, misalnya: WHERE, untuk menghapus data tertentu (tidak menghapus seluruh data).

**4. SELECT**
SELECT merupakan jenis perintah _Data Manipulation Language_  yang paling penting.  Perintah SELECT berfungsi untuk mengambil data pada tabel. SELECT selalu berpasangan dengan FROM, yang menentukan tabel mana yang akan diambil. SELECT bisa digunakan untuk mengambil seluruh data dengan memakai simbol _Asterisk (*)_ atau mengambil sebagian data dengan menentukan kolom mana saja yang akan diambil.

Perintah SQL yang paling sederhana adalah mengambil semua data pada kolom. Misalnya kita akan mengambil semua data pada kolom custome, maka syntaxnya sebagai berikut:  

    SELECT 
    FROM customer;
    
![Select seluruh kolom dari tabel customer](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/4.1-SelectAll.jpg)

Ketika ingin mengambil kolom tertentu maka harus dituliskan secara spesifik nama kolomnya. Untuk mengambil beberapa kolom harus dipisahkan dengan tanda koma (,) seperti contoh berikut:  

    SELECT customer_name, age 
    FROM customer;
![Select kolom customer-name dan age dari tabel customer](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/4.2-SelectColumn.jpg)

Ada beberapa syntax yang sering digunakan bersama dengan SELECT. Misalnya, DISTINCT yang berfungsi menampilkan data yang unik (tanpa duplikat) dari sebuah kolom, seperti fungsi _**unique**_ pada python pandas. TOP berfungsi menampilkan beberapa data teratas, seperti fungsi _**head**_ pada python pandas. LIMIT untuk membatasi data yang diambil. 

![Select distinct pada kolom region](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/4.3-SelectDistinct.jpg)

**5. WHERE**
Perintah WHERE berfungsi untuk memfilter data atau menampilkan data dengan kriteria tertentu. Misalnya ketika ingin menampilkan customer yang berusia diatas 50 tahun, namun kita hanya ingin melihat 10 data saja. Maka syntaxnya seperti berikut ini:

![Contoh query dengan where](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/5.1-WHERE.jpg)

Perintah WHERE bisa digunakan untuk memfilter data dengan semua tipe data, seperti numerik, teks, date time dan lain sebagainya. Misalnya ingin melihat customer yang berasal dari kota **New York City.**

![Query where dengan data teks](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/5.2-WHERE.jpg)

Perintah diatas hanya menampilkan _customer_name, city,_ dan _region_ yang sesuai dengan kriteria yaitu: `city = ‘New York City’`

WHERE bisa dikombinasikan dengan operator mastematika (=, >, ≥, <. ≤), BETWEEN, LIKE, IN, serta operator logikal (AND, OR). Penjelasan lebih detail mengenai Filtering pada SQL akan saya bahas pada tulisan lain.

**6. ORDER BY**
Sesuai dengan namanya, perintah ORDER BY berfungsi untuk mengurutkan data. Secara default perintah ORDER BY akan mengurutkan dari terkecil (Ascending Order). Jika ingin mengurutkan dari yang terbesar perlu menambahkan perintah DESC (Descending Order). Misalnya ketika ingin menampilkan 10 nama customer dengan usia paling tua. Maka syntaxnya seperti berikut ini:

![Menentukan customer tertua dengan ORDER BY age](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/6.1-ORDERBY.jpg)

ORDER BY juga bisa digunakan untuk data tipe teks dengan mengurutkan berdasarkan abjad A-Z (Ascending) atau Z-A (Descending). Pada contoh diatas tidak diberi keteran DESC (Descending order, Z-A), sehingga menampilkan default ORDER yaitu ASC (Ascending order, A-Z).

![Menentukan urutan customer berdasarkan nama sesuai abjad](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/Dasar-dasar%20SQL/6.2-ORDERBY.jpg)

## SQL Queries

(1) **Filtering**, yang merupakan mengembangan perintah WHERE dengan operasi matematika, operasi logikal, BETWEEN, IN, dan LIKE. 

![Mengambil data yang berusia 25 tahun saja](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/1.1-Equal.jpg)

![Pelanggan dengan usia lebih dari 50 tahun](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/1.4-GreaterThan.jpg)

![Data pelanggan dengan usia kurang dari sama dengan 20 tahun](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/1.6-GreaterThanAnEqual.jpg)

![Contoh penggunaan operator logika AND](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/2.1-AND.jpg)

![Contoh penggunaan operator logika OR](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/2.2-OR.jpg)

![Contoh penggunaan operator logika NOR](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/2.3-NOR.jpg)

![Opetaror between untuk filter usia 20–30 tahun](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/3.1-BETWEEN.jpg)

![Contoh penggunaan IN untuk mengambil data dengan tertentu](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/4.1-IN.jpg)

![Penggunaan tanda % dengan satu huruf di awal](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/5.1-LIKE.jpg)

(2) **Anggegation** yang memanfaatkan perintah COUNT, MIN, MAX, AVG, serta SUM. 

![Contoh penggunaan count](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/6.1-COUNT.jpg)

![Contoh penggunaan MIN, MAX, AVG, dan SUM](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/6.4-MIN-MAX-AVG-SUM.jpg)

(3) **Grouping** dengan memanfaatkan perintah **GROUP BY**. 

![Contoh penggunaan perintah GROUP BY](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/6.5-GROUPBY.jpg)

![Contoh penggunaan perintah HAVING](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/6.6-HAVING.jpg)

(4) **Conditional Statement** yang merupakan pengembangan perintah SELECT menggunakan syntax _CASE._ 

![Contoh penggunaan conditional statement dengan perintah case](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%20%201/7.1-CASE.jpg)

(5) **JOIN,** berfungsi untuk menggabungkan data beserta jenis-jenisnya, seperti: inner join, left join dan right join. 

![Ilustrasi JOIN](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/1.3-JOIN.jpg)

![INNER JOIN](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/1.6-Inner-Join.jpg)

![LEFT JOIN](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/1.7-Left-Join.jpg)

![RIGHT JOIN](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/1.8-Right-Join.jpg)

![FULL JOIN](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/1.9-Full-Join.jpg)

(6) **SUBQUERY,** merupakan query dalam query, biasanya digunakan untuk mengambil data dari tabel lainnya. 

![Contoh penggunaan subquery pada perintah select](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/2.1-Subquery-Select.jpg)

(7) **VIRTUAL TABLE,** merupakan cara untuk menyimpan atau menampilkan data dalam tabel vitual.  

![Contoh penggunaan CTE](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/3.1-CTE.jpg)

(8) **STRING FUNCTIONS** yang bisa dimanfaatkan untuk memanipulasi data teks, seperti: merapikan dan mengganti teks. 

![Length](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/4.1-Length.jpg)

![Upper-Lower](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/4.2-Upper-Lower.jpg)

![Replace](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/4.3-Replace.jpg)

![Concate](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/4.4-Concate.jpg)

![TRIM](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/4.5-Trim.jpg)

(9) **MATHEMATICAL FUNCTIONS** yang berfungsi untuk memanipulasi data numerik, misalnya pembulatan dan pemangkatan. 

![Round](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/5.1-Round.jpg)

![Power](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/5.2-Power.jpg)

(10) **DATE-TIME FUNCTIONS** yang berfungsi untuk memanipulasi data date-time, seperti mengekstrak data date-time.

![Contoh penggunaan fungsi current](https://github.com/ahmadilhamhabibi/SQL-untuk-data-analyst/blob/main/Images/SQL%20Queries%20-%20Part%202/6.1-Current.jpg)
