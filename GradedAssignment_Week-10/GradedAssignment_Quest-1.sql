create database online_business;
use online_business;
create table supplier(
supp_id int primary key,
supp_name varchar(50) not null,
supp_city varchar(50) not null,
supp_phone varchar(50) not null
);

insert into supplier(supp_id, supp_name, supp_city, supp_phone) values(1, "Rajesh Retails", "Delhi", 1234567890);
insert into supplier(supp_id, supp_name, supp_city, supp_phone) values(2, "Appario Ltd.", "Mumbai", 2589631470);
insert into supplier(supp_id, supp_name, supp_city, supp_phone) values(3, "Knome products", "Banglore", 9785462315);
insert into supplier(supp_id, supp_name, supp_city, supp_phone) values(4, "Bansal Retails", "Kochi", 8975463285);
insert into supplier(supp_id, supp_name, supp_city, supp_phone) values(5, "Mittal Ltd.", "Lucknow", 7898456532);

create table customer(
cus_id int primary key,
cus_name varchar(20) not null,
cus_phone varchar(10) not null,
cus_city varchar(30) not null,
cus_gender char
);

insert into customer(cus_id, cus_name, cus_phone, cus_city, cus_gender) values(1, "AAKASH",9999999999, "DELHI", 'M');
insert into customer(cus_id, cus_name, cus_phone, cus_city, cus_gender) values(2, "AMAN",9785463215, "NOIDA", 'M');
insert into customer(cus_id, cus_name, cus_phone, cus_city, cus_gender) values(3, "NEHA",9999999999, "MUMBAI", 'F');
insert into customer(cus_id, cus_name, cus_phone, cus_city, cus_gender) values(4, "MEGHA",9994562399, "KOLKATA", 'F');
insert into customer(cus_id, cus_name, cus_phone, cus_city, cus_gender) values(5, "PULKIT",7895999999, "LUCKNOW", 'M');

create table category(
cat_id int primary key,
cat_name varchar(20) not null);

insert into category(cat_id, cat_name) values(1, "BOOKS");
insert into category(cat_id, cat_name) values(2, "GAMES");
insert into category(cat_id, cat_name) values(3, "GROCERIES");
insert into category(cat_id, cat_name) values(4, "ELECTRONICS");
insert into category(cat_id, cat_name) values(5, "CLOTHES");

create table product(
pro_id int primary key,
pro_name varchar(20) not null default "Dummy",
pro_desc varchar(60),
cat_id int,
foreign key(cat_id) references category(cat_id));

insert into product(pro_id, pro_name, pro_desc, cat_id) values(1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 2);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(2, "TSHIRT", "SIZE-L with Black, Blue and White variations", 5);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(3, "ROG LAPTOP", "Windows 10 with 15inch screen, i7 processor, 1TB SSD", 4);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(4, "OATS", "Hihghly Nutritious from Nestle", 3);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(5, "HARRY POTTER", "Best Collection of all time by J.K Rowling", 1);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(6, "MILK", "1L Toned Milk", 3);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(7, "Boat Earphones", "1.5Meter long Dolby Atmos", 4);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(8, "Jeans", "Stretchable Denim Jeans with various sizes and color", 5);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(9, "Project IGI", "compatible with windows 7 and above", 2);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(10, "Hoodie", "Black GUCCI for 13 yrs and above", 5);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(11, "Rich Dad Poor Dad", "Written by RObert Kiyosaki", 1);
insert into product(pro_id, pro_name, pro_desc, cat_id) values(12, "Train Your Brain", "By Shireen stephen", 1);

create table supplier_pricing(
pricing_id int primary key,
pro_id int,
supp_id int,
supp_price int default 0,
foreign key(pro_id) references product(pro_id),
foreign key(supp_id) references supplier(supp_id)
);

insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(1, 1, 2, 1500);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(2, 3, 5, 30000);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(3, 5, 1, 3000);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(4, 2, 3, 2500);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(5, 4, 1, 1000);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(6, 12, 2, 780);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(7, 12, 4, 789);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(8, 3, 1, 31000);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(9, 1, 5, 1450);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(10, 4, 2, 999);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(11, 7, 3, 549);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(12, 7, 4, 529);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(13, 6, 2, 105);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(14, 6, 1, 99);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(15, 2, 5, 2999);
insert into supplier_pricing(pricing_id, pro_id, supp_id,supp_price) values(16, 5, 2, 2999);

create table Orders(
ord_id int primary key,
ord_amount int not null,
ord_date date not null,
cus_id int,
pricing_id int,
foreign key(cus_id) references customer(cus_id),
foreign key(pricing_id) references supplier_pricing(pricing_id)
);

insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(101, 1500, "2021-10-06", 2, 1);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(102, 1000, "2021-10-12", 3, 5);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(103, 30000, "2021-09-16", 5, 2);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(104, 1500, "2021-10-05", 1, 1);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(105, 3000, "2021-08-16", 4, 3);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(106, 1450, "2021-08-18", 1, 9);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(107, 789, "2021-09-01", 3, 7);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(108, 780, "2021-09-07", 5, 6);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(109, 3000, "2021-01-10", 5, 3);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(110, 2500, "2021-09-10", 2, 4);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(111, 1000, "2021-09-15", 4, 5);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(112, 789, "2021-09-16", 4, 7);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(113, 31000, "2021-09-16", 1, 8);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(114, 1000, "2021-09-16", 3, 5);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(115, 3000, "2021-09-16", 5, 3);
insert into orders(ord_id, ord_amount, ord_date, cus_id, pricing_id) values(116, 99, "2021-09-17", 2, 14);

create table rating(
rat_id int primary key,
ord_id int,
rat_ratstars int not null,
foreign key(ord_id) references orders(ord_id)
);

insert into rating(rat_id, ord_id, rat_ratstars) values(1, 101, 4);
insert into rating(rat_id, ord_id, rat_ratstars) values(2, 102, 3);
insert into rating(rat_id, ord_id, rat_ratstars) values(3, 103, 1);
insert into rating(rat_id, ord_id, rat_ratstars) values(4, 104, 2);
insert into rating(rat_id, ord_id, rat_ratstars) values(5, 105, 4);
insert into rating(rat_id, ord_id, rat_ratstars) values(6, 106, 3);
insert into rating(rat_id, ord_id, rat_ratstars) values(7, 107, 4);
insert into rating(rat_id, ord_id, rat_ratstars) values(8, 108, 4);
insert into rating(rat_id, ord_id, rat_ratstars) values(9, 109, 3);
insert into rating(rat_id, ord_id, rat_ratstars) values(10, 110, 5);
insert into rating(rat_id, ord_id, rat_ratstars) values(11, 111, 3);
insert into rating(rat_id, ord_id, rat_ratstars) values(12, 112, 4);
insert into rating(rat_id, ord_id, rat_ratstars) values(13, 113, 2);
insert into rating(rat_id, ord_id, rat_ratstars) values(14, 114, 1);
insert into rating(rat_id, ord_id, rat_ratstars) values(15, 115, 1);
insert into rating(rat_id, ord_id, rat_ratstars) values(16, 116, 0);

-- 3RD QUESTION ANSWER
SELECT C.CUS_GENDER, COUNT(DISTINCT C.CUS_ID) AS NO_OF_CUSTOMERS 
FROM ORDERS O 
JOIN CUSTOMER C ON O.CUS_ID = C.CUS_ID 
WHERE O.ORD_AMOUNT >= 3000 
GROUP BY C.CUS_GENDER;

-- 4TH QUESTION SOLUTION 
SELECT o.*, p.PRO_NAME 
FROM orders o 
JOIN rating r ON o.ORD_ID = r.ORD_ID
JOIN supplier_pricing sp ON o.PRICING_ID = sp.PRICING_ID 
JOIN product p ON sp.PRO_ID = p.PRO_ID 
WHERE CUS_ID = 2;

-- 5TH QUESTION SOLUTION 
SELECT * FROM supplier s 
WHERE (SELECT COUNT(*) FROM supplier_pricing WHERE supp_id = s.supp_id) > 1;
 
-- 6TH QUESTION SOLUTION 
CREATE VIEW lowest_expensive_product AS 
SELECT c.cat_id, c.cat_name, MIN(sp.supp_price) AS min_price, p.pro_name 
FROM category c 
JOIN product p ON c.cat_id = p.cat_id 
JOIN supplier_pricing sp ON p.pro_id = sp.pro_id 
GROUP BY c.cat_id, c.cat_name, p.pro_name; 
SELECT * FROM lowest_expensive_product; -- Printing the table

-- 7TH QUESTION SOLUTION 
SELECT pro_id, pro_name FROM product 
WHERE EXISTS ( 
 SELECT 1 FROM orders o 
 JOIN rating r ON o.ord_id = r.ord_id
 JOIN supplier_pricing sp ON o.pricing_id = sp.pricing_id 
 WHERE o.ord_date > '2021-10-05' AND sp.pro_id = product.pro_id 
); 

-- 8TH QUESTION SOLUTION 
SELECT cus_name, cus_gender 
FROM customer 
WHERE LOWER(SUBSTR(cus_name, 1, 1)) IN ('a', 'z') 
OR LOWER(SUBSTR(cus_name, -1)) IN ('a', 'z'); 

-- 9TH QUESTION SOLUTION 
DELIMITER // 
CREATE PROCEDURE SupplierRating()
BEGIN 
 SELECT S.SUPP_ID, S.SUPP_NAME, AVG(R.RAT_RATSTARS) as 'Average Rating', 
 CASE 
 WHEN AVG(R.RAT_RATSTARS) = 5 THEN 'Excellent Service' 
 WHEN AVG(R.RAT_RATSTARS) > 4 THEN 'Good Service' 
 WHEN AVG(R.RAT_RATSTARS) > 2 THEN 'Average Service' 
 ELSE 'Poor Service' 
 END as 'Type_of_Service' 
 FROM Supplier S 
 JOIN Product P ON S.SUPP_ID = P.SUPP_ID 
 JOIN Order_ O ON P.PRO_ID = O.PRO_ID 
 JOIN Rating R ON O.ORD_ID = R.ORD_ID
 GROUP BY S.SUPP_ID, S.SUPP_NAME; 
END // 
DELIMITER ;