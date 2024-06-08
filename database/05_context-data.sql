USE context;

-- REAL DATA!
 
INSERT INTO countries (id, name, avg_temp, cost_of_life, healthcare_index, pop_density, official_lang, minority_lang, widely_spoken_lang, bio, tips, img_link)
VALUES
(1, 'Malta',19.58,55.1,53.59,1700,'English, Spanish','','','Malta is a beautiful island country located in the Mediterranean Sea. It is known for its rich history, stunning architecture, and vibrant culture.','Explore the charming streets of Valletta, visit the ancient temples of Hagar Qim, and relax on the picturesque beaches of Gozo.','https://assets.vogue.com/photos/599365b2f0b0e21484d3436e/master/w_2560%2Cc_limit/00-lede-a-travel-guide-to-malta.jpg'),
(2, 'Cyprus',18.95,57.1,53.74,136,'Greek','', 'English','Cyprus is a Mediterranean island known for its beautiful beaches, ancient ruins, and rich cultural heritage. It offers a perfect blend of history, nature, and relaxation.','Visit the UNESCO World Heritage site of Paphos, explore the stunning Troodos Mountains, and indulge in delicious Cypriot cuisine.','https://www.travelandleisure.com/thmb/_HcHZ4Gr8jbDJ5vcHYzR7a4lXvA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/TAL-kourion-archaeological-site-CYPRUS0124-3e8854b03a754966a1a11e4b6dd356c3.jpg'),
(3, 'Portugal',15.85,46.6,54.95,111,'Portuguese','', 'English','Portugal is a charming country located on the Iberian Peninsula. It is famous for its beautiful coastline, historic cities, and warm hospitality.','Discover the historic neighborhoods of Lisbon, explore the vineyards of the Douro Valley, and relax on the stunning beaches of the Algarve.','https://images.winalist.com/blog/wp-content/uploads/2023/06/26110037/AdobeStock_79650880-1-1500x1000.jpeg'),
(4, 'Greece',14.26,54.2,52.5,78,'Greek','', '','Greece is a country with a rich history and stunning natural beauty. It is known for its ancient ruins, beautiful islands, and delicious cuisine.','Explore the iconic Acropolis in Athens, relax on the breathtaking beaches of Santorini, and indulge in traditional Greek dishes like moussaka and souvlaki.','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Parthenon_%2830276156187%29.jpg/1200px-Parthenon_%2830276156187%29.jpg'),
(5, 'Spain',14.07,48.4,53.55,97,'Spanish','Astur-Leonese, Aragonese, Fala, French, Portuguese','','Spain is a diverse country with a rich cultural heritage. It is known for its vibrant festivals, stunning architecture, and delicious cuisine.','Visit the famous Sagrada Familia in Barcelona, explore the historic streets of Seville, and indulge in tapas and paella.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvCx-6qSsIiNNCT1nkUKDoMQH9wEmuUaE2oA&s'),
(6, 'Italy',13.22,58.9,72.15,195,'Italian','Ladin, Slovene','Other Italo-Dalmatian languages','Italy is a country renowned for its art, history, and cuisine. It is home to iconic landmarks such as the Colosseum, the Leaning Tower of Pisa, and the canals of Venice.','Explore the ancient ruins of Rome, take a gondola ride in Venice, and indulge in authentic Italian pasta and gelato.','https://www.travelandleisure.com/thmb/pH2s7mCAmsjcKWQHsnLz1bAgS7M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/giotto-bell-tower-florence-EDPICKITALY0221-b5b69b7a4da348c9a4528048e8574285.jpg'),
(7, 'Croatia',11.96,46.9,52.4,71,'Croatian','','English','Croatia is a stunning country located on the Adriatic Sea. It is known for its beautiful coastline, historic cities, and crystal-clear waters.','Visit the historic city of Dubrovnik, explore the Plitvice Lakes National Park, and relax on the picturesque beaches of Hvar.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTkRvasRxO07ZC0EceSfybMHmn_Oo_HEVIIw&s'),
(8, 'France',11.65,66,55.31,117,'French','Corsican language, Basque language, Breton language','Occitan language','France is a country known for its art, culture, and gastronomy. It is home to iconic landmarks such as the Eiffel Tower, the Louvre Museum, and the Palace of Versailles.','Explore the charming streets of Paris, visit the beautiful vineyards of Bordeaux, and indulge in delicious French cuisine.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Cwcwjbhob6MIwyhTy1cZs7Za56rTdZAIrw&s'),
(9, 'Hungary',11.5,43.4,49.97,109,'Hungarian','Croatian','','Hungary is a country located in Central Europe. It is known for its rich history, stunning architecture, and thermal baths.','Explore the historic city of Budapest, visit the beautiful Lake Balaton, and indulge in traditional Hungarian dishes like goulash and chimney cake.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Budapest_Hungarian_Parliament_%2831363963556%29.jpg/800px-Budapest_Hungarian_Parliament_%2831363963556%29.jpg'),
(10, 'Bulgaria',11.35,38.7,47.02,61,'Bulgarian','','','Bulgaria is a country located in Southeast Europe. It is known for its beautiful landscapes, rich history, and vibrant culture.','Explore the historic city of Sofia, visit the stunning Rila Monastery, and enjoy the beautiful beaches of the Black Sea coast.',''),
(11, 'Belgium',10.67,63,53.99,383,'Dutch, French, German','','English', 'Belgium is a small country known for its delicious chocolates, waffles, and beers. It is home to beautiful medieval cities, stunning architecture, and vibrant cultural festivals.','Explore the historic city of Bruges, indulge in Belgian chocolates and waffles, and visit the famous Atomium in Brussels.','https://media.timeout.com/images/105237873/image.jpg'),
(12, 'Netherlands',10.49,64.3,54.63,424,'Dutch','Dutch Low Saxon, Dutch Sign Language, Limburgish, Sinte Romani, Yiddish','English','The Netherlands is a country known for its picturesque canals, windmills, and tulip fields. It is famous for its cycling culture, vibrant cities, and rich artistic heritage.','Explore the beautiful city of Amsterdam, visit the historic windmills of Kinderdijk, and admire the colorful tulip fields in Keukenhof.','https://fullsuitcase.com/wp-content/uploads/2020/12/Two-days-in-Amsterdam-Netherlands.jpg.webp'),
(13, 'Romania',10.18,38.8,48.84,83,'Romanian','Armenian, German, Hungarian, Romani, Russian, Serbian, Slovak, Tatar, Turkish, Ukrainian','','Romania is a country located in Eastern Europe. It is known for its stunning landscapes, medieval castles, and vibrant folklore.','Explore the historic city of Bucharest, visit the famous Bran Castle, and hike in the beautiful Carpathian Mountains.','https://cdn-v2.theculturetrip.com/1200x675/wp-content/uploads/2021/05/bran-castle.webp'),
(14, 'Luxembourg',10.02,65.3,56.31,253,'French, German, Luxembourgish','','English, Portuguese','Luxembourg is a small country known for its picturesque landscapes, medieval castles, and rich cultural heritage. It is one of the wealthiest countries in the world.','Explore the charming city of Luxembourg, visit the beautiful Vianden Castle, and enjoy the scenic hiking trails in Mullerthal.','https://worldwildschooling.com/wp-content/uploads/2022/02/PXL_20211125_132742813-Edit-1024x678.jpg'),
(15, 'Slovenia',9.86,49.3,53.13,105,'Slovene','Hungarian, Italian, Croatian','','Slovenia is a country located in Central Europe. It is known for its stunning landscapes, charming towns, and outdoor activities.','Explore the beautiful Lake Bled, visit the historic city of Ljubljana, and hike in the breathtaking Julian Alps.',''),
(16, 'Ireland',9.73,66.5,55.19,72,'Irish, English','', '', 'Ireland is a country known for its stunning landscapes, rich history, and vibrant culture. It is famous for its ancient castles, traditional music, and friendly locals.','Explore the scenic Ring of Kerry, visit the historic Blarney Castle, and enjoy a pint of Guinness in a traditional Irish pub.',''),
(17, 'Germany',9.59,62.7,55.98,233,'German','Danish, Lower Sorbian, North Frisian, Romani','','Germany is a country known for its rich history, stunning architecture, and vibrant cultural scene. It is famous for its castles, beer festivals, and automotive engineering.','Explore the historic city of Berlin, visit the fairy-tale Neuschwanstein Castle, and indulge in traditional German sausages and beer.',''),
(18, 'Denmark',8.9,75.2,55.46,138,'Danish','German','','Denmark is a country known for its beautiful coastline, historic cities, and high quality of life. It is famous for its design, cycling culture, and hygge lifestyle.','Explore the colorful streets of Copenhagen, visit the iconic Little Mermaid statue, and enjoy a bike ride along the Danish Riviera.',''),
(19, 'Slovakia',8.83,47.9,51.7,118,'Slovak','Bulgarian, Czech, German, Hungarian, Polish, Romani, Rusyn, Serbian, Ukrainian','','Slovakia is a country located in Central Europe. It is known for its stunning landscapes, medieval castles, and thermal spas.','Explore the historic city of Bratislava, hike in the Tatra Mountains, and relax in the healing waters of the High Tatras.',''),
(20, 'Poland',8.78,41.9,49.25,120,'Polish','German, Lithuanian, Belarusian, Czech, Hebrew, Yiddish, Lemko, Karaim, Armenian, Romani, Russian, Slovak, Tatar, Ukrainian','English','Poland is a country located in Central Europe. It is known for its rich history, stunning architecture, and hearty cuisine.','Explore the historic city of Krakow, visit the Auschwitz-Birkenau Memorial and Museum, and indulge in traditional Polish pierogi and vodka.',''),
(21, 'Czech Republic',8.6,48.6,53,133,'Czech','Belarusian','','The Czech Republic is a country located in Central Europe. It is known for its beautiful architecture, historic castles, and world-famous beer.','Explore the charming city of Prague, visit the stunning Karlstejn Castle, and enjoy a glass of Czech beer in a traditional pub.',''),
(22, 'Austria',7.44,66.8,54.69,107,'German','Slovene, Czech, Hungarian, Slovak, Romani, Serbian','English','Austria is a country located in the heart of Europe. It is known for its stunning alpine landscapes, historic cities, and rich cultural heritage.','Explore the imperial city of Vienna, visit the picturesque Salzburg, and enjoy outdoor activities in the Austrian Alps.',''),
(23, 'Lithuania',7.38,48.4,49.87,42,'Lithuanian','','Polish, Russian','Lithuania is a country located in the Baltic region of Europe. It is known for its beautiful landscapes, historic castles, and rich cultural heritage.','Explore the historic city of Vilnius, visit the stunning Trakai Castle, and enjoy the beautiful beaches of the Curonian Spit.',''),
(24, 'Latvia',6.87,51.4,50.39,28,'Latvian','','Russian','Latvia is a country located in the Baltic region of Europe. It is known for its beautiful landscapes, historic architecture, and vibrant cultural scene.','Explore the charming streets of Riga, visit the stunning Rundale Palace, and relax on the sandy beaches of Jurmala.',''),
(25, 'Estonia',6.34,53,51.41,29,'Estonian','','Russian','Estonia is a country located in Northern Europe. It is known for its beautiful landscapes, medieval architecture, and advanced digital society.','Explore the charming streets of Tallinn, visit the picturesque Lahemaa National Park, and relax on the pristine beaches of Saaremaa.',''),
(26, 'Sweden',3.23,62.2,56.29,24,'Swedish','Finnish, Meänkieli, Sami, Yiddish, Romani', '','Sweden is a country located in Northern Europe. It is known for its stunning landscapes, modern design, and high quality of life.','Explore the beautiful city of Stockholm, visit the stunning archipelago of Gothenburg, and experience the unique Sami culture in Swedish Lapland.',''),
(27, 'Finland',2.46,65.5,60.53,16,'Finnish, Swedish','Sami','','Finland is a country located in Northern Europe. It is known for its beautiful landscapes, saunas, and the Northern Lights.','Explore the vibrant city of Helsinki, visit the stunning lakes of Lakeland, and experience the magical winter wonderland of Lapland.','');

INSERT INTO states (id, stateName)
VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Indiana'),
(15, 'Iowa'),
(16, 'Kansas'),
(17, 'Kentucky'),
(18, 'Louisiana'),
(19, 'Maine'),
(20, 'Maryland'),
(21, 'Massachusetts'),
(22, 'Michigan'),
(23, 'Minnesota'),
(24, 'Mississippi'),
(25, 'Missouri'),
(26, 'Montana'),
(27, 'Nebraska'),
(28, 'Nevada'),
(29, 'New Hampshire'),
(30, 'New Jersey'),
(31, 'New Mexico'),
(32, 'New York'),
(33, 'North Carolina'),
(34, 'North Dakota'),
(35, 'Ohio'),
(36, 'Oklahoma'),
(37, 'Oregon'),
(38, 'Pennsylvania'),
(39, 'Rhode Island'),
(40, 'South Carolina'),
(41, 'South Dakota'),
(42, 'Tennessee'),
(43, 'Texas'),
(44, 'Utah'),
(45, 'Vermont'),
(46, 'Virginia'),
(47, 'Washington'),
(48, 'West Virginia'),
(49, 'Wisconsin'),
(50, 'Wyoming');

CREATE TABLE `crime_inference` (
  `intercept` DOUBLE,
  `slope` DOUBLE,
  `Belgium` DOUBLE,
  `Bulgaria` DOUBLE,
  `Croatia` DOUBLE,
  `Cyprus` DOUBLE,
  `Czech Republic` DOUBLE,
  `Denmark` DOUBLE,
  `Estonia` DOUBLE,
  `Finland` DOUBLE,
  `France` DOUBLE,
  `Germany` DOUBLE,
  `Greece` DOUBLE,
  `Hungary` DOUBLE,
  `Ireland` DOUBLE,
  `Italy` DOUBLE,
  `Latvia` DOUBLE,
  `Lithuania` DOUBLE,
  `Luxembourg` DOUBLE,
  `Malta` DOUBLE,
  `Netherlands` DOUBLE,
  `Poland` DOUBLE,
  `Portugal` DOUBLE,
  `Romania` DOUBLE,
  `Slovakia` DOUBLE,
  `Slovenia` DOUBLE,
  `Spain` DOUBLE,
  `Sweden` DOUBLE,
  `mean` DOUBLE,
  `std` DOUBLE
);

INSERT INTO `crime_inference` (`intercept`,`slope`,`Belgium`,`Bulgaria`,`Croatia`,`Cyprus`,`Czech Republic`,`Denmark`,`Estonia`,`Finland`,`France`,`Germany`,`Greece`,`Hungary`,`Ireland`,`Italy`,`Latvia`,`Lithuania`,`Luxembourg`,`Malta`,`Netherlands`,`Poland`,`Portugal`,`Romania`,`Slovakia`,`Slovenia`,`Spain`,`Sweden`,`mean`,`std`)
VALUES
(51.49264070186038,-0.025343210280880452,0.8424716479667611,-1.2691509399420773,-1.2048812615335587,-1.3795910056953788,-0.8566285735109374,1.9097863654002227,-0.8902120554633022,0.2667724480188427,0.22277416761115842,-0.031665101792161865,-0.9882232807488893,-0.9072213500072184,-0.36656833259472243,-0.3602529359610256,-1.0859228335473698,-1.1988583364416703,0.1581184130524953,-0.6810311285030006,0.11125987754310729,-1.1580278691345196,-0.8019158227516407,-1.4061150543836602,-1.360419547561036,-0.6506164882732373,-0.9259974743927886,2.5081728537165873,2631.5334814814814,1944.3487156161814);


CREATE TABLE `crime_training` (
  `country` VARCHAR(1024),
  `year` BIGINT,
  `amount` DECIMAL(20, 13)
);

INSERT INTO `crime_training` (`country`,`year`,`amount`)
VALUES
('Austria',2008,3896.74),
('Austria',2009,3906.7400000000007),
('Austria',2010,3308.21),
('Austria',2011,3197.13),
('Austria',2012,3212.1899999999996),
('Austria',2013,3696.5299999999997),
('Austria',2014,3573.58),
('Austria',2015,3397.45),
('Austria',2016,4011.9799999999996),
('Austria',2017,3634.96),
('Austria',2018,3338.02),
('Austria',2019,3450.7200000000003),
('Austria',2020,3051.09),
('Austria',2021,2810.8100000000004),
('Austria',2022,3413.34),
('Belgium',2008,5286.5599999999995),
('Belgium',2009,5371.0199999999995),
('Belgium',2010,5013.710000000001),
('Belgium',2011,5220.0599999999995),
('Belgium',2012,5103.099999999999),
('Belgium',2013,4838.86),
('Belgium',2014,4979.9),
('Belgium',2015,5117.610000000001),
('Belgium',2016,5383.180000000001),
('Belgium',2017,5264.43),
('Belgium',2018,5271.2300000000005),
('Belgium',2019,5426.3499999999985),
('Belgium',2020,4507.370000000001),
('Belgium',2021,4623.029999999999),
('Belgium',2022,5063.959999999999),
('Bulgaria',2008,1125.92),
('Bulgaria',2009,1239.25),
('Bulgaria',2010,1333.8),
('Bulgaria',2011,1185.5099999999998),
('Bulgaria',2012,1101.63),
('Bulgaria',2013,1131.29),
('Bulgaria',2014,1037.75),
('Bulgaria',2015,953.96),
('Bulgaria',2016,839.5),
('Bulgaria',2017,936.95),
('Bulgaria',2018,963.1899999999999),
('Bulgaria',2019,864.5500000000002),
('Bulgaria',2020,737.9600000000002),
('Bulgaria',2021,668.03),
('Bulgaria',2022,765.1199999999999),
('Croatia',2008,1143.28),
('Croatia',2009,1083.63),
('Croatia',2010,1127.77),
('Croatia',2011,1213.3899999999999),
('Croatia',2012,1260.59),
('Croatia',2013,1073.41),
('Croatia',2014,918.8399999999999),
('Croatia',2015,958.37),
('Croatia',2016,1258.0600000000002),
('Croatia',2017,1216.9),
('Croatia',2018,1170.59),
('Croatia',2019,1241.69),
('Croatia',2020,1007.14),
('Croatia',2021,1005.8999999999999),
('Croatia',2022,1079.2899999999997),
('Cyprus',2008,1134.69),
('Cyprus',2009,1045.26),
('Cyprus',2010,975.4),
('Cyprus',2011,1217.85),
('Cyprus',2012,1134.44),
('Cyprus',2013,973.46),
('Cyprus',2014,880.17),
('Cyprus',2015,762.8100000000001),
('Cyprus',2016,732.9800000000001),
('Cyprus',2017,715.62),
('Cyprus',2018,458.82),
('Cyprus',2019,422.06),
('Cyprus',2020,371.4),
('Cyprus',2021,396.88),
('Cyprus',2022,441.56),
('Czech Republic',2008,2458.57),
('Czech Republic',2009,2718.35),
('Czech Republic',2010,2554.0699999999997),
('Czech Republic',2011,2493.08),
('Czech Republic',2012,2341.84),
('Czech Republic',2013,2609.94),
('Czech Republic',2014,2131.42),
('Czech Republic',2015,1665.22),
('Czech Republic',2016,1389.63),
('Czech Republic',2017,1274.8999999999999),
('Czech Republic',2018,1157.5700000000002),
('Czech Republic',2019,1167.0100000000002),
('Czech Republic',2020,965.01),
('Czech Republic',2021,906.5899999999999),
('Czech Republic',2022,1082.5199999999998),
('Denmark',2008,8775.35),
('Denmark',2009,9157.96),
('Denmark',2010,8706.94),
('Denmark',2011,8627.710000000001),
('Denmark',2012,8122.22),
('Denmark',2013,7853.710000000001),
('Denmark',2014,7267.4400000000005),
('Denmark',2015,6528.66),
('Denmark',2016,7213.38),
('Denmark',2017,7012.460000000001),
('Denmark',2018,6492.569999999999),
('Denmark',2019,6144.449999999999),
('Denmark',2020,5442.06),
('Denmark',2021,4807.469999999999),
('Denmark',2022,5446.470000000001),
('Estonia',2008,2781.13),
('Estonia',2009,2580.7400000000002),
('Estonia',2010,2507.95),
('Estonia',2011,2153.33),
('Estonia',2012,2091.26),
('Estonia',2013,1886.1200000000001),
('Estonia',2014,1774.4799999999998),
('Estonia',2015,1488.58),
('Estonia',2016,1463.9000000000003),
('Estonia',2017,1355.9299999999998),
('Estonia',2018,1228.3800000000003),
('Estonia',2019,1134.34),
('Estonia',2020,1092.2),
('Estonia',2021,1214.8399999999997),
('Estonia',2022,1183.0700000000002),
('Finland',2008,3947.57),
('Finland',2009,3991.21),
('Finland',2010,3906.51),
('Finland',2011,4003.25),
('Finland',2012,3631.4700000000003),
('Finland',2013,3546.52),
('Finland',2014,3548.27),
('Finland',2015,3451.95),
('Finland',2016,4234.959999999999),
('Finland',2017,3956.61),
('Finland',2018,3956.4399999999996),
('Finland',2019,4188.999999999999),
('Finland',2020,4675.9400000000005),
('Finland',2021,4289.09),
('Finland',2022,4351.179999999999),
('France',2008,3126.2799999999997),
('France',2009,3854.63),
('France',2010,3547.91),
('France',2011,3580.4700000000003),
('France',2012,3637.21),
('France',2013,3999.5299999999997),
('France',2014,4002.7199999999993),
('France',2015,3915.92),
('France',2016,4725.33),
('France',2017,4059.5299999999997),
('France',2018,4056.3100000000004),
('France',2019,4144.200000000001),
('France',2020,3593.7800000000007),
('France',2021,3891.4),
('France',2022,4261.530000000001),
('Germany',2008,4338.070000000001),
('Germany',2009,2971.81),
('Germany',2010,2832.69),
('Germany',2011,2996.95),
('Germany',2012,2997.45),
('Germany',2013,3032.73),
('Germany',2014,3100.11),
('Germany',2015,3161.1400000000003),
('Germany',2016,4186.839999999999),
('Germany',2017,3917.51),
('Germany',2018,3692.05),
('Germany',2019,3592.7599999999998),
('Germany',2020,3426.7400000000007),
('Germany',2021,3246.3500000000004),
('Germany',2022,3482.77),
('Greece',2008,1354.1100000000001),
('Greece',2009,1493.2599999999998),
('Greece',2010,1718.92),
('Greece',2011,2224.0),
('Greece',2012,1790.08),
('Greece',2013,1595.2400000000002),
('Greece',2014,1459.23),
('Greece',2015,1561.05),
('Greece',2016,1623.93),
('Greece',2017,1699.1799999999998),
('Greece',2018,1461.3600000000001),
('Greece',2019,1511.82),
('Greece',2020,1120.1299999999999),
('Greece',2021,1128.3199999999995),
('Greece',2022,1337.1),
('Hungary',2008,2189.33),
('Hungary',2009,2100.0),
('Hungary',2010,2581.7999999999997),
('Hungary',2011,2565.2),
('Hungary',2012,2621.89),
('Hungary',2013,2192.4700000000003),
('Hungary',2014,1912.0499999999997),
('Hungary',2015,1886.5799999999997),
('Hungary',2016,1524.0599999999997),
('Hungary',2017,1274.53),
('Hungary',2018,1062.2),
('Hungary',2019,902.19),
('Hungary',2020,858.1299999999999),
('Hungary',2021,865.71),
('Hungary',2022,904.0300000000002),
('Ireland',2008,3333.2400000000002),
('Ireland',2009,3292.67),
('Ireland',2010,3197.82),
('Ireland',2011,3131.68),
('Ireland',2012,3038.12),
('Ireland',2013,2983.45),
('Ireland',2014,2988.35),
('Ireland',2015,2743.5899999999997),
('Ireland',2016,2429.16),
('Ireland',2017,2536.91),
('Ireland',2018,2493.4199999999996),
('Ireland',2019,2568.2899999999995),
('Ireland',2020,2067.76),
('Ireland',2021,2081.5399999999995),
('Ireland',2022,2322.4399999999996),
('Italy',2008,3027.45),
('Italy',2009,2837.7),
('Italy',2010,2472.36),
('Italy',2011,2712.42),
('Italy',2012,2817.64),
('Italy',2013,3205.07),
('Italy',2014,3016.7200000000003),
('Italy',2015,2809.1900000000005),
('Italy',2016,2948.91),
('Italy',2017,2809.1899999999996),
('Italy',2018,2752.59),
('Italy',2019,2636.6099999999997),
('Italy',2020,2123.28),
('Italy',2021,2478.79),
('Italy',2022,2744.709999999999),
('Latvia',2008,1738.4699999999998),
('Latvia',2009,1903.4299999999998),
('Latvia',2010,1607.69),
('Latvia',2011,208.38),
('Latvia',2012,1425.67),
('Latvia',2013,1361.8400000000001),
('Latvia',2014,1404.7300000000002),
('Latvia',2015,1376.44),
('Latvia',2016,1587.7599999999998),
('Latvia',2017,1473.67),
('Latvia',2018,1436.19),
('Latvia',2019,1346.0),
('Latvia',2020,1301.6899999999998),
('Latvia',2021,1002.95),
('Latvia',2022,1053.39),
('Lithuania',2008,1396.89),
('Lithuania',2009,1412.1),
('Lithuania',2010,1272.92),
('Lithuania',2011,1292.96),
('Lithuania',2012,1164.63),
('Lithuania',2013,1384.95),
('Lithuania',2014,1397.04),
('Lithuania',2015,1196.82),
('Lithuania',2016,1232.19),
('Lithuania',2017,1146.6299999999999),
('Lithuania',2018,959.25),
('Lithuania',2019,854.4700000000001),
('Lithuania',2020,759.2100000000002),
('Lithuania',2021,687.5899999999999),
('Lithuania',2022,776.86),
('Luxembourg',2008,3268.49),
('Luxembourg',2009,3633.6400000000003),
('Luxembourg',2010,3129.4800000000005),
('Luxembourg',2011,3874.6400000000003),
('Luxembourg',2012,3694.9399999999996),
('Luxembourg',2013,4405.27),
('Luxembourg',2014,4848.09),
('Luxembourg',2015,3720.7),
('Luxembourg',2016,3598.6300000000006),
('Luxembourg',2017,2908.2400000000002),
('Luxembourg',2018,3227.04),
('Luxembourg',2019,3532.0399999999995),
('Luxembourg',2020,3627.5000000000005),
('Luxembourg',2021,3909.39),
('Luxembourg',2022,5132.96),
('Malta',2008,2389.72),
('Malta',2009,2055.1),
('Malta',2010,2269.2),
('Malta',2011,2439.59),
('Malta',2012,2481.6500000000005),
('Malta',2013,2379.89),
('Malta',2014,2263.01),
('Malta',2015,2281.96),
('Malta',2016,2419.99),
('Malta',2017,2390.88),
('Malta',2018,2021.01),
('Malta',2019,1881.22),
('Malta',2020,1385.6299999999999),
('Malta',2021,1795.4000000000005),
('Malta',2022,1582.81),
('Netherlands',2008,7492.470000000001),
('Netherlands',2009,7451.109999999999),
('Netherlands',2010,4077.8200000000006),
('Netherlands',2011,4158.66),
('Netherlands',2012,4116.46),
('Netherlands',2013,4069.88),
('Netherlands',2014,3661.97),
('Netherlands',2015,3374.37),
('Netherlands',2016,3434.1100000000006),
('Netherlands',2017,2662.9),
('Netherlands',2018,2399.11),
('Netherlands',2019,2376.93),
('Netherlands',2020,2046.5),
('Netherlands',2021,1760.11),
('Netherlands',2022,2062.0100000000007),
('Poland',2008,1201.4),
('Poland',2009,1273.08),
('Poland',2010,1287.84),
('Poland',2011,1348.07),
('Poland',2012,1331.5900000000001),
('Poland',2013,1254.87),
('Poland',2014,1041.4099999999999),
('Poland',2015,903.4000000000001),
('Poland',2016,1143.5400000000002),
('Poland',2017,1168.3999999999999),
('Poland',2018,1119.7500000000002),
('Poland',2019,1250.24),
('Poland',2020,1196.9699999999998),
('Poland',2021,1322.0),
('Poland',2022,1282.78),
('Portugal',2008,2521.52),
('Portugal',2009,2370.01),
('Portugal',2010,2114.46),
('Portugal',2011,2162.89),
('Portugal',2012,2047.22),
('Portugal',2013,1878.1200000000001),
('Portugal',2014,1771.3700000000001),
('Portugal',2015,1760.23),
('Portugal',2016,1806.5100000000002),
('Portugal',2017,1770.83),
('Portugal',2018,1755.3499999999997),
('Portugal',2019,1750.35),
('Portugal',2020,1557.01),
('Portugal',2021,1529.57),
('Portugal',2022,1715.99),
('Romania',2008,410.06),
('Romania',2009,461.56999999999994),
('Romania',2010,478.03999999999996),
('Romania',2011,483.9),
('Romania',2012,601.61),
('Romania',2013,613.25),
('Romania',2014,1312.2),
('Romania',2015,857.47),
('Romania',2016,768.9200000000002),
('Romania',2017,887.02),
('Romania',2018,946.28),
('Romania',2019,796.78),
('Romania',2020,739.4999999999999),
('Romania',2021,774.1100000000001),
('Romania',2022,759.1100000000001),
('Slovakia',2008,1116.35),
('Slovakia',2009,1075.23),
('Slovakia',2010,1259.54),
('Slovakia',2011,1118.32),
('Slovakia',2012,1043.23),
('Slovakia',2013,1044.4899999999998),
('Slovakia',2014,915.3600000000001),
('Slovakia',2015,736.8699999999999),
('Slovakia',2016,727.41),
('Slovakia',2017,689.2600000000001),
('Slovakia',2018,596.1299999999998),
('Slovakia',2019,515.9899999999999),
('Slovakia',2020,483.61999999999995),
('Slovakia',2021,433.43),
('Slovakia',2022,467.30999999999995),
('Slovenia',2008,2456.78),
('Slovenia',2009,2484.43),
('Slovenia',2010,2380.3),
('Slovenia',2011,2447.8199999999997),
('Slovenia',2012,2639.7799999999997),
('Slovenia',2013,2799.6800000000003),
('Slovenia',2014,2455.04),
('Slovenia',2015,1913.49),
('Slovenia',2016,2160.3300000000004),
('Slovenia',2017,1970.7199999999998),
('Slovenia',2018,1797.93),
('Slovenia',2019,2159.0599999999995),
('Slovenia',2020,2046.4599999999998),
('Slovenia',2021,1487.9799999999998),
('Slovenia',2022,1724.3100000000002),
('Spain',2008,1654.1),
('Spain',2009,1601.1100000000001),
('Spain',2010,1405.7),
('Spain',2011,1374.8799999999999),
('Spain',2012,1506.46),
('Spain',2013,1469.25),
('Spain',2014,1372.01),
('Spain',2015,1444.94),
('Spain',2016,1727.21),
('Spain',2017,1752.14),
('Spain',2018,1921.1199999999997),
('Spain',2019,1994.2700000000002),
('Spain',2020,1698.2499999999998),
('Spain',2021,1785.8600000000001),
('Spain',2022,2185.2599999999998),
('Sweden',2008,8018.07),
('Sweden',2009,7884.5),
('Sweden',2010,7580.88),
('Sweden',2011,7723.109999999999),
('Sweden',2012,7488.3200000000015),
('Sweden',2013,7398.59),
('Sweden',2014,7189.689999999999),
('Sweden',2015,7175.58),
('Sweden',2016,9402.41),
('Sweden',2017,9633.69),
('Sweden',2018,9620.21),
('Sweden',2019,9423.609999999999),
('Sweden',2020,9299.209999999997),
('Sweden',2021,8730.09),
('Sweden',2022,8482.97);


-- FAKE DATA

-- -- Insert data into users table
-- INSERT INTO users (email, id, age, phone, firstName, lastName, homeStateID, moveLoad) VALUES
-- ('john.doe@example.com', 1, 28, 1234567890, 'John', 'Doe', 1, 'Full Household'),
-- ('jane.smith@example.com', 2, 34, 2345678901, 'Jane', 'Smith', 2, 'Excess Baggage'),
-- ('mike.jones@example.com', 3, 45, 3456789012, 'Mike', 'Jones', 3, 'Full Household'),
-- ('emily.johnson@example.com', 4, 22, 4567890123, 'Emily', 'Johnson', 4, 'Vehicle Only'),
-- ('chris.lee@example.com', 5, 39, 5678901234, 'Chris', 'Lee', 5, 'Vehicle Only');

-- -- -- Insert data into countryRankings table
-- INSERT INTO countryRankings (countryID, rankingNum, id) VALUES
-- (1, 1, 1),
-- (2, 2, 2),
-- (3, 3, 3),
-- (4, 4, 4),
-- (5, 5, 5);

-- -- -- Insert data into rankings table
-- INSERT INTO rankings (userID, rankingID) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 3),
-- (4, 4),
-- (5, 5);

-- -- -- Insert data into movers table
-- INSERT INTO movers (id, moverName, email, phone, bio, stars, numReviews) VALUES
-- (1, 'Fontemoves', 'mover1@example.com', 6789012345, 'bio', 5, 100),
-- (2, 'Gerbamoves', 'mover2@example.com', 7890123456, 'bio', 4, 50),
-- (3, 'Mover 3, 'mover3@example.com', 8901234567, 'bio', 3, 30),
-- (4, 'Mover 4, 'mover4@example.com', 9012345678, 'bio', 5, 200),
-- (5, 'Mover 5, 'mover5@example.com', 1234567890, 'bio', 4, 70);

-- -- -- Insert data into moverContacts table
-- INSERT INTO moverContacts (userID, moverID, dateContacted) VALUES
-- (1, 1, '2023-01-01 10:00:00),
-- (2, 2, '2023-02-01 11:00:00),
-- (3, 3, '2023-03-01 12:00:00),
-- (4, 4, '2023-04-01 13:00:00),
-- (5, 5, '2023-05-01 14:00:00);

-- -- -- Insert data into countryAdmins table
-- INSERT INTO countryAdmins (id, firstName, lastName, bio, countryID) VALUES
-- (1, 'Alice', 'Brown', 'bio', 1),
-- (2, 'Bob', 'White', 'bio', 2),
-- (3, 'Charlie', 'Green', 'bio', 3),
-- (4, 'David', 'Black', 'bio', 4),
-- (5, 'Eva', 'Blue', 'bio', 5);

-- -- -- Insert data into route table
-- INSERT INTO routes (fromStateID, toCountryID, moverID, cost) VALUES
-- (1, 1, 1, 5000),
-- (2, 2, 2, 6000),
-- (3, 3, 3, 7000),
-- (4, 4, 4, 8000),
-- (1, 10, 2, 2000),
-- (5, 5, 5, 9000);

insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (1, 'ebessom0@blogger.com', 'Shufflebeat', '(268) 3388397', 2, 222, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (2, 'rcabrara1@google.pl', 'Thoughtstorm', '(861) 6074369', 5, 222, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (3, 'cbalderstone2@baidu.com', 'Realbuzz', '(538) 4307208', 0, 80, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (4, 'scringle3@nih.gov', 'Vinte', '(260) 3790049', 4, 282, 'Praesent blandit lacinia erat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (5, 'cboast4@pcworld.com', 'Trilith', '(735) 5442787', 5, 326, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (6, 'ygogie5@dropbox.com', 'Skinte', '(391) 7711315', 4, 399, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (7, 'htrimble6@rakuten.co.jp', 'Thoughtsphere', '(122) 8405123', 3, 358, 'Vestibulum sed magna at nunc commodo placerat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (8, 'bburmingham7@usa.gov', 'Aimbu', '(165) 4415299', 4, 136, 'Sed ante.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (9, 'chollingsbee8@opera.com', 'Pixope', '(692) 2239482', 5, 119, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (10, 'jriden9@purevolume.com', 'InnoZ', '(755) 1965022', 4, 253, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (11, 'obaroscha@gizmodo.com', 'Twitterwire', '(579) 5593444', 4, 63, 'Phasellus id sapien in sapien iaculis congue.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (12, 'hemblinb@telegraph.co.uk', 'Thoughtsphere', '(809) 4026232', 2, 69, 'Nulla nisl. Nunc nisl.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (13, 'tcarassc@godaddy.com', 'Riffpedia', '(646) 6603683', 5, 138, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (14, 'kjoynerd@imgur.com', 'Browsedrive', '(424) 5844600', 2, 232, 'Proin eu mi. Nulla ac enim.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (15, 'wcutsforthe@examiner.com', 'Innotype', '(455) 8656987', 5, 244, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (16, 'kpendref@amazon.co.uk', 'Omba', '(390) 4297303', 3, 489, 'Etiam vel augue.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (17, 'apalserg@walmart.com', 'Kimia', '(533) 5918340', 0, 396, 'Vivamus in felis eu sapien cursus vestibulum.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (18, 'gwallworkh@instagram.com', 'Fiveclub', '(426) 8336864', 1, 406, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (19, 'mbooyi@chicagotribune.com', 'Shuffletag', '(710) 6804101', 4, 284, 'Proin risus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (20, 'saslamj@intel.com', 'Skippad', '(585) 7469398', 4, 490, 'Praesent id massa id nisl venenatis lacinia.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (21, 'kwardalek@wordpress.com', 'Zoomcast', '(293) 3292236', 1, 310, 'Nullam sit amet turpis elementum ligula vehicula consequat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (22, 'lbazelyl@merriam-webster.com', 'Jabberbean', '(905) 1185375', 0, 201, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (23, 'lmuckartm@rambler.ru', 'Yakitri', '(681) 5727979', 2, 198, 'Quisque id justo sit amet sapien dignissim vestibulum.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (24, 'ndowbigginn@youtube.com', 'Gigashots', '(895) 4741980', 0, 277, 'Nam nulla.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (25, 'kinkero@zimbio.com', 'Buzzbean', '(952) 3160612', 3, 279, 'Duis aliquam convallis nunc.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (26, 'obackenp@github.io', 'Eayo', '(361) 1129431', 1, 332, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (27, 'hechlinq@dell.com', 'Jayo', '(725) 1074424', 3, 469, 'Praesent id massa id nisl venenatis lacinia.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (28, 'bwilloughwayr@furl.net', 'Jaxspan', '(120) 6718351', 4, 183, 'Quisque ut erat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (29, 'bliversedges@mozilla.org', 'Skimia', '(914) 9128676', 1, 77, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (30, 'gmacivert@hud.gov', 'Flipopia', '(296) 1561337', 0, 459, 'Vivamus vestibulum sagittis sapien.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (31, 'sraspu@aboutads.info', 'Kwinu', '(771) 5020368', 2, 434, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (32, 'atrevearv@fema.gov', 'Buzzster', '(697) 6515166', 1, 332, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (33, 'dmityushinw@typepad.com', 'Jetpulse', '(438) 7384100', 1, 371, 'Praesent lectus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (34, 'ncollsx@dailymail.co.uk', 'Quatz', '(131) 5955266', 5, 337, 'In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (35, 'ghenrysy@shinystat.com', 'Skipfire', '(813) 1701971', 4, 306, 'Morbi vel lectus in quam fringilla rhoncus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (36, 'agrayz@desdev.cn', 'Miboo', '(930) 8086758', 1, 373, 'Aliquam sit amet diam in magna bibendum imperdiet.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (37, 'ccoe10@freewebs.com', 'Jazzy', '(147) 5776632', 2, 227, 'Curabitur at ipsum ac tellus semper interdum.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (38, 'rroke11@ucla.edu', 'Skajo', '(548) 4390840', 5, 496, 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (39, 'aromney12@goo.ne.jp', 'Babbleset', '(488) 7038040', 4, 375, 'Suspendisse potenti.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (40, 'mduffin13@taobao.com', 'Abatz', '(979) 9854582', 2, 230, 'In congue.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (41, 'dfryer14@sourceforge.net', 'Photobug', '(396) 6031540', 1, 303, 'In hac habitasse platea dictumst.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (42, 'kheaysman15@time.com', 'Fanoodle', '(767) 7542472', 3, 340, 'Nunc rhoncus dui vel sem.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (43, 'cbuten16@discovery.com', 'Mymm', '(760) 1720844', 5, 76, 'Nulla ut erat id mauris vulputate elementum.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (44, 'acockett17@reddit.com', 'Trudeo', '(177) 3813586', 5, 280, 'Fusce consequat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (45, 'lswash18@sitemeter.com', 'Jabberbean', '(611) 5801872', 0, 465, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (46, 'tpalfreman19@wunderground.com', 'Aibox', '(559) 7265149', 1, 367, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (47, 'rstacy1a@state.tx.us', 'Jayo', '(240) 6008363', 1, 411, 'Proin eu mi. Nulla ac enim.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (48, 'emacgee1b@cocolog-nifty.com', 'Omba', '(105) 6457758', 0, 147, 'Cras in purus eu magna vulputate luctus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (49, 'nlearoid1c@cisco.com', 'Dabvine', '(865) 8860981', 4, 251, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (50, 'cmcilwaine1d@amazon.co.uk', 'Jetwire', '(517) 6473330', 4, 198, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');

insert into countryAdmins (id, firstName, lastName, bio, countryID) values (1, 'Kandy', 'Winnister', 'Cras pellentesque volutpat dui.', 1);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (2, 'Martynne', 'McKerton', 'Donec posuere metus vitae ipsum.', 2);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (3, 'Bell', 'Stoner', 'Proin eu mi.', 3);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (4, 'Ivonne', 'Abelevitz', 'Nam dui.', 4);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (5, 'Emlyn', 'Aristide', 'Suspendisse ornare consequat lectus.', 5);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (6, 'Leanor', 'Greyes', 'Mauris sit amet eros.', 6);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (7, 'Zonda', 'Sugar', 'Mauris ullamcorper purus sit amet nulla.', 7);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (8, 'Mirelle', 'Mogey', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 8);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (9, 'Bordie', 'Wager', 'Nulla ac enim.', 9);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (10, 'Griffin', 'Jurgenson', 'Aliquam quis turpis eget elit sodales scelerisque.', 10);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (11, 'Meris', 'Shere', 'Nulla ac enim.', 11);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (12, 'Wolfie', 'Ionnidis', 'In quis justo.', 12);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (13, 'Kipper', 'Rulten', 'Etiam vel augue.', 13);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (14, 'Linette', 'Espinola', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 14);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (15, 'Rafaelia', 'L''Homme', 'Integer tincidunt ante vel ipsum.', 15);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (16, 'Dyann', 'Chantler', 'In sagittis dui vel nisl.', 16);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (17, 'Laetitia', 'Fahy', 'In quis justo.', 17);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (18, 'Frieda', 'Ashton', 'Aenean lectus.', 18);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (19, 'Alisander', 'Lawrenson', 'Donec ut mauris eget massa tempor convallis.', 19);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (20, 'Melina', 'Dudliston', 'Suspendisse accumsan tortor quis turpis.', 20);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (21, 'Maxine', 'Berntsson', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 21);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (22, 'Ali', 'Dadge', 'Vivamus tortor.', 22);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (23, 'Fletcher', 'Ojeda', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 23);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (24, 'Harcourt', 'Considine', 'Quisque porta volutpat erat.', 24);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (25, 'Aryn', 'Bessent', 'Proin eu mi.', 25);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (26, 'Janice', 'Urquhart', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 26);
insert into countryAdmins (id, firstName, lastName, bio, countryID) values (27, 'Hakim', 'Gawith', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 27);

insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ggilcrist0@feedburner.com', 19, 'Geneva', 'Gilcrist', 29, 1, '(752) 4785894', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ssuero1@blogspot.com', 24, 'Shirlee', 'Suero', 35, 2, '(451) 8849656', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('dgullivan2@joomla.org', 55, 'Dulcia', 'Gullivan', 47, 3, '(539) 8239175', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('aagar3@biglobe.ne.jp', 63, 'Agna', 'Agar', 1, 4, '(336) 3688704', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('tciotti4@soup.io', 56, 'Ted', 'Ciotti', 30, 5, '(611) 4139730', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cgarbutt5@bluehost.com', 32, 'Clemens', 'Garbutt', 13, 6, '(833) 9504404', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('apinnegar6@hostgator.com', 33, 'Antonie', 'Pinnegar', 12, 7, '(717) 5198812', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('eheam7@elegantthemes.com', 47, 'Erminie', 'Heam', 17, 8, '(796) 6937415', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('jlangland8@google.es', 41, 'Jacenta', 'Langland', 34, 9, '(917) 3206999', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ifanshaw9@arstechnica.com', 82, 'Itch', 'Fanshaw', 49, 10, '(366) 5382598', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ckleimta@networkadvertising.org', 76, 'Claudette', 'Kleimt', 15, 11, '(316) 1366593', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cweatherbyb@cafepress.com', 66, 'Caressa', 'Weatherby', 39, 12, '(679) 6217397', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('forrc@biglobe.ne.jp', 35, 'Fifine', 'Orr', 28, 13, '(868) 2583247', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('wgertzd@marketwatch.com', 77, 'Wittie', 'Gertz', 31, 14, '(747) 1402531', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kgorringe@dyndns.org', 62, 'Klement', 'Gorring', 6, 15, '(279) 3005753', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('rreinaf@usnews.com', 50, 'Rick', 'Reina', 4, 16, '(963) 8400781', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cbenhamg@elpais.com', 69, 'Clea', 'Benham', 8, 17, '(700) 8099483', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('eebrallh@booking.com', 57, 'Emmaline', 'Ebrall', 50, 18, '(463) 1182317', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('naiskriggi@squidoo.com', 29, 'Nealson', 'Aiskrigg', 2, 19, '(269) 1890349', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('dbarkwayj@webmd.com', 53, 'Daveta', 'Barkway', 21, 20, '(941) 3219552', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('qgeroldok@scribd.com', 53, 'Quillan', 'Geroldo', 27, 21, '(369) 6510440', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('pbosenworthl@bloglines.com', 29, 'Pembroke', 'Bosenworth', 9, 22, '(421) 8563213', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mhexhamm@trellian.com', 27, 'Margie', 'Hexham', 24, 23, '(514) 9912070', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gsallansn@epa.gov', 83, 'Gelya', 'Sallans', 10, 24, '(973) 3437889', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('tsecombeo@si.edu', 60, 'Trenna', 'Secombe', 22, 25, '(925) 2438106', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('lcabottop@1688.com', 26, 'Lawrence', 'Cabotto', 43, 26, '(759) 9386548', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kgianettiniq@flickr.com', 55, 'Karlee', 'Gianettini', 42, 27, '(700) 3761165', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cnorthedger@hibu.com', 66, 'Clea', 'Northedge', 32, 28, '(372) 4513982', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ppendletons@mashable.com', 21, 'Priscella', 'Pendleton', 45, 29, '(573) 7181649', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mgarciat@dot.gov', 60, 'Martica', 'Garcia', 14, 30, '(898) 5167496', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ldemkou@ocn.ne.jp', 25, 'Lisette', 'Demko', 33, 31, '(580) 7998079', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('wdreierv@nifty.com', 20, 'Wendeline', 'Dreier', 48, 32, '(509) 8218736', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('fabrashkinw@intel.com', 82, 'Farley', 'Abrashkin', 16, 33, '(195) 6421628', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('rsylettx@posterous.com', 27, 'Rosemonde', 'Sylett', 23, 34, '(883) 1841862', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('jfoulksy@apple.com', 19, 'Johann', 'Foulks', 41, 35, '(492) 5002337', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ipenninoz@google.com', 41, 'Ingeberg', 'Pennino', 46, 36, '(474) 6875429', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('aforlonge10@jugem.jp', 46, 'Amandi', 'Forlonge', 40, 37, '(860) 8133252', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mbrennon11@microsoft.com', 76, 'Mickie', 'Brennon', 44, 38, '(595) 9073856', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('tmarians12@quantcast.com', 80, 'Terri', 'Marians', 5, 39, '(953) 4388237', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ekeddy13@ycombinator.com', 38, 'Everard', 'Keddy', 36, 40, '(551) 6598923', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gcornick14@wikipedia.org', 46, 'Geno', 'Cornick', 3, 41, '(310) 4085492', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bwynes15@dot.gov', 68, 'Barbara', 'Wynes', 20, 42, '(260) 5553981', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bkempe16@accuweather.com', 57, 'Billy', 'Kempe', 26, 43, '(783) 4046277', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('vgheorghie17@nature.com', 62, 'Vivyan', 'Gheorghie', 11, 44, '(962) 6669807', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mcareswell18@sfgate.com', 85, 'Matilda', 'Careswell', 18, 45, '(323) 9194580', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('pmorfell19@oracle.com', 65, 'Piggy', 'Morfell', 7, 46, '(278) 5140377', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('msoftley1a@cafepress.com', 21, 'Marina', 'Softley', 38, 47, '(244) 1887825', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('vohenecan1b@yellowbook.com', 70, 'Verene', 'O''Henecan', 25, 48, '(666) 8154497', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ktingley1c@github.com', 69, 'Kristyn', 'Tingley', 19, 49, '(867) 5507636', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mbortoloni1d@forbes.com', 50, 'Myrtie', 'Bortoloni', 37, 50, '(745) 6725406', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('dkeinrat1e@pen.io', 81, 'Dewitt', 'Keinrat', 26, 51, '(397) 6111491', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bmcalarney1f@mac.com', 24, 'Brandais', 'McAlarney', 25, 52, '(731) 1203484', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('fdugue1g@sohu.com', 26, 'Farrah', 'Dugue', 40, 53, '(236) 3928977', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cskittles1h@europa.eu', 79, 'Cord', 'Skittles', 16, 54, '(805) 8657376', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('lcotgrave1i@thetimes.co.uk', 42, 'Lowrance', 'Cotgrave', 14, 55, '(698) 4629085', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('agregolotti1j@skype.com', 35, 'Amalea', 'Gregolotti', 21, 56, '(470) 6793462', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('hclissell1k@odnoklassniki.ru', 78, 'Heather', 'Clissell', 4, 57, '(907) 2143629', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('sstrathdee1l@rambler.ru', 62, 'Shawnee', 'Strathdee', 36, 58, '(656) 7990619', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gpantin1m@com.com', 70, 'Gabbie', 'Pantin', 1, 59, '(890) 5481922', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ljiran1n@naver.com', 40, 'Lorry', 'Jiran', 7, 60, '(406) 8165280', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('chighton1o@jiathis.com', 75, 'Carie', 'Highton', 23, 61, '(512) 9855543', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gkettow1p@about.com', 52, 'Gaven', 'Kettow', 41, 62, '(519) 5247453', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('candreassen1q@pen.io', 44, 'Calla', 'Andreassen', 48, 63, '(389) 3191059', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('chilling1r@hatena.ne.jp', 43, 'Clementina', 'Hilling', 19, 64, '(265) 2893866', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bskyrm1s@mysql.com', 19, 'Barthel', 'Skyrm', 31, 65, '(655) 8296039', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kboat1t@apple.com', 40, 'Kerrin', 'Boat', 46, 66, '(946) 1656412', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('igrinsted1u@state.gov', 23, 'Isidora', 'Grinsted', 27, 67, '(489) 4269903', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('dyackiminie1v@dagondesign.com', 78, 'Donica', 'Yackiminie', 30, 68, '(959) 5357715', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('iwelsby1w@engadget.com', 30, 'Ingamar', 'Welsby', 39, 69, '(965) 4170812', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ehuckleby1x@freewebs.com', 76, 'Emmeline', 'Huckleby', 3, 70, '(139) 7559327', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('rkaroly1y@amazon.co.uk', 41, 'Ramsay', 'Karoly', 11, 71, '(661) 7584516', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ymayes1z@goo.gl', 21, 'Yolande', 'Mayes', 22, 72, '(619) 7699314', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('alimb20@flickr.com', 39, 'Alessandra', 'Limb', 45, 73, '(846) 6850803', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('npinfold21@netscape.com', 27, 'Norina', 'Pinfold', 49, 74, '(389) 1899685', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cgingle22@dmoz.org', 44, 'Cathi', 'Gingle', 2, 75, '(663) 6264792', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('lprate23@fc2.com', 36, 'Land', 'Prate', 12, 76, '(945) 1490394', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('htrazzi24@accuweather.com', 35, 'Hoebart', 'Trazzi', 18, 77, '(342) 4166348', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gmicallef25@oakley.com', 46, 'Gustie', 'Micallef', 20, 78, '(114) 4478621', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('tstorms26@msn.com', 54, 'Taryn', 'Storms', 5, 79, '(951) 5067430', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ckyngdon27@jugem.jp', 43, 'Cathrin', 'Kyngdon', 17, 80, '(445) 6893713', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ybenazet28@comcast.net', 33, 'Ysabel', 'Benazet', 9, 81, '(501) 4880789', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('orubee29@wordpress.org', 36, 'Ofella', 'Rubee', 34, 82, '(109) 9909299', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mthomlinson2a@google.com', 27, 'Melina', 'Thomlinson', 10, 83, '(186) 6225669', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cnursey2b@tinyurl.com', 24, 'Cynthy', 'Nursey', 37, 84, '(563) 6032940', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kragg2c@dagondesign.com', 31, 'Kelli', 'Ragg', 44, 85, '(629) 7576323', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('eroebuck2d@nyu.edu', 36, 'Estelle', 'Roebuck', 33, 86, '(860) 2333446', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cbarwell2e@home.pl', 32, 'Colene', 'Barwell', 32, 87, '(796) 9250269', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bchesson2f@fema.gov', 30, 'Broddie', 'Chesson', 15, 88, '(269) 9298400', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('scumming2g@hibu.com', 81, 'Sawyere', 'Cumming', 38, 89, '(925) 9302239', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('eroyan2h@va.gov', 68, 'Elyssa', 'Royan', 47, 90, '(255) 1723899', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bblanch2i@scribd.com', 32, 'Bride', 'Blanch', 35, 91, '(518) 2259711', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gickovits2j@unesco.org', 35, 'Garrik', 'Ickovits', 50, 92, '(162) 1175835', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('jralston2k@uiuc.edu', 47, 'Jojo', 'Ralston', 42, 93, '(962) 2263931', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('erothert2l@php.net', 21, 'Emogene', 'Rothert', 8, 94, '(136) 8236781', 'full household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kcrewes2m@google.co.jp', 41, 'Kathlin', 'Crewes', 13, 95, '(957) 5956017', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('zsimonich2n@msn.com', 22, 'Zahara', 'Simonich', 29, 96, '(627) 8736319', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('sgummow2o@histats.com', 55, 'Sauveur', 'Gummow', 28, 97, '(151) 2970293', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('abourchier2p@nba.com', 75, 'Amabel', 'Bourchier', 24, 98, '(102) 5198950', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('alempel2q@w3.org', 39, 'Alicia', 'Lempel', 6, 99, '(167) 2970896', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('alattey2r@ehow.com', 60, 'Ardyth', 'Lattey', 43, 100, '(492) 7667775', 'excess baggage');

insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4505, 32, 19, 26, 1);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7860, 4, 1, 32, 2);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2556, 49, 14, 42, 3);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10562, 50, 12, 37, 4);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1015, 28, 7, 25, 5);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12068, 44, 26, 3, 6);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5901, 30, 10, 19, 7);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12707, 12, 3, 21, 8);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5517, 25, 17, 36, 9);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13188, 18, 18, 9, 10);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6893, 43, 20, 14, 11);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12217, 29, 15, 48, 12);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2248, 1, 8, 49, 13);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13941, 20, 11, 40, 14);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6194, 16, 25, 50, 15);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13962, 21, 23, 29, 16);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11606, 17, 9, 13, 17);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1417, 47, 27, 45, 18);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1484, 42, 2, 39, 19);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3975, 27, 4, 24, 20);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1003, 8, 5, 28, 21);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11513, 11, 13, 33, 22);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14947, 22, 21, 7, 23);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9278, 2, 22, 15, 24);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8649, 34, 6, 8, 25);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5527, 26, 24, 20, 26);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9061, 41, 16, 18, 27);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2567, 46, 27, 30, 28);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5712, 19, 10, 23, 29);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9502, 15, 7, 46, 30);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4007, 13, 19, 47, 31);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1104, 14, 1, 34, 32);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7990, 31, 24, 27, 33);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7032, 23, 6, 10, 34);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2339, 37, 15, 16, 35);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6553, 33, 13, 11, 36);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14811, 24, 20, 43, 37);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (899, 35, 12, 17, 38);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5335, 5, 11, 44, 39);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1733, 48, 4, 38, 40);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3501, 6, 9, 1, 41);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4266, 7, 16, 5, 42);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11653, 36, 14, 4, 43);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7430, 40, 17, 31, 44);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (932, 3, 18, 22, 45);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2796, 38, 23, 6, 46);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13423, 45, 5, 12, 47);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8396, 39, 25, 41, 48);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12751, 9, 22, 35, 49);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9080, 10, 21, 2, 50);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11778, 24, 3, 9, 51);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14982, 22, 8, 42, 52);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5150, 29, 26, 15, 53);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14083, 34, 2, 18, 54);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1706, 46, 11, 31, 55);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5915, 18, 17, 29, 56);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2883, 1, 27, 45, 57);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8133, 3, 9, 38, 58);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14875, 11, 24, 22, 59);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7884, 49, 7, 11, 60);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5054, 30, 20, 1, 61);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4836, 32, 12, 46, 62);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8362, 12, 25, 34, 63);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8764, 36, 6, 49, 64);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4701, 6, 8, 21, 65);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6759, 43, 23, 23, 66);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2525, 48, 4, 26, 67);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1050, 25, 13, 39, 68);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8004, 44, 18, 47, 69);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14136, 42, 1, 28, 70);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6677, 13, 26, 50, 71);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7562, 33, 21, 7, 72);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12537, 37, 5, 35, 73);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1058, 41, 10, 5, 74);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8013, 35, 14, 6, 75);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7478, 26, 16, 36, 76);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1852, 38, 15, 19, 77);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14984, 8, 22, 17, 78);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6378, 40, 2, 41, 79);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3777, 19, 3, 14, 80);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7122, 16, 19, 8, 81);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8318, 4, 4, 32, 82);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12487, 10, 13, 16, 83);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2146, 14, 9, 33, 84);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11053, 23, 5, 44, 85);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14048, 5, 16, 30, 86);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6008, 7, 11, 37, 87);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2395, 9, 23, 48, 88);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7306, 2, 10, 24, 89);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3112, 31, 26, 12, 90);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11104, 21, 12, 27, 91);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14984, 50, 19, 13, 92);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14578, 27, 24, 10, 93);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7556, 28, 3, 3, 94);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14715, 47, 8, 2, 95);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11667, 17, 21, 20, 96);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13179, 20, 6, 40, 97);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9422, 45, 20, 43, 98);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6140, 39, 2, 25, 99);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14568, 15, 1, 4, 100);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6124, 10, 27, 34, 101);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11530, 44, 7, 6, 102);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9970, 17, 15, 8, 103);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (537, 32, 14, 5, 104);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5031, 19, 18, 25, 105);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13892, 36, 22, 41, 106);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9260, 7, 17, 18, 107);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8247, 18, 25, 15, 108);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12654, 12, 14, 3, 109);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11113, 25, 23, 20, 110);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6756, 35, 5, 1, 111);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11677, 33, 3, 19, 112);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6706, 15, 18, 37, 113);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3537, 8, 4, 31, 114);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4412, 40, 11, 21, 115);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7740, 27, 8, 47, 116);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11397, 50, 12, 4, 117);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10746, 16, 1, 42, 118);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3924, 24, 16, 43, 119);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3153, 46, 17, 13, 120);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14191, 20, 27, 30, 121);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (911, 47, 20, 46, 122);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2382, 45, 10, 26, 123);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10492, 30, 2, 35, 124);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7616, 39, 22, 36, 125);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4954, 22, 7, 38, 126);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5561, 14, 24, 2, 127);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10369, 31, 13, 16, 128);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13135, 5, 21, 29, 129);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12843, 11, 26, 45, 130);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9161, 42, 9, 24, 131);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2492, 2, 19, 44, 132);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7970, 4, 6, 33, 133);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11401, 3, 15, 49, 134);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12673, 43, 25, 10, 135);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6326, 41, 8, 50, 136);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6048, 13, 9, 17, 137);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6877, 49, 22, 11, 138);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5892, 6, 24, 12, 139);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5916, 28, 23, 9, 140);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11040, 48, 19, 27, 141);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9891, 29, 20, 22, 142);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2900, 23, 14, 40, 143);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6735, 1, 17, 28, 144);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11742, 38, 7, 48, 145);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9973, 26, 16, 32, 146);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11082, 9, 18, 23, 147);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7864, 21, 6, 14, 148);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11131, 37, 27, 39, 149);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10532, 34, 21, 7, 150);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8238, 13, 12, 9, 151);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8881, 8, 26, 47, 152);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (823, 48, 4, 21, 153);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5370, 33, 3, 18, 154);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12765, 5, 11, 48, 155);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10239, 31, 15, 20, 156);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10895, 35, 10, 36, 157);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14417, 7, 1, 10, 158);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11303, 6, 2, 42, 159);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1749, 24, 13, 31, 160);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7964, 9, 5, 43, 161);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13924, 2, 25, 11, 162);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1001, 38, 18, 34, 163);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7350, 15, 10, 4, 164);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9489, 49, 20, 22, 165);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7026, 29, 11, 13, 166);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (868, 17, 3, 41, 167);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9343, 18, 25, 38, 168);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9569, 25, 14, 50, 169);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9186, 44, 27, 14, 170);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4670, 16, 9, 49, 171);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9241, 22, 5, 28, 172);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5983, 46, 23, 44, 173);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5679, 1, 15, 24, 174);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3262, 50, 2, 5, 175);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11727, 14, 8, 45, 176);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13104, 32, 7, 8, 177);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6835, 30, 17, 39, 178);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11606, 4, 16, 2, 179);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (734, 43, 12, 12, 180);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2231, 23, 13, 23, 181);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8358, 36, 1, 33, 182);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6921, 47, 22, 3, 183);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14559, 11, 6, 19, 184);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12525, 39, 21, 15, 185);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6375, 3, 4, 35, 186);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6324, 40, 26, 27, 187);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8235, 12, 24, 29, 188);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9392, 10, 19, 37, 189);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4895, 28, 21, 16, 190);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (813, 34, 4, 7, 191);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7300, 37, 7, 26, 192);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3880, 26, 3, 1, 193);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11229, 27, 8, 25, 194);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10896, 42, 20, 46, 195);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9222, 20, 5, 6, 196);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6369, 45, 23, 40, 197);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9010, 41, 27, 32, 198);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10755, 19, 11, 30, 199);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8350, 21, 25, 17, 200);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6364, 43, 13, 5, 201);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13924, 47, 12, 42, 202);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7248, 39, 22, 15, 203);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8273, 16, 1, 33, 204);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4280, 35, 17, 46, 205);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4598, 1, 24, 3, 206);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3138, 30, 16, 48, 207);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9887, 44, 15, 30, 208);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5630, 14, 2, 16, 209);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1758, 33, 19, 11, 210);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7784, 38, 14, 10, 211);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (926, 49, 9, 20, 212);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10593, 2, 18, 38, 213);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10510, 21, 26, 49, 214);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11413, 23, 10, 32, 215);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11114, 8, 6, 27, 216);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14340, 50, 2, 40, 217);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3632, 45, 27, 41, 218);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6979, 6, 26, 44, 219);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12212, 40, 24, 35, 220);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1043, 5, 7, 19, 221);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5495, 13, 12, 7, 222);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4932, 42, 9, 24, 223);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14352, 46, 19, 31, 224);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6744, 7, 5, 36, 225);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5470, 10, 3, 9, 226);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6242, 20, 21, 34, 227);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8355, 34, 16, 39, 228);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10478, 36, 8, 28, 229);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7425, 4, 10, 45, 230);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13661, 28, 13, 2, 231);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1768, 17, 20, 22, 232);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5358, 11, 6, 29, 233);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7045, 41, 11, 18, 234);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7319, 15, 1, 12, 235);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11039, 27, 22, 23, 236);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11382, 24, 18, 43, 237);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3745, 32, 15, 21, 238);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1850, 26, 4, 4, 239);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14177, 19, 17, 8, 240);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9069, 9, 25, 17, 241);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11786, 25, 23, 50, 242);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9204, 31, 14, 26, 243);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3561, 48, 18, 14, 244);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13118, 37, 1, 6, 245);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3076, 12, 2, 25, 246);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5919, 3, 26, 37, 247);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10814, 18, 13, 1, 248);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2561, 29, 11, 13, 249);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8135, 22, 9, 47, 250);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3825, 21, 22, 28, 251);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10154, 19, 20, 17, 252);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10683, 25, 3, 42, 253);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7656, 50, 14, 13, 254);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12681, 27, 19, 14, 255);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4440, 5, 21, 39, 256);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6618, 9, 7, 37, 257);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5073, 38, 23, 31, 258);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (709, 31, 12, 45, 259);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1056, 11, 16, 5, 260);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3249, 23, 8, 16, 261);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4803, 47, 10, 34, 262);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2865, 15, 5, 40, 263);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8232, 8, 25, 33, 264);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13754, 35, 27, 29, 265);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12509, 10, 24, 36, 266);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5322, 42, 15, 20, 267);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6637, 40, 4, 4, 268);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8743, 37, 6, 48, 269);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12235, 3, 17, 7, 270);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10850, 14, 15, 6, 271);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6592, 20, 17, 46, 272);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5737, 12, 1, 32, 273);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11968, 13, 22, 15, 274);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10854, 39, 14, 18, 275);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3712, 26, 11, 10, 276);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13761, 1, 24, 44, 277);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3763, 28, 9, 9, 278);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6806, 4, 4, 25, 279);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1740, 22, 13, 23, 280);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14936, 7, 21, 49, 281);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14182, 30, 8, 43, 282);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9397, 17, 2, 8, 283);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (592, 41, 26, 12, 284);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11058, 48, 25, 35, 285);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11705, 6, 19, 21, 286);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13271, 43, 5, 24, 287);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6164, 45, 27, 1, 288);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10418, 18, 12, 27, 289);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3238, 49, 16, 30, 290);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11367, 34, 10, 3, 291);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10660, 24, 6, 26, 292);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10856, 36, 18, 19, 293);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11833, 2, 23, 22, 294);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2982, 46, 20, 50, 295);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13082, 16, 7, 2, 296);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7910, 44, 3, 38, 297);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13897, 33, 8, 41, 298);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9197, 29, 22, 47, 299);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6204, 32, 3, 11, 300);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5249, 18, 19, 11, 301);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4249, 24, 25, 45, 302);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3823, 21, 26, 49, 303);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7995, 30, 1, 13, 304);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14393, 19, 23, 14, 305);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11003, 47, 7, 50, 306);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10489, 45, 6, 25, 307);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2227, 42, 13, 20, 308);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13063, 44, 15, 38, 309);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14031, 35, 16, 1, 310);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14870, 40, 2, 36, 311);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3220, 23, 18, 23, 312);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7080, 32, 5, 12, 313);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6854, 43, 11, 2, 314);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9884, 46, 12, 30, 315);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2668, 25, 27, 35, 316);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9964, 11, 9, 6, 317);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7249, 31, 17, 37, 318);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7027, 13, 21, 9, 319);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6040, 6, 24, 46, 320);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7863, 29, 10, 41, 321);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11481, 48, 20, 22, 322);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5999, 14, 14, 5, 323);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7437, 16, 4, 18, 324);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13276, 39, 12, 7, 325);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3362, 9, 19, 26, 326);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (603, 8, 9, 8, 327);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6168, 12, 23, 10, 328);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8757, 49, 2, 16, 329);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8310, 37, 21, 47, 330);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13233, 3, 13, 3, 331);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1228, 36, 18, 4, 332);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3778, 41, 16, 39, 333);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7561, 28, 6, 17, 334);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12007, 20, 8, 43, 335);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14826, 17, 15, 40, 336);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11681, 22, 1, 29, 337);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8132, 50, 26, 48, 338);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12399, 33, 27, 19, 339);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7693, 2, 11, 21, 340);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6662, 38, 14, 33, 341);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5135, 27, 7, 32, 342);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5152, 5, 3, 28, 343);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9749, 4, 17, 42, 344);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7768, 34, 10, 15, 345);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11978, 26, 20, 44, 346);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6056, 10, 5, 34, 347);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8464, 1, 24, 24, 348);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14962, 15, 4, 31, 349);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5684, 7, 22, 27, 350);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6350, 39, 25, 1, 351);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10556, 41, 26, 8, 352);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2772, 49, 17, 14, 353);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9001, 18, 11, 4, 354);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6096, 34, 1, 34, 355);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6375, 35, 14, 32, 356);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12493, 48, 25, 37, 357);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6760, 37, 16, 43, 358);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5200, 8, 22, 20, 359);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10096, 20, 12, 49, 360);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9361, 21, 21, 31, 361);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10252, 13, 2, 27, 362);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6540, 50, 23, 42, 363);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3682, 45, 19, 41, 364);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14043, 25, 18, 40, 365);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2565, 5, 15, 38, 366);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7719, 3, 4, 21, 367);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1205, 19, 7, 46, 368);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11674, 15, 9, 7, 369);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14019, 26, 6, 13, 370);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1689, 16, 8, 35, 371);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10556, 43, 10, 3, 372);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8687, 23, 20, 18, 373);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9619, 17, 5, 29, 374);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4746, 44, 24, 44, 375);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14487, 36, 3, 45, 376);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10681, 32, 13, 48, 377);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10259, 9, 27, 36, 378);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3047, 6, 1, 33, 379);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11405, 31, 21, 28, 380);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12536, 1, 17, 23, 381);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9099, 24, 15, 26, 382);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5011, 29, 11, 11, 383);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13427, 28, 12, 12, 384);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6372, 12, 24, 50, 385);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14481, 40, 8, 6, 386);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8645, 47, 14, 24, 387);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6885, 7, 26, 2, 388);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (802, 2, 10, 30, 389);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7369, 46, 16, 5, 390);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11805, 10, 20, 15, 391);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11768, 38, 13, 39, 392);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10881, 14, 27, 25, 393);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1793, 22, 4, 17, 394);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9040, 27, 22, 9, 395);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12209, 42, 9, 10, 396);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8927, 4, 7, 22, 397);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1284, 33, 18, 16, 398);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2762, 11, 19, 47, 399);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14677, 30, 25, 19, 400);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4139, 15, 6, 50, 401);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5239, 7, 3, 1, 402);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2416, 3, 23, 4, 403);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9406, 37, 2, 18, 404);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2017, 19, 5, 16, 405);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9385, 31, 6, 7, 406);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (512, 9, 8, 36, 407);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9943, 23, 21, 12, 408);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11946, 11, 12, 32, 409);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11481, 22, 20, 31, 410);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14277, 16, 3, 45, 411);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5418, 10, 27, 49, 412);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8177, 2, 5, 46, 413);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9173, 4, 19, 19, 414);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1989, 18, 23, 21, 415);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4919, 12, 11, 8, 416);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14063, 30, 15, 20, 417);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12392, 25, 25, 17, 418);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7428, 21, 2, 34, 419);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12781, 17, 16, 22, 420);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2489, 29, 24, 2, 421);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5064, 1, 22, 42, 422);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13146, 32, 18, 25, 423);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4388, 5, 17, 33, 424);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5169, 34, 4, 29, 425);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8010, 35, 7, 10, 426);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11411, 46, 26, 13, 427);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6137, 24, 1, 24, 428);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4983, 14, 14, 35, 429);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10294, 43, 13, 15, 430);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14271, 27, 9, 40, 431);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14538, 44, 10, 5, 432);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6832, 48, 21, 11, 433);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1901, 50, 20, 6, 434);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4174, 49, 19, 41, 435);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5892, 45, 14, 43, 436);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12845, 38, 15, 37, 437);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12338, 6, 17, 26, 438);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11286, 47, 7, 30, 439);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9556, 28, 4, 23, 440);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11611, 26, 10, 27, 441);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11620, 20, 11, 9, 442);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10886, 13, 8, 47, 443);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6747, 39, 12, 38, 444);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10886, 33, 18, 14, 445);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6303, 36, 3, 39, 446);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (3725, 8, 1, 28, 447);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10820, 41, 5, 48, 448);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2782, 42, 22, 44, 449);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13860, 40, 25, 3, 450);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13133, 47, 2, 45, 451);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7492, 50, 23, 33, 452);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10176, 9, 9, 22, 453);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5315, 34, 24, 37, 454);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7922, 18, 27, 43, 455);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5143, 13, 6, 12, 456);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4295, 35, 26, 18, 457);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14569, 46, 13, 27, 458);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12535, 11, 16, 8, 459);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9243, 24, 20, 28, 460);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12625, 28, 12, 41, 461);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (9715, 6, 25, 25, 462);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6193, 8, 15, 36, 463);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10295, 33, 1, 17, 464);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4748, 37, 23, 42, 465);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2203, 48, 19, 44, 466);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11514, 40, 3, 39, 467);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (1742, 43, 27, 50, 468);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7433, 21, 6, 21, 469);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10458, 4, 4, 49, 470);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7570, 19, 9, 30, 471);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6646, 12, 24, 40, 472);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5829, 27, 17, 7, 473);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6358, 5, 5, 13, 474);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10835, 41, 8, 32, 475);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5951, 2, 18, 10, 476);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6753, 31, 22, 11, 477);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7299, 32, 16, 35, 478);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (12382, 1, 10, 34, 479);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10329, 26, 14, 47, 480);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10220, 45, 2, 5, 481);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (967, 49, 26, 14, 482);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (10655, 39, 7, 6, 483);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7873, 36, 11, 9, 484);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13863, 42, 21, 16, 485);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (2937, 25, 13, 15, 486);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11298, 30, 24, 38, 487);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (11816, 22, 5, 4, 488);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14663, 44, 22, 26, 489);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (8563, 15, 14, 1, 490);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4529, 16, 9, 29, 491);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (14164, 3, 20, 46, 492);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4817, 29, 26, 24, 493);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4107, 14, 19, 19, 494);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (687, 17, 3, 2, 495);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (4339, 20, 15, 48, 496);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (5822, 7, 21, 23, 497);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (13169, 23, 1, 3, 498);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (7029, 38, 11, 31, 499);
insert into routes (cost, fromStateID, toCountryID, moverID, id) values (6769, 10, 6, 20, 500);

insert into moverContacts (userID, moverID, dateContacted, routeID) values (47, 34, '2023-02-02 18:51:18', 191);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (9, 3, '2024-04-06 10:33:13', 116);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (6, 17, '2024-05-25 07:14:00', 467);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (44, 31, '2023-04-12 16:02:45', 72);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (59, 2, '2023-11-15 12:42:02', 444);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (55, 42, '2023-06-30 13:23:42', 326);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (68, 14, '2023-12-02 13:33:27', 245);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (24, 11, '2023-07-11 18:52:48', 459);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (36, 4, '2023-06-20 05:05:57', 463);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (90, 13, '2024-03-27 21:35:53', 464);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (37, 32, '2023-06-15 23:07:31', 341);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (84, 21, '2024-03-26 23:00:30', 394);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (39, 28, '2023-10-28 01:17:34', 241);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (7, 26, '2023-04-07 20:03:16', 3);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (17, 30, '2022-12-26 05:08:48', 243);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (3, 38, '2024-01-08 17:49:29', 339);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (4, 5, '2023-04-28 07:31:05', 323);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (15, 33, '2023-07-02 14:35:31', 474);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (30, 40, '2024-03-17 21:33:40', 297);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (98, 12, '2023-08-06 08:23:23', 321);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (65, 8, '2023-07-24 11:40:31', 486);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (40, 43, '2024-04-24 05:57:57', 17);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (31, 7, '2023-11-25 06:31:01', 395);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (93, 36, '2023-06-29 17:01:52', 471);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (57, 20, '2023-01-11 21:34:23', 286);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (97, 45, '2024-04-16 15:54:44', 93);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (13, 9, '2023-11-20 13:49:16', 485);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (34, 39, '2023-12-22 21:10:01', 29);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (38, 6, '2023-12-10 06:28:53', 408);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (74, 16, '2024-03-17 09:06:06', 469);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (49, 15, '2023-11-24 20:43:11', 424);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (18, 44, '2023-11-01 15:42:26', 482);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (32, 25, '2024-03-09 03:45:56', 415);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (22, 41, '2023-10-08 00:13:41', 406);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (96, 46, '2023-09-27 14:37:11', 418);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (73, 10, '2023-10-06 05:21:25', 250);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (14, 23, '2023-07-04 15:44:05', 495);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (61, 35, '2024-03-13 06:04:11', 129);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (66, 22, '2023-05-23 00:45:48', 102);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (91, 1, '2023-09-15 07:04:19', 453);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (23, 50, '2023-07-26 11:05:31', 176);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (28, 47, '2023-01-29 05:49:16', 83);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (83, 48, '2024-02-20 18:20:51', 168);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (72, 49, '2024-02-03 17:02:48', 81);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (63, 37, '2023-06-06 11:28:36', 255);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (80, 29, '2023-04-12 10:01:46', 493);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (35, 24, '2023-07-18 18:00:35', 187);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (64, 27, '2023-03-01 04:17:03', 451);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (41, 19, '2024-05-14 10:14:32', 11);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (87, 18, '2023-11-07 02:47:16', 314);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (27, 21, '2023-03-16 20:16:51', 433);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (29, 9, '2023-06-08 13:27:13', 87);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (88, 28, '2023-12-12 13:19:58', 66);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (21, 27, '2024-05-27 19:09:48', 278);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (42, 6, '2023-12-23 02:31:58', 43);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (43, 50, '2023-01-29 15:41:30', 315);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (56, 20, '2024-05-01 18:49:01', 23);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (26, 16, '2023-08-14 03:14:58', 260);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (10, 29, '2022-12-30 15:37:08', 397);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (85, 2, '2023-01-08 20:05:21', 161);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (70, 18, '2023-07-08 12:22:36', 158);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (94, 33, '2023-03-17 00:07:22', 447);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (67, 17, '2023-09-24 00:01:37', 100);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (54, 32, '2023-01-21 05:48:58', 130);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (95, 43, '2023-09-29 08:03:22', 425);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (45, 42, '2023-06-09 13:07:38', 318);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (2, 19, '2024-05-23 05:20:50', 214);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (79, 11, '2023-07-18 23:57:34', 210);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (78, 23, '2023-12-15 05:33:20', 39);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (46, 5, '2023-08-25 18:37:01', 320);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (1, 44, '2023-02-06 06:47:30', 24);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (71, 1, '2023-01-19 17:04:43', 85);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (99, 40, '2024-02-18 11:54:24', 65);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (33, 37, '2024-05-25 07:28:04', 460);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (5, 48, '2023-01-31 17:11:25', 472);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (19, 13, '2024-02-25 21:03:24', 146);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (82, 3, '2024-06-05 13:00:44', 427);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (51, 15, '2023-07-26 19:25:42', 112);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (89, 38, '2023-10-29 05:56:09', 283);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (100, 26, '2024-03-21 00:23:01', 345);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (20, 45, '2024-01-03 05:20:35', 443);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (76, 8, '2023-03-30 14:57:42', 57);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (77, 47, '2023-04-23 23:55:45', 136);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (16, 31, '2024-02-24 02:47:56', 381);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (50, 7, '2024-03-15 22:41:50', 80);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (11, 4, '2024-05-16 11:10:14', 185);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (75, 41, '2024-05-08 11:22:12', 134);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (12, 36, '2023-02-21 08:52:06', 44);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (81, 14, '2023-03-12 15:07:49', 296);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (86, 49, '2023-12-12 19:39:48', 232);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (48, 34, '2024-05-24 00:13:37', 331);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (92, 30, '2024-01-06 06:19:59', 280);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (60, 25, '2024-02-13 00:59:48', 138);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (58, 39, '2023-05-07 02:49:28', 276);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (25, 46, '2024-02-12 18:22:52', 355);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (8, 22, '2024-05-13 17:33:05', 466);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (62, 24, '2023-01-03 08:03:10', 179);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (69, 10, '2023-11-09 20:09:31', 7);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (52, 12, '2024-03-27 17:46:24', 33);
insert into moverContacts (userID, moverID, dateContacted, routeID) values (53, 35, '2024-05-05 09:16:03', 78);
