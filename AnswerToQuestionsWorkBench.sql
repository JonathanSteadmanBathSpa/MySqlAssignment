use Historical_Figures;
SET SQL_SAFE_UPDATES = 0;
show tables;
select * from tbl_Historical_People;
-- select * from tbl_Historical_People where Country_Of_Birth="France";
select * from tbl_Historical_People where MainSector Like "%,%";
Update tbl_Historical_People 
set DeathYear = 2005
where Name="Mary Jackson";
select * from tbl_Historical_People where Name="Mary Jackson";

select * from tbl_Historical_People where DeathYear - BirthYear <40; 
select * from tbl_Historical_People where Description like "%Einstein%";
show tables;
select * from tbl_Bookings;
update tbl_Bookings
Set Date = "9/02/2025"
where BookingsID = 2;
select * from tbl_Bookings;

/*Adding in a new sciencetist:*/
Insert into tbl_Historical_People(Name,BirthYear,DeathYear,MainSector,Country_Of_Birth,Description, BookingsID)
values("Askar Dzhumadildayev",1956,NULL,"Physics, mathematics","Kazakhstan","
 Dzhumadildayev is a Kazakh mathematician, doctor of physics and mathematics, 
 professor, Full Member of the Kazakhstan National Academy of Science. He was also 
 member Supreme Council of Kazakh SSR and Republic ofKazakhstan. 
In 2016, Askar Dzhumadilyavev was chosen as one of the nominees 
in the Science category of the national project El Tulgasy (Name of the Motherland) 
The idea of the project was to select the most significant citizens of Kazakhstan whose
 names are now associated with the achievements of the country. More than 350,000 people
 voted in this project, and Dzhumadilyavev was voted into second place in his category. 
",null);
select * from tbl_Historical_People;


