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

Insert Into Table Requests (submit_addrline1, submit_city, submit_state, addr_id)
VALUES ('1108 Cathedral St', 'Baltimore', 'Maryland', '1');
Insert Into Table Requests (submit_addrline1, submit_city, submit_state, addr_id)
VALUES ('228 West Lexington', 'Baltimore', 'Maryland', '2');
Insert Into Table Requests (submit_addrline1, submit_city, submit_state, addr_id)
VALUES ('101 East Mt Royal', 'Baltimore', 'Maryland', '3');
Insert Into Table Requests (submit_addrline1, submit_city, submit_state, addr_id)
VALUES ('100 N Calvert St', 'Baltimore', 'Maryland', '4');
Insert Into Table Requests (submit_addrline1, submit_city, submit_state, addr_id)
VALUES ('1000 Greenmount Ave', 'Baltimore', 'Maryland', '5');

INSERT INTO TABLE Address(
street_number_long, street_number_short, route_long, route_short, locality_long,
locality_short, admin_level_1_long, admin_level_1_short, admin_level_2_long, admin_level_2_short,
country_long, country_short, postal_long, postal_short, latitude, longitude                        
) 
VALUES
('1108', '1108', 'Cathedral Street', 'Cathedral St', 'Baltimore', 'Baltimore', 
 'Maryland', 'MD', 'Baltimore City', 'Baltimore City', 'United States', 'US', 
 '21201', '21201', '39.301924', '-76.617853');
 
INSERT INTO TABLE Address(
street_number_long, street_number_short, route_long, route_short, locality_long,
locality_short, admin_level_1_long, admin_level_1_short, admin_level_2_long, admin_level_2_short,
country_long, country_short, postal_long, postal_short, latitude, longitude                        
) 
VALUES
('228', '228', 'West Lexington Street', 'W. Lexington St.', 'Baltimore', 'Baltimore', 
 'Maryland', 'MD', 'Baltimore City', 'Baltimore City', 'United States', 'US', 
 '21201', '21201', '39.301781', '-76.79402');
 
 INSERT INTO TABLE Address(
street_number_long, street_number_short, route_long, route_short, locality_long,
locality_short, admin_level_1_long, admin_level_1_short, admin_level_2_long, admin_level_2_short,
country_long, country_short, postal_long, postal_short, latitude, longitude                        
) 
VALUES
('101', '101', 'East Mount Royal Avenue', 'E. Mt. Royal Ave', 'Baltimore', 'Baltimore', 
 'Maryland', 'MD', 'Baltimore City', 'Baltimore City', 'United States', 'US', 
 '21202', '21202', '39.49603', '-76.39591');
 
 INSERT INTO TABLE Address(
street_number_long, street_number_short, route_long, route_short, locality_long,
locality_short, admin_level_1_long, admin_level_1_short, admin_level_2_long, admin_level_2_short,
country_long, country_short, postal_long, postal_short, latitude, longitude                        
) 
VALUES
('100', '100', 'North Calvert Street', 'N. Calvert St.', 'Baltimore', 'Baltimore', 
 'Maryland', 'MD', 'Baltimore City', 'Baltimore City', 'United States', 'US', 
 '21201', '21201', '39.301781', '-76.79402');
 
 INSERT INTO TABLE Address(
street_number_long, street_number_short, route_long, route_short, locality_long,
locality_short, admin_level_1_long, admin_level_1_short, admin_level_2_long, admin_level_2_short,
country_long, country_short, postal_long, postal_short, latitude, longitude                        
) 
VALUES
('1000', '1000', 'Greenmount Avenue', 'Greenmount Ave', 'Baltimore', 'Baltimore', 
 'Maryland', 'MD', 'Baltimore City', 'Baltimore City', 'United States', 'US', 
 '21201', '21201', '39.967849', '-76.39576');
 
INSERT INTO TABLE Crime 
 (
  addr_line_1, Description, Weapon, Latitude, longtidue
  )
VALUES 
  (
  '2000 West Poppleton St',
  'Assault',
  'Hands',
  '39.85843',
  '-76.56854'
  );
  
  INSERT INTO TABLE Crime 
 (
  addr_line_1, Description, Weapon, Latitude, longtidue
  )
VALUES 
  (
  '5845 Mount Royal Ave',
  'Larceny',
  NULL,
  '39.485963',
  '-76.10395'
  );
  
INSERT INTO TABLE Crime 
 (
  addr_line_1, Description, Weapon, Latitude, longtidue
  )
VALUES 
  (
  '5968 Maryland Avenue',
  'Assault',
  'KNIFE',
  '39.39501',
  '-76.25468'
  );
 
INSERT INTO TABLE Crime 
 (
  addr_line_1, Description, Weapon, Latitude, longtidue
  )
VALUES 
  (
  '405 Lombard Avenue',
  'Homicide',
  'Gun',
  '39.84850',
  '-76.08965'
  );
  
  INSERT INTO TABLE Crime 
 (
  addr_line_1, Description, Weapon, Latitude, longtidue
  )
VALUES 
  (
  '3750 Pratt Street',
  'Auto Theft',
  NULL,
  '39.40496',
  '-76.12409'
  );
