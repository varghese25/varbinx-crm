
postgres=# CREATE DATABASE varbinx_crm;
CREATE DATABASE

postgres=# \c varbinx_crm      #*Connection**#


varbinx_crm=# 
create table cust_info (id serial primary key, Fname varchar(100), Lname varchar(100), Phone varchar(100), Email varchar(150), Address text );
CREATE TABLE
varbinx_crm=# select * from cust_info;
 id | fname | lname | phone | email | address 
----+-------+-------+-------+-------+---------


varbinx_crm=# insert into cust_info (fname, lname, phone, email, address)values('varghese','baby', 5485774624,'vbpoulose@gmail.com', '40 Vanier,guelph,On,CA'); 
INSERT 0 1



varbinx_crm=# select * from cust_info;

 id |  fname   | lname |   phone    |        email        |        address         
----+----------+-------+------------+---------------------+------------------------
  1 | varghese | baby  | 5485774624 | vbpoulose@gmail.com | 40 Vanier,guelph,On,CA
(1 row)

varbinx_crm=# alter table cust_info alter column phone TYPE varchar(30);



ALTER TABLE
varbinx_crm=# select * from cust_info;
 id |  fname   | lname |   phone    |        email        |        address         
----+----------+-------+------------+---------------------+------------------------
  1 | varghese | baby  | 5485774624 | vbpoulose@gmail.com | 40 Vanier,guelph,On,CA
(1 row)

varbinx_crm=# \d cust_info
                                    Table "public.cust_info"
 Column  |          Type          | Collation | Nullable |                Default                
---------+------------------------+-----------+----------+---------------------------------------
 id      | integer                |           | not null | nextval('cust_info_id_seq'::regclass)
 fname   | character varying(100) |           |          | 
 lname   | character varying(100) |           |          | 
 phone   | character varying(30)  |           |          | 
 email   | character varying(150) |           |          | 
 address | text                   |        
