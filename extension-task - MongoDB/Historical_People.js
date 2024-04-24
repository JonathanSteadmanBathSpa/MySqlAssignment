db.createCollection{"Historical_People"}
db.Historical_People.insertMany{
    [
        {PersonID: 1, Name: "Augusta Ada King {Lovelace}", 
        BirthYear: 1815, DeathYear: 1852, 
        Desc:"Countess of Lovelace, was a British mathematician and computer scientist accredited with the first published computer algorithm. She also suggested that it would be possible for Computers to do more than simple calculations,perhaps even write music.",
        CountryID:2},
        {PersonID: 2, Name: "Mary Cartwright", 
        BirthYear: 1900, BirthYear: 1998, 
        Desc: "In 1936 Mary Cartwrigt became direct of studies in Mathematics at GgirtonCollege, Cambridge. Working with Littlewood, and found solutions to problems differential equations that emerged when modelling radio and RADAR signals.These observations would later contribute to Chaos Theory.She was the first woman: to receive the Sylvester Medal, to serve on the Council of the Royal Society, to be President of the  Mathematical Association, and to be President of the London Mathematical Society.", 
        CountryID:2},
        {PersonID: 3, Name: "Rosalind Franklin",
        BirthYear:1920,DeathYear:1958,
        Desc: "Rosalind Franklin graduated from the University of Cambridge in 1492, with a degree in Natural Sciences. In 1942she worked for The British Coal Utilisation Research Association {BCURA} where she discovered the link between the molecular structure of various types of coal and their physical properties, thus improving selection process for types of coal {i.e. for fuel and gas masks}.She was later awarded a PhD from Cambridge for this work. Her work on coal included the refining of X-ray crystallography techniques that she later applied to DNA, identifying 2 types of DNA and noting the helix like structure of one of them in 1951, 2 years before Watson and Crick started work on their Double Helix Model."    
        ,CountryID: 2
    },
    {
         PersonID: 4,
        Name: "Hertha Ayrton",
        BirthYear: 1854,
        DeathYear: 1923,
        Desc: "In 1899 Hertha Ayrton became the first woman to present her own paper in front of the Institution of Electrical Engineers {IEE} on the interaction of oxygen and carbon rods in arc lighting, shortly after becoming the first female member of the IEE. In 1901 the Royal Society refused to let her read her follow-up paper 'The Mechanism of the Electric Arc', instead being presented by John Perry. Similarly, in Cambridge she passed the Mathematical Tripos exam but was not allowed to be awarded a degree, as she was a woman.",
        CountryID: 2
      },
      {
        PersonID: 5,
        Name: "Dorothy Hodgkin",
        BirthYear: 1910,
        DeathYear: 1994,
        Desc: "Dorothy Hodgkin was the third woman to win a Nobel Prize in Chemistry, the previous two being Marie Sklodowska Curie in 1911 and Irène Joliot-Curie in 1935 for her determinations by X-ray techniques of the structures of important biochemical substances. She confirmed the structure of penicillin and discovered the structures of Vitamin B12 and Insulin. She was a Fellow of the Royal Society and President of the International Union of Crystallography.",
        CountryID: 2
      },
      {
        "PersonID": 6,
        Name: "Hypatia of Alexandria",
        BirthYear: 360,
        DeathYear: 415,
        Desc: "Hypatia is the earliest female mathematician whose life is reasonably well documented. She was born between 350 and 370 AD and lived her life in Hellenised Egypt. She was regarded as the leading mathematician and astronomer in the known world during her lifetime, and taught many of the leading philosophers and mathematicians in the Greek Empire. She continued her father's work in preserving older Greek science texts and updating many of them by correcting mathematical models.",
        CountryID: 6
      },
      {
        PersonID: 7,
        Name: "Émilie du Châtelet",
        BirthYear: 1706,
        DeathYear: 1747,
        Desc: "Known as much for her Philosophy as for her science, Émilie du Châtelet was one of the key figures in the French Enlightenment. Widely known for her translation into French of Isaac Newton's Principia {still used as the standard French translation and seen by many as the completion of the scientific revolution}, her commentary on the work included notion of conservation of energy derived from the principles of mechanics Newton set forth. She advocated that energy was distinct from momentum and established the basis for Kinetic Energy.",
        CountryID: 4
      },
      {
        PersonID: 8,
        Name: "Marie-Sophie Germain",
        BirthYear: 1776,
        DeathYear: 1831,
        Desc: "Marie-Sophie was a French Mathematician. She began a correspondence with Adrien-Marie Legendre under the pseudonym male M Le Blanc, fearful of the attitude to society to female scientists. Legendre was impressed with Marie-Sophie's work and requested a meeting, in which she revealed herself as a woman. Legendre became her mentor, later citing her work on Number Theory as very ingenious. She corresponded with Carl Friedrich Gauss under a male pseudonym. After finding out her true identity, Gauss wrote about Marie-Sophie that she was of noble courage, extraordinary talent and superior genius, recommending her for an honorary degree for her work.",
        CountryID: 4
      },
      {
        PersonID: 9,
        Name: "Irène Joliot-Curie",
        BirthYear: 1897,
        DeathYear: 1956,
        Desc: "Irène Joliot-Curie, daughter of Marie Curie, won the Nobel Prize in Chemistry for the discovery of artificial radioactivity. Alongside her husband, she identified the positron and neutron, discovered the accurate weight of the neutron, and pioneered the work into nuclear fission. She worked on France's first nuclear reactor.",
        CountryID: 4
      },
      {
        PersonID: 10,
        Name: "Yvonne Choquet-Bruhat",
        BirthYear: 1923,
        Desc: "Yvonne Choquet-Bruhat was a French mathematician and physicist. She worked with Albert Einstein and proved the local existence and uniqueness of the vacuum Einstein equations, which began the field of study in dynamics in General Relativity. She showed that there were solutions to the Yang-Mills, Higgs, and Spinor Field Equations in 3+1 Dimensions, and pioneered the work on supergravity which is integral to 11 Dimensional models of the universe.",
        CountryID: 4
      },
      {
        PersonID: 11,
        Name: "Emmy Noether",
        BirthYear: 1882,
        DeathYear: 1935,
        Desc: "Described as the most significant creative mathematical genius thus far produced by Albert Einstein. Emmy Noether was a mathematician whose work showing how the laws of conservation were derived from the laws of symmetry solved a problem with Einstein’s maths in the theory of relativity. She created the theoretical groundwork for the Standard Model of Particle Physics.",
        CountryID: 7
      },
      {
        PersonID: 12,
        Name: "Ida Noddack",
        BirthYear: 1896,
        DeathYear: 1978,
        Desc: "Nominated three times for a Nobel Prize in Chemistry {1933, 1935, and 1937} for the discovery of rhenium and masurium, Ida Noddack was a German physicist and chemist. Her work investigating and refuting Enrico Fermi's chemical proofs in 1934, instead stating that the breakdown of elements into non-neighbouring elements. While her work was dismissed at the time, work by Irène Joliot-Curie, Frédéric Joliot-Curie and Pavle Savic, and later by Otto Hahn and Fritz Strassmann, showed her hypothesis to be correct, leading to the discovery of nuclear fission.",
        CountryID: 7
      },
      {
        PersonID: 13,
        Name: "Maria Goeppert Mayer",
        BirthYear: 1906,
        DeathYear: 1972,
        Desc: "Maria Goeppert Mayer was a German theoretical physicist who worked on the Manhattan Project with Edward Teller. Her doctoral work looked at the possibility of two-photon absorption by atoms, the standard unit of which is now named after her. She was awarded a Nobel Prize in Physics for her model on the structure of nuclear shells, a prize she shared with Johannes Hans Daniel Jensen and Eugene Wigner.",
        CountryID: 7
      },
      {
        PersonID: 14,
        Name: "Maria Gaetana Agnesi",
        BirthYear: 1718,
        DeathYear: 1799,
        Desc: "Maria Agnesi was the first woman to publish an original mathematics book in her own name, others having previously done commentaries correcting previous work, and the first woman appointed as a mathematics professor at a university in 1750, a role she was given by Pope Benedict XIV. Her book 'Analytical Institutions for the Use of Italian Youth' was regarded as the best introduction to Euler, covering both differential and integral calculus.",
        CountryID: 8
      },
      {
        PersonID: 15,
        Name: "Fumiko Yonezawa",
        BirthYear: 1938,
        DeathYear: 2019,
        Desc: "Fumiko Yonezawa was a Japanese theoretical physicist. She created computer visualisation of the amorphous structures of semiconductors and liquid metals. In 1996 she became the first female President of the Physics Society of Japan, and was awarded the Saruhasi Prize and a L'Oréal-UNESCO Award for Women in Science.",
        CountryID: 9
      },
      {
        PersonID: 16,
        Name: "Marie Sklodowska Curie",
        BirthYear: 1867,
        DeathYear: 1934,
        Desc: "Marie Curie was the first woman to win a Nobel Prize {1903}, and one of only four people to win two Nobel Prizes. Born in Poland, Marie moved to Paris for an undergraduate degree in physics, chemistry, and mathematics, later doing a PhD. Marie established the foundation for our current Theory of Radioactivity. She discovered two new elements {Radium and Polonium} and pioneered work into radiotherapy for cancer. She was overlooked by the Royal Swedish Academy of Sciences for the Nobel Prize in Physics, initially naming only her husband Pierre Curie and fellow physicist Henri Becquerel. Magnus Goesta Mittag-Leffler, a committee member, notified Pierre of Marie not being on the nomination paper. Pierre complained to the committee and had Marie added to the nomination papers.",
        CountryID: 10
      },
      {
        PersonID: 17,
        Name: "Julia Lermontova",
        BirthYear: 1846,
        DeathYear: 1919,
        Desc: "Julia Lermontova was a Russian chemist. She is known as the first Russian female doctor in chemistry, and the third woman to have been given a doctorate in Europe. She studied at the Universities of Heidelberg and Berlin before she received her doctorate by the University of Göttingen in 1874. She was inducted to the Russian Chemical Society in 1875. Her research included work on 2-methyl-2-butenoic acid, she was the first woman to work in the field of oil research where she developed a device for the continuous distillation of petroleum.",
        CountryID: 1
      },
      {
        PersonID: 18,
        Name: "Sophia Brahe",
        BirthYear: 1559,
        DeathYear: 1643,
        Desc: "Sophia Brahe, 1559 - 1643, was a Danish noble woman and horticulturalist with knowledge of astronomy, chemistry, and medicine. She assisted her brother Tycho Brahe with his astronomical observations. The work that Sophia aided her brother in is now seen as the basis of modern orbit predictions of the planets and solar system. Tycho and Sophia collected the most accurate measurements to date {prior to the telescope invention} of the positions of the planets with respect to time.",
        CountryID: 11
      },
      {
        PersonID: 19,
        Name: "Mileva Maric",
        BirthYear: 1875,
        DeathYear: 1948,
        Desc: "Mileva Maric Einstein was a Serbian Physicist, mathematician, and first wife of Albert Einstein. She attended Zurich Polytechnic alongside her future husband, but was denied her diploma. She is currently the subject of ongoing debate on how much she worked with Einstein during 1905, a year sometimes referred to as Einstein's 'Miracle Year', and how much she supported his work during their marriage.",
        CountryID: 12
      },
      {
        PersonID: 20,
        Name: "Maryam Mirzakhani",
        BirthYear: 1977,
        DeathYear: 2017,
        Desc: "In 2014, Maryam Mirzakhani became the first woman and first Iranian to win the Fields Medal, an award given to the top 2 - 4 mathematicians under 40 worldwide. The committee cited her work on the dynamics and geometry of Riemann surfaces and their moduli spaces. She was also the first Iranian woman to receive a gold medal in the International Mathematical Olympiad, getting a second gold medal the following year. Her PhD work on Geodesics solved an open problem in The Theory of Relativity.",
        CountryID: 3
      }
    
      //It will be the same format for the other figures...
      // You can continue adding more historical figures in the same manner.
    ]};
    
