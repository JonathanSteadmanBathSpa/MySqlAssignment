-- Just checking for the database that is in my system Testing to see if I got access. 
show databases;
-- Lets create a new database.
drop database if exists  Historical_Figures;

Create database if not exists Historical_Figures;
show databases;

-- This will allow us to connect to the database.... 
use Historical_Figures;
-- Show all tables in the database. It should display being blank. 
show tables;
-- create table if not exists tbl_Historical_People;

show tables;

create table if not exists tbl_Leacture
(LeactureID INT auto_increment,
Leacture_Name varchar (200),
PRIMARY KEY (LeactureID),
Age int
);
Insert into tbl_Leacture(Leacture_Name,Age) values
("Tim Cook",21),
("Harry Potter",54),
("Bill Gates",76);

select * from tbl_Leacture;
create table if not exists tbl_Country_Of_Birth
(Country_Of_BirthID INT auto_increment,
PRIMARY KEY (Country_Of_BirthID),
Country_Name varchar(700)
);
create table if not exists tbl_Bookings_Room

(Bookings_RoomID INT auto_increment,
Booking_Room varchar(58),
PRIMARY KEY (Bookings_RoomID)
);
Insert into tbl_Bookings_Room(Booking_Room) values
("Leacture Room"),
("Event Room");
create table if not exists tbl_Bookings
(BookingsID INT auto_increment,
Bookings_RoomID INT,
TicketsNeeded varchar(15),
Booking_desc varchar(500),
NumberOfPeople INT,
Price INT,
LeactureID int,
Date varchar(60),
time varchar(180),
EndTime varchar(180),
PRIMARY KEY (BookingsID),
foreign KEY (Bookings_RoomID) references tbl_Bookings_Room(Bookings_RoomID),
foreign key(LeactureID) references tbl_Leacture(LeactureID)
);
-- There are only two rooms.
--  Lecture room
--  Event room
Insert into tbl_Bookings(Bookings_RoomID,TicketsNeeded,Booking_desc,Price,NumberOfPeople,Date,time,EndTime,LeactureID) values
(1,"Yes","How great was Rosalind Franklin?",12,62,"4/02/2024","4.00pm","7.00pm",1),
(2,"No","Who is Augusta Ada King?",0,62,"7/02/2024","4.00pm","5.00pm",2),
(1,"Yes","Who is Mary Cartwright?",43,12,"3/03/2024","5.00pm", "7:00pm",3)
-- ("Bill Gates",76)
;
select * from tbl_Bookings;

create table if not exists tbl_Historical_People 
(PersonID INT auto_increment,
Name Varchar(500),
BirthYear INT,
DeathYear int,
Country_Of_BirthID int,
Description varchar(6467),
Primary key (PersonID),
-- foreign key(LeactureID) references tbl_Leacture(LeactureID)
foreign key(Country_Of_BirthID) references tbl_Country_Of_Birth(Country_Of_BirthID)
);
create table if not exists tbl_Main_Sector
(MainSectorID INT auto_increment,
MainSectorName varchar(100),
primary key (MainSectorID)
);
INSERT into tbl_Main_Sector(MainSectorName) values
("Mathematics"),("Computing"),("Biology"),("Physics"),("Engineer"),("Mathematician"),("Physicist"),("Chemistry")
,("Astronomy"),("Medicine");
SELECT * FROM tbl_Main_Sector;




insert into tbl_Country_Of_Birth(Country_Name) values
("Russia"),("Britain"),("Iran"),("France"),("USA"),("Egypt"),("Germany"),("Italy"),
("Japan"),("Poland"),
("Sweden"),("Serbia"),("Kazakhstan");
select * from tbl_Country_Of_Birth;

insert into tbl_Historical_People(Name, BirthYear,DeathYear,Description,Country_Of_BirthID) Values
("Augusta Ada King (Lovelace)",1815,1852,"Augusta Ada King, Countess of Lovelace, was a 
]British mathematician 
and computer scientist accredited 
with the first published computer 
algorithm. She also suggested that it 
would be possible for Computers to do 
more than simple calculations,perhaps even write music.",2),
("Mary Cartwright",1900,1998,"In 1936 Mary Cartwrigt became 
direct of studies in Mathematics at GgirtonCollege, Cambridge. Working with Littlewood, 
and found solutions to problems differential equations that emerged when modelling radio and RADAR signals.
These observations would later contribute to Chaos Theory.She was the first woman: to receive the 
Sylvester Medal, to serve on the Council of the Royal Society, to be President of the 
Mathematical Association, and to be President of the London Mathematical Society.",2),
("Rosalind Franklin",1920,1958,"Rosalind Franklin graduated from the University of Cambridge in 1492, with a degree in Natural Sciences. In 1942
 she worked for The British Coal Utilisation Research Association (BCURA) where she discovered 
 the link between the molecular structure of various types of coal and their physical properties, 
 thus improving selection process for types of coal (i.e. for fuel and gas masks).She was later awarded 
 a PhD from Cambridge for this work. Her work on coal included the refining of X-ray crystallography 
 techniques that she later applied to DNA, identifying 2 types of DNA and noting the helix like structure
 of one of them in 1951, 2 years before Watson and Crick started work on their Double Helix Model."
 ,2),
 
 ("Hertha Ayrton",1854,1923,"In 1899 Hertha Ayrton became the first woman to present her own paper in 
 front of the Institution of Electrical Engineers 
 (IEE) onthe interaction of oxygen and carbon rods in arc lighting, shortly after becoming 
 the first female member of the IEE.In 1901 the Royal Society refused to let her read her 
 follow up paper ''The Mechanism of the Electric Arc'', instead being presented by John Perry. 
 Similarly, in Cambridge she passed the Mathematical Tripos exambut was not allowed to be awarded 
 a degree, as shewas a woman.", 2),
 -- Null means that this data is not linked to the BookingsID!!!!
 
 ("Dorothy Hodgkin",1910,1994,"Dorothy Hodgkin was the third woman to win a Noble prize in Chemistry
 previous two being Maria 
 Skiodowska Curie in 1911 and Irène Joliot-Curie in 1935 for her determinations by Xray
 techniques of the structures of important biochemical substances. She confirmed the structure 
 of penicillin and discovered the structures of Vitamin B12 and Insulin. She was aFellow of the 
 Royal Society and President of the International Union of Crystallography.",2),
 ("Hypatia Alexandria",360,415,"Hypatia is the earliest female mathematician whose life is reasonably 
 well documented. She was born between 350 and 370 AD and lived 
 her life in Hellenised Egypt. She was regarded as the leading 
 mathematician and astronomer in the known world during her lifetime, and 
 taught many of the leading philosophers and mathematicians in the Greek Empire.
 She continued her father''s work in preserving older Greek science texts and updating 
 many of them by correcting mathematical models. She is also the last attested member of the
 Alexandrian Museum. Her commentaries on Greek scientific works would be used by Scientists, 
 including Ibn Sina, Al-Kindi, Al-Farabi, and Abu al-Wafa' Buzjani during the Abbasid Empire.",6),
 
 ("Émilie du Châtelet",1706,1747,"Known as much for her Philosophy as for her science, Émilie du Châtelet 
 was one of the key figures in theFrench Enlightenment. 
 Widely known for her translation into French of Isaac Newton''s Principia (still used as the 
 standard French translation and seen by many as the completion of the scientific revolution), 
 her commentary on the work included notion of conservation of energy derived from the principles 
 of mechanics Newton set forth. She advocated that energy was distinct from momentum and established 
 the basis for Kinetic Energy, which was later formalised by Leonhard Euler and Joseph-Louis Lagrange. 
 In other work she predicted infrared rational and the nature of light."
,4),
 
 ("Marie-Sophie Germain",1776,1831,"Marie-Sophie was a French Mathematician. She began a 
 correspondence with Adrien-Marie Legendre under the pseudonym male M Le Blanc, fearful of 
 the attitude to society to female scientists. Legendre was impressed with Marie-Sophie's work 
 and requested a meeting, in which she relieved herself as a woman.
 Legendre became her mentor, later citing her work on Number Theoryas (very ingenious).
 She later corresponded with Carl 
 Friedrich Gauss, again under a male pseudonym. After finding out her 
 true identity, Gauss wrote about Marie-Sophie that she was of noble courage, 
 extraordinary talent and superior genius, recommending her for an honorary degree 
 for her work. Marie-Sophie made significant contributions to number theory, 
 Fermat's last theorem and elasticity theory.",4),
 
 ("Irène Joliot-Curie",1897,1956,"Irène Joliot-Curie, daughter of Marie Curie, won 
 the Noble Prize in Chemistry for the discovery of 
 artificial radioactivity.Alongside her husband, she identified the positron and neutron, 
 discovered an the accurate weight of the neutron, and pioneered the work into nuclear fission. 
 She worked on France's first nuclear reactor.",4),
 
 ("Yvonne Choquet-Bruhat",1923,null,"Yvonne Choquet-Bruhat was a French mathematician and 
 physicist. She worked 
 with Albert Einstein and proved the local existence and uniqueness 
 of the vacuum Einstein equations, which began the field of study in dynamics in General Relativity. 
 She showed that there were solutions to the Yang-Mills, Higgs, and Spinor Field Equations in 3+1 
 Dimensions, and pioneered the work on supergravity which is integral to 11 Dimensional models of 
 the universe.",4),
 
 ("Emmy Noether",1882,1935,"Described as the most significant creative mathematical genius thus far 
 produced by Albert Einstein. Emmy Noether was a mathematician whose work showing
 how the laws of conservation were derived from the laws of symmetry solved a problem 
 withEinstein’s maths in the theory of relativity. She created the theoretical groundwork 
 for the Standard Model of Particle Physics. Born 1882 in Germany, Noether died in 1935 aged 53."
 ,7),
 ("Ida Noddack",1896,1978,"Nominated 3 times for a Nobel prize in Chemistry (1933, 1935, and 1937) 
 for the discovery of rhenium and masurium, Ida Noddack was a German physicist 
 and Chemist. Her work investigating and refutingEnrico Fermi's chemical proofs in 1934, 
 instead stating that the breakdown of elements into non-neighbouring elements. While her 
 work was dismissed at the time, work by Irène Joliot-Curie, Frédéric Joliot-Curie and Pavle Savic,
 and later byOtto Hahn and Fritz Strassmann, showed her hypothesis to be correct, leading to the 
 discovery of nuclear fission.",7),
 
("Maria Goeppert Mayer",1906,1972,"Maria Goeppert Mayer was a German theoretical physicist 
that worked on the Manhattan Project with Edward Teller. Her doctoral work looked at the 
possibility of two-photon absorption by atoms, the standard unit of which is now named after her. 
She was awarded a Noble Prize in Physics for her model on the structure of nuclear shells, a prize 
she shared with Johannes Hans Daniel Jensen and Eugene Wigner.",7),

("Maria Gaetana Agnesi",1718,1799,"Maria Agnesi was the first woman to publish an original mathematics 
book in her own name, 
others having previously done commentaries correcting previous work, and the first woman appoints 
as a mathematics professor at a university in 1750, a role she was given by Pope Benedict XIV.
Her book Analytical Institutions for the Use of Italian Youth was regarded as the best introduction 
to Euler, covering both differential and integral calculus.",8),

("Fumiko Yonezawa",1938,2019,"Fumiko Yonezawa was a Japanese theoretical physicist. She created computer 
visualisation of the amorphous structures of semiconductors and liquid metals. In 1996 
she became the first female President of the Physics Society of Japan, and was awarded 
the Saruhasi Prize and a L'Oréal-UNESCO Award for Women in Science.",9),

("Marie Skiodowska Curie",1867,1934,"Marie Curie was the first woman to win a Noble Prize (1903), 
and one of only 4 people to win two Noble prizes. 
Born In Poland, Marie moved to Paris for an undergraduate 
degree inphysics, chemistry, and mathematics, later doing a PhD.
Marie established the foundation for our current Theory of Radioactivity. 
She discovered two new elements (Radium and Polonium) and pioneered work into radiotheopy 
for cancer. She was overlooked by the Royal Swedish Academy of Sciences for the Nobel Prize 
in Physics, initially naming only her husband Pierre Curie and fellow physicist Henri Becquerel.
 Magnus Goesta Mittag-Leffler, a committee member, notified Pierre of Maire not being on the nomination
 paper. Pierre complained to the commiette and had Marie added to the nomination papers.",10),
 
 ("Julia Lermontova",1846,1919,"Julia Lermontova was a Russian chemist. She is known as the first Russian
 female doctor in chemistry, and the third woman to have been given a doctorate in Europe. 
 She studied at the Universities of Heidelberg and Berlin before she received her doctorate 
 by the University of Göttingen in 1874. She was inducted to the Russian Chemical Society in 1875. 
 Her research included work on2-methyl-2-butenoic acid, she was the first woman to work in the field 
 of oil research where she developed a device for the continuous distillation of petroleum, she worked
 on a new method of synthesizing hydrocarbons later used in the production of motor fuels.This process 
 is now known as theButlerov–Eltekov–Lermontova''s reaction. When Eltekov presented the work at the 1878 
 coference of te Russiann Cheical Society, Butlerov made the attendees aware of Julia's work on the 
 project.",1),
 ("Sophia Brahe",1559,1643,"Sophia Brahe, 1559 - 1643, was a Danish noble woman and horticulturalist 
 with knowledge of astronomy, chemistry, and medicine. She assisted her brother 
 Tycho Brahe with his astronomical observations. The work that Sophia aided her brother in is 
 now seen as the basis of modern orbit predictions of the planets and solar system.Tycho and 
 Sophia collected the most accurate measurements to date (prior to the telescope invention) of the 
 positions of the planets with respect to time. The siblings observedSN 1572, Tycho's Supernova, 
 leading many to realise that the earth was not the centre of the universe. Her work was funded by 
 Frederick The Great of Prussia, and data passed onto Johannes Kepler and lay the groundwork of Isaac 
 Newton.",11),
 
 ("Mileva Maric",1875,1948,"Mileva Maric Einstein was a Serbian Physicist, mathematician, 
 and first wife of Albert Einstien.She attended Zurich Polytechnic alongside her future husband, 
 but was denied her diploma. She is currently the subject on on-going debate on how much she worked 
 with Einstien during 1905, a year sometimes refered to as Einstien's Miracle year, and how much she 
 supported his work during their marriage. In letters between them, Albert refered to ''our'' theory 
 of relative motion on several occasions and there are several reports of her correcting his papers 
 before being submitted for publication.",12),
 
("Maria Christina Bruhn",1732,1808,"In 1773 Maria Christina Bruhn entered a competition, commissioned 
by the Swedish Army and King Gustav III, into the creation of moister- and fire-proof storage 
canisters for artillery shells. During the 1774 testing, all prototypes were rejected as non-suitable. 
Maria reported her work to the Royal Swedish Academy of Sciences(KVA) and applied to various types of
 cardboard. She continued testing canisters with the Swedish Cadet Force until 1780. In 1783 she was 
 informed that her work had been claimed by a Major Wagenfelt, who had attended the 1774 test. Supported
 by Captain Adolf Fredrik Lindfeldt, the KVA, and the Swedish King's Council, Bruhn petitioned the
 Swedish College of War and in 1786 they awarded her the prize and recognition for inventing safe 
 canisters.",11),
 
 ("Grace Hopper",1906,1992,"Grace Hopper was an American computer scientist and United States Navy 
 rear admiral. One of the first programmers of the Harvard Mark I computer, she was a pioneer of 
 computer programming who invented one of the first linkers. She popularized the idea of 
 machine-independent programming languages, which led to the development of COBOL, an early 
 high-level programming language based on her idea that code could be written in English words. 
 Prior to joining the Navy, Hopper earned a Ph.D. in mathematics from Yale University and was a 
 professor of mathematics at Vassar College.Hopper was awarded 40 honorary degrees. 
 She is often accredited with the popularising of the term debugging in regards to computers, 
 and has a Arleigh Burke-class guided-missile destroyer named after her.",5),
 
 ("Stephanie Kwolek",1923,2014,"Stephanie Kwolek worked for the DuPont company between 1946 and 1986, 
 where she discovered the first synthetic fibre of exceptional strength and stiffness named 
 poly-paraphenylene terephthalamide, more commonly known as Kevlar. She became the first woman 
 to win the Lavoisier Medal,she was also awarded the Chemical Pioneer Award from the American 
 Institute of Chemists, and an Award for Creative Invention from the American Chemical Society.",5),
 
 ("Katherine Johnson",1918,2020,"Katherine Johnson is an
 American mathematician whose calculations of orbital mechanics 
 as a NASA employee were critical to the success of the first and 
 subsequent U.S. crewed spaceflights. She was involved in the Mercury 
 project,America''s manned space flight program, and the rendezvous paths for the
 Apollo Lunar Module and command module for the moon landings.She was one of only 
 three black students to integrate West Virginia’s graduate schools.She worked for
 NASA from 1953 – 1986. Katerine was later awarded 6 honorary doctorates for her
 work on the mathematics of space flight.",5),
 
 ("Mary Jackson",1921,1944,"Mary Jackson was an American mathematician and 
 aerospace engineer at the National 
 Advisory Committee for Aeronautics, which in 1958 was succeeded by the National 
 Aeronautics and Space Administration (NASA).Jackson worked as an engineer in several 
 NASA divisions: the Compressibility Research Division, Full-Scale Research Division, 
 High-Speed Aerodynamics Division, and the Subsonic-Transonic Aerodynamics Division. 
 She is a named author on 12 technical papers for NACA and NASA. Her work on
 theaerodynamics of aircraft atsupersonic speeds improved the performance of US
 planes and assisted in the design of the US spacecraft.",5),
 
 ("Sofya Kovalevskaya",1850,1891,"Sofya was the first woman to gain a modern Doctorate, 
 with her dissertation covering partial differential equations, 
 the dynamics of Saturn''s rings, and on elliptic integrals.She provided 
 the full results forlocal existence and uniqueness for analytic partial 
 differential equations associated with Cauchy initial value problems, now 
 known as the Cauchy–Kovalevskaya theorem, after a special case was shown by 
 Augustin Cauchy 30 years before. In 1889 Sofya was appointed as a full Possessor, 
 the first woman to be appointed to such a position.",1),
 
 ("Maryam Mirzakhani",1977,2017,"In 2014, Maryam Mirzakhani became the first woman 
 and first Iranian to win the Fields Medal, an award given to the top 2 - 4 mathematicians 
 under 40 worldwide. The committee cited her work on the dynamics and geometry of Riemann 
 surfaces and their moduli spaces. She was also the first Iranian woman to receive a gold 
 medal in the International Mathematical Olympiad, getting a second gold medal in the 
 following year. Her PhD work on Geodesics solved an open problem in The Theory of Relativity.",3);
 select * from tbl_Historical_People;
create table if not exists tbl_The_Person_Subjects
(
PersonID INT,
MainSectorID int,
foreign key(PersonID) references tbl_Historical_People(PersonID),
foreign key(MainSectorID) references tbl_Main_Sector(MainSectorID)
);
-- If the person ID is 1 then he has studeied mathematics and computing... To make the code clean and remove duplications. 
insert into tbl_The_Person_Subjects(PersonID,MainSectorID) values
(1,1),(1,2),
(2,1),
(3,3),(3,4),
(4,5),(4,6),(4,7),
(5,3),(5,8),
(6,1),(6,9),
(7,1),(7,4),
(8,1),(8,4),
(9,8),(9,4),
(10,1),(10,4),
(11,1),(11,4),
(12,8),(12,4),
(13,4),
(14,1),
(15,4),(15,2),
(16,4),(16,2),
(17,4),(17,8),
(18,8),
(19,1),(19,4),
(20,9),(20,8),(20,10),
(21,9),
(22,2),
(23,8),
(24,1),
(25,1),
(26,1);
create table if not exists tbl_Bookings_For_Person
(
BookingsID int,
PersonID int,
foreign key(PersonID) references tbl_Historical_People(PersonID),
foreign key(BookingsID) references tbl_Bookings(BookingsID)
);
-- Did this because the histrical person may have more than one booking....
-- So if person 1 has more then one date then there is no longer gonna be data duplications - Which is our goal. :)
insert into  tbl_Bookings_For_Person(PersonID,BookingsID) values
(2,3),
(1,2),
(3,1);
SELECT 
    *
FROM
    tbl_The_Person_Subjects;
select * from tbl_Main_Sector;
select * from tbl_Historical_People where DeathYear=null;  
-- I am adding in new person for the assignment sql question. 
Insert into tbl_Historical_People(Name,BirthYear,DeathYear,Country_Of_BirthID,Description) 

values("Askar Dzhumadildayev",1956,NULL,13,"Dzhumadildayev is a Kazakh mathematician, doctor of physics and mathematics,  
professor, Full Member of the Kazakhstan National Academy of Science. He was also  
member Supreme Council of Kazakh SSR and Republic ofKazakhstan.  
In 2016, Askar Dzhumadilyavev was chosen as one of the nominees  
in the Science category of the national project El Tulgasy (Name of the Motherland)  
The idea of the project was to select the most significant citizens of Kazakhstan whose 
names are now associated with the achievements of the country. More than 350,000 people 
voted in this project, and Dzhumadilyavev was voted into second place in his category.  

"); 
insert into tbl_The_Person_Subjects(PersonID,MainSectorID) values
(27,1),(27,4);

select * from tbl_Historical_People; 
select * from tbl_Bookings_For_Person;
select * from tbl_Bookings_Room;




