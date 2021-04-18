---- Create DB & TBL (Form Login) ----

1. create database DbBejalarAspx
2. use DbBelajarAspx "Ada di Combobox Sebelah Kiri"
3. create table tblUser
(
idUser int primary key identity,
Username varchar(20),
Password varchar(20),
NamaLengkap varchar(20)
)
4. select * from sys.tables
5. select * from tblUser
insert TblUser values('Admin', '1234', 'Administrator') "Bisa ber x2"
6. Parse & Execute
7. Jika database sudah berhasil dibuat, silahkan koneksikan database & tabel ke IDE
8. Panggil qwery ke dalam SQLConn ("Select * from tblUser where username "'+username+'" and password = "'+password+'"")

---- Create DB & TBL (Form Home Page) ----

1. use DbBelajarAspx "Ada di Combobox Sebelah Kiri"
2. create table TblBarang
(
Kodebarang int primary key identity,
NamaBarang varchar(20),
Satuan varchar(10),
Kategory varchar(10)
)
4. select * from tblbarang
5. insert into TblBarang values('Monitor', 'Pcs', 'Hardware') "Bisa ber x2"
6. Parse & Execute
7. Jika database sudah berhasil dibuat, silahkan koneksikan databse & tabel ke IDE
8. Panggil qwery ke dalam SQLConn ("Select * from tblbarang order by Kodebarang asc")

---- Selesai ----

- Dibuat oleh	: Rifki Ramadhan
- IG		: https://www.instagram.com/rifkiromdons
- Whatsapp	: +6282122116992

---- Terimakasih ----