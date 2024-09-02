<h1>Database Project for **Testare manuala - Baza de date Magazin Biciclete**</h1>

The scope of this project is to use all the SQL knowledge gained throught the Software Testing course and apply them in practice.

Application under test: **https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server=ver16&tabs=ssms**

Tools used: MySQL Workbench

Database description: **O baza de date relationala stocheaza datele in tabele separate, in loc sa puna toate datele intr-un singur depozit mare.
** Baza de date folosita este a unui magazin de vanzare Biciclete
** Aceasta baze de date are ca scop generarea unor raporte cu privire la vanzarea de biciclete
<ol>
<li>Database Schema </li>
<br>
You can find below the database schema that was generated through Reverse Engineer and which contains all the tables and the relationships between them.
The tables are connected in the following way:

<ul>
  <li> **sales**  is connected with **salesodersdetail** through a **one to many** relationship which was implemented through **sales_productId** as a primary key and **salesOrdersDetail_Product_Id** as a foreign key</li>
  <li> **nume tabela 3**  is connected with **nume tabela 4** through a **tip relatie** relationship which was implemented through **nume_tabela.nume_coloana_cheie_primara** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
  <li> **nume tabela 5**  is connected with **nume tabela 6** through a **tip relatie** relationship which was implemented through **nume_tabela.nume_coloana_cheie_primara** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
  ...........
  <li> **nume tabela n**  is connected with **nume tabela n+1** through a **tip relatie** relationship which was implemented through **nume_tabela.nume_coloana_cheie_primara** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
</ul><br>

<li>Database Queries</li><br>

<ol type="a">
  <li>DDL (Data Definition Language)</li>

  The following instructions were written in the scope of CREATING the structure of the database (CREATE INSTRUCTIONS)

  **create database MagazinBiciclete**
  **create table sales**
  **create table orders**
  **create table salesOrdersDetail **
  

  After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:

  **Inserati aici toate instructiunile de ALTER pe care le-ati scris. Incercati sa includeti instructiuni cat mai variate cum ar fi:**
 **- alter table sales modify product_name varchar(40)**
 **- alter table orders rename SalesOrderDetail**
 **- alter table salesordersdetail drop primary key**
 
  
  <li>DML (Data Manipulation Language)</li>

  In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. 
  In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase. 

  Below you can find all the insert instructions that were created in the scope of this project:

  **insert into salesordersdetail - inserarea pe mai multe randuri
**insert into sales - inserare pe mail multe randuri**

  After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:

  **Inserati aici toate instructiunile de UPDATE pe care le-ati scris folosind filtrarile necesare astfel incat sa actualizati doar datele de care aveti nevoie**


  <li>DQL (Data Query Language)</li>

After the testing process, I deleted the data that was no longer relevant in order to preserve the database clean: 

**delete from salesordersdetail where sales_OrderId = 46365**
In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:

**Inserati aici toate instructiunile de SELECT pe care le-ati scris folosind filtrarile necesare astfel incat sa extrageti doar datele de care aveti nevoie**
**select*from salesordersdetail**
**select * from sales**
**select*from sales order by standardCost**
**select max(sellStartDate) from sales**

**- where - delete from salesordersdetail where sales_OrderId = 4636**<br>
**- AND**<br>
**- OR**<br>
**- NOT**<br>
**- like**<br>
**- select*from sales inner join salesordersdetail on sales.productId = salesordersdetail.productId**<br>
**- select*from sales left join salesordersdetail on sales.productId = salesordersdetail.productId;**<br>
**- OPTIONAL: select*from sales right join salesordersdetail on sales.productId = salesordersdetail.productId;**<br>
**- select*from sales cross join salesordersdetail**<br>
**- functii agregate - select productId, SUM(order_quantity)from salesorderdetail group by productId;**<br>
**- group by - select productId, SUM(order_quantity)from salesorderdetail group by productId;**<br>
** - order by - select*from sales order by standardCost;
**- having**<br>
**- OPTIONAL DAR RECOMANDAT: Subqueries - nu au fost in scopul cursului. Puteti sa consultati tutorialul [asta](ttps://www.techonthenet.com/mysql/subqueries.php) si daca nu intelegeti ceva contactati fie trainerul, fie coordonatorul de grupa**<br>

</ol>

<li>Conclusions</li>

** Utilizarea corectă a cheilor primare și secundare: Acestea sunt esențiale pentru menținerea integrității datelor și pentru definirea relațiilor dintre tabele.
** Optimizarea interogărilor: Indicii și optimizarea interogărilor sunt cruciale pentru performanța bazei de date, mai ales pe măsură ce volumul de date crește.
** Documentarea și gestionarea modificărilor: Documentarea fiecărei modificări și a fiecărei structuri de date ajută la menținerea unei baze de date coerente și ușor de gestionat pe termen lung. 


</ol>