/* Crime Map DB*/
/* Written by Owen Henry */
/* Started 9/21/2018 */
/* This script sets up the DB necessary 
for the crime map online site */
/* Written for INFM747 at UMD - CP */

Create Database  crime_map;

Create Table Requests(
request_id INT auto_increment PRIMARY KEY,
submit_addrline1 varchar(50),
submit_city varchar(30),
submit_state varchar(30),
addr_ID INT,
Foreign Key Requests(addr_ID) REFERENCES Address(addrID)
);

Create Table Address(
AddrID INT auto_increment Primary Key,
street_number_long varchar(10),
street_number_short int,
route_long varchar(30),
route_short varchar(30),
locality_long varchar(30),
locality_short varchar(30),
admin_level_1_long varchar(30),
admin_level_1_short varchar(30),
admin_level_2_long varchar(30),
admin_level_2_short varchar(30),
country_long varchar(30),
country_short varchar(10),
postal_long varchar(10),
postal_short varchar(10),
latitude varchar(30),
longitude varchar(30)
)
;

Create Table Crime(
crimeid INT auto_increment primary key,
addr_line_1 varchar(50),
Description varchar(30),
Weapon varchar(20),
Latitude varchar(30),
longtidue varchar(30)
)
;

