create schema cars;
use cars;
--- READ DATA ----

        select*from car_dekho;
-- Total cars: To get Count of total records--
        select count(*) from car_dekho;
        
-- The Manager asked Employee How many cars will be available in 2023 --
        
        select count(*) from car_dekho where year = 2023;
         
--The Manager asked employee how many cars available in 2020,2021,2022 ?--
          select count(*) from car_dekho where year = 2020;
           select count(*) from car_dekho where year =2021;
           select count(*) from car_dekho where year =2022;
 
	                  -- GROUP BY--
	select count(*) from car_dekho where year in (2020,2021,2022) group by year;
      
    -- The manager told the employee to give the print of all the fuel cars come by all years--
         select year,count(*) from car_dekho where fuel="petrol" group by year;
		select year,count(*) from car_dekho where fuel="diesel" group by year;
		select year,count(*) from car_dekho where fuel="cng" group by year;
	
    --MANAGER SAID THERE WERE MORE THAN 100 CARS IN A GIVEN YEARS WHICH YEAR 100 CARS WERE THERE--
        select year,count(*) from car_dekho group by year having count(*)>100;
		select year,count(*) from car_dekho group by year having count(*)>50;
    
    --Manager said to employee to count all cars between 2015 to 2023--
        select count(*) from car_dekho where year between 2015 and 2023;
		select count(*) from car_dekho where year = 2023 LIMIT 0, 1000
