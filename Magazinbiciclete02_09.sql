create database MagazinBiciclete;
use MagazinBiciclete;
create table sales
(
    productId int primary key, 
    product_name varchar(20),
    colour varchar(20),
    safetyStockLevel int,
    sellStartDate date,
    standardCost int,
    List_price int
    );
create table orders
(
    sales_OrderId int, 
    order_quantity int,
    productId int,
    CarrierTrackingNumber varchar (20)
    );
desc sales;
insert into sales /* introducere valori in tabela sales*/
(productId, product_name, colour, safetyStockLevel, sellStartDate, standardCost, List_price)
values (514,"LL Mountain Seat Assembly", "NULL", 500, "2008-04-30", 99, 133),
(515,"ML Mountain Seat Assembly", "NULL", 500, "2008-04-30", 109, 147),
(516,"HL Mountain Seat Assembly", "NULL", 500, "2008-04-30", 146, 197),
(517,"LL Road Seat Assembly", "NULL", 500, "2008-04-30", 99, 103),
(518,"ML Road Seat Assembly", "NULL", 500, "2008-04-30", 109, 147),
(519,"HL Road Seat Assembly", "NULL", 500, "2008-04-30", 146, 197),
(520,"LL Touring Seat Assembly", "NULL", 500, "2008-04-30", 99, 133),
(521,"ML Touring Seat Assembly", "NULL", 500, "2008-04-30", 109, 147),
(522,"HL Touring Seat Assembly", "NULL", 500, "2008-04-30", 146, 197),
(680,"HL Road Frame - Black, 58", "Black", 500, "2008-04-30", 1059, 1432),
(706,"HL Road Frame - Red, 58", "Red", 500, "2008-04-30", 1059, 1432),
(707,"Sport-100 Helmet, Red", "Red", 4, "2011-05-31", 13, 35),
(708,"Sport-100 Helmet, Black", "Black", 4, "2011-05-31", 13, 35),
(709,"Mountain Bike Socks, M", "White", 4, "2011-05-31", 3, 10),
(710,"Mountain Bike Socks, L", "White", 4, "2011-05-31", 3, 10),
(712,"AWC Logo Cap", "Multi", 4, "2011-05-31", 7, 9),
(713,"Long-Sleeve Logo Jersey, S", "Multi", 4, "2011-05-31", 38, 50),
(714,"Long-Sleeve Logo Jersey, M", "Multi", 4, "2011-05-31", 7, 9),
(715,"Long-Sleeve Logo Jersey, L", "Multi", 4, "2011-05-31", 7, 9),
(716,"Long-Sleeve Logo Jersey, XL", "Multi", 4, "2011-05-31", 7, 9),
(717,"HL Road Frame - Red, 62", "Red", 500, "2011-05-31", 869, 1432),
(718,"HL Road Frame - Red, 44", "Red", 500, "2011-05-31", 869, 1432),
(719,"HL Road Frame - Red, 48", "Red", 500, "2011-05-31", 869, 1432),
(720,"HL Road Frame - Red, 52", "Red", 500, "2011-05-31", 869, 1432),
(721,"HL Road Frame - Red, 56", "Red", 500, "2011-05-31", 869, 1432);
alter table sales modify product_name varchar(40);
select * from sales; /* vizualizarea tabelei*/
desc orders;
alter table orders rename SalesOrderDetail; /* redenumire tabela*/
drop table salesorderdetail; /* stergerea tabelei salesorderdetail din baza de date clienti*/
use magazinbiciclete; /* folosirea bazei de date sales*/
drop table salesOrdersDetail;
create table salesOrdersDetail 
(
    sales_OrderId int not null, 
    order_quantity int,
    productId int,
    CarrierTrackingNumber varchar (20),
    constraint fk_productId foreign key (productId) references sales (productId)
    );
insert into salesordersdetail /* introducere valori in tabela salesordersdetail*/
(sales_OrderId, order_quantity, productId, CarrierTrackingNumber)
values (43665, 1, 707, "19F0-4638-8E"),
(43668, 2, 707, "365D-4C9A-BE"),
(43673, 4, 707, "260F-4DCF-A1"),
(43680, 4, 707, "FF1F-4DD0-98"), 
(43681, 1, 707, "6D51-449D-B3"), 
(43661, 5, 708, "4E0A-4F89-AE"), 
(43671, 1, 708, "DFD9-41B7-94"), 
(43675, 1, 708, "5069-4470-BE"),
(43677, 2, 708, "8E3A-4564-99"),
(43678, 4, 708, "FBD8-4CE4-8B"),
(43680, 2, 708, "FF1F-4DD0-98"),
(43681, 2, 708, "6D51-449D-B3"),
(43683, 1, 708, "2299-44F7-95"),
(43659, 6, 708, "4911-403C-98"),
(43665, 6, 709, "19F0-4638-8E"),
(43670, 2, 709, "F101-4649-85"),
(43672, 6, 709, "F4B5-48D0-BA"),
(43676, 4, 709, "11BA-4D19-B7"),
(43683, 6, 709, "2299-44F7-95"),
(43693, 6, 709, "EC62-4BB3-9B"),
(43695, 2, 709, "A89C-4D25-B9"),
(43843, 2, 709, "AEB6-4356-80"),
(43856, 2, 709, "745E-4F74-BC"),
(43862, 4, 709, "68A2-4B5C-A7"),
(43866, 2, 709, "B6E8-4721-85"),
(43867, 2, 709, "061F-4449-BE"),
(43875, 2, 709, "CE1F-4E31-89"),
(43877, 5, 709, "4ECF-42F2-A7"),
(43881, 21, 709, "89D3-483D-8F"),
(43667, 3, 710, "4DFB-4B10-A6"),
(43670, 1, 710, "F101-4649-85"),
(43676, 1, 710, "11BA-4D19-B7"),
(43885, 4, 710, "190F-4A02-89"),
(43891, 2, 710, "1094-43CB-B1"),
(43894, 3, 710, "7DF2-4E54-B0"),
(43900, 4, 710, "1593-4BBA-9B"),
(44075, 1, 710, "2920-4332-89"),
(44105, 2, 710, "04AE-4901-90"),
(44126, 3, 710, "0FC0-4BE3-AF"),
(44285, 6, 710, "33BA-457C-B7"),
(44297, 3, 710, "12D6-4286-A3"),
(46088, 1, 710, "9E24-49CE-A7"),
(46102, 3, 710, "ADBC-4E22-85"),
(46323, 2, 710, "3AF8-4F1A-97"),
(46332, 1, 710, "E23A-485D-A3"),
(46365, 1, 710, "BFDB-4B9A-83");
desc salesordersdetail;
delete from salesordersdetail where sales_OrderId = 46365; /* stergere rand din tabela*/
create table Delivery 
(
    productId int not null,
    CarrierTrackingNumber varchar (20),
    statusDelivery varchar(3)
	);
insert into Delivery /* introducere valori in tabela delivery*/
(productId, CarrierTrackingNumber, statusDelivery)
values
(707, "19F0-4638-8E", "no"),
(707, "365D-4C9A-BE", "yes"),
(707, "260F-4DCF-A1", "no"),
(707, "FF1F-4DD0-98", "yes"), 
(707, "6D51-449D-B3", "yes"), 
(708, "4E0A-4F89-AE", "no"), 
(708, "DFD9-41B7-94", "yes"), 
(708, "5069-4470-BE", "yes"),
(708, "8E3A-4564-99", "yes"),
(708, "FBD8-4CE4-8B", "no"),
(708, "FF1F-4DD0-98", "yes"),
(708, "6D51-449D-B3", "yes"),
(708, "2299-44F7-95", "yes"),
(708, "4911-403C-98", "yes"),
(709, "19F0-4638-8E", "yes"),
(709, "F101-4649-85", "np"),
(709, "F4B5-48D0-BA", "yes"),
(709, "11BA-4D19-B7", "no"),
(709, "2299-44F7-95", "yes"),
(709, "EC62-4BB3-9B", "no"),
(709, "A89C-4D25-B9", "yes"),
(709, "AEB6-4356-80", "yes"),
(709, "745E-4F74-BC", "yes"),
(709, "68A2-4B5C-A7", "no"),
(709, "B6E8-4721-85", "yes"),
(709, "061F-4449-BE", "yes"),
(709, "CE1F-4E31-89", "yes"),
(709, "4ECF-42F2-A7", "no"),
(709, "89D3-483D-8F", "yes"),
(710, "4DFB-4B10-A6", "yes"),
(710, "F101-4649-85", "yes"),
(710, "11BA-4D19-B7","no"),
(710, "190F-4A02-89", "yes"),
(710, "1094-43CB-B1", "no"),
(710, "7DF2-4E54-B0", "yes"),
(710, "1593-4BBA-9B", "yes"),
(710, "2920-4332-89", "yes"),
(710, "04AE-4901-90", "no"),
(710, "0FC0-4BE3-AF", "yes"),
(710, "33BA-457C-B7", "no"),
(710, "12D6-4286-A3", "yes"),
(710, "9E24-49CE-A7", "no"),
(710, "ADBC-4E22-85", "yes"),
(710, "3AF8-4F1A-97", "yes"),
(710, "E23A-485D-A3", "yes"),
(710, "BFDB-4B9A-83", "yes");
select*from delivery;
select*from salesordersdetail;
select*from sales cross join salesordersdetail; 
select*from sales left join salesordersdetail on sales.productId = salesordersdetail.productId;
select*from sales right join salesordersdetail on sales.productId = salesordersdetail.productId;
select*from sales;
select*from sales order by standardCost; /* se sorteaza implicit in ordine crescatoare*/
select*from sales order by sellStartDate desc limit 2008;
select max(sellStartDate) from sales;
select*from salesordersdetail s left join delivery d on s.sales_orderId = d.productId where d.productId is null;
select*from salesordersdetail s left join delivery d on s.sales_orderId = d.productId where statusDelivery = "no";
desc delivery;
