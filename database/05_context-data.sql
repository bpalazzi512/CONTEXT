USE context;

-- REAL DATA

INSERT INTO countries (id, name, avg_temp, cost_of_life, healthcare_index, pop_density, official_lang, minority_lang, widely_spoken_lang, bio, tips, img_link)
VALUES
(0, 'Malta',19.58,55.1,53.59,1700,'English, Spanish','','','Malta is a beautiful island country located in the Mediterranean Sea. It is known for its rich history, stunning architecture, and vibrant culture.','Explore the charming streets of Valletta, visit the ancient temples of Hagar Qim, and relax on the picturesque beaches of Gozo.','https://assets.vogue.com/photos/599365b2f0b0e21484d3436e/master/w_2560%2Cc_limit/00-lede-a-travel-guide-to-malta.jpg'),
(1, 'Cyprus',18.95,57.1,53.74,136,'Greek','', 'English','Cyprus is a Mediterranean island known for its beautiful beaches, ancient ruins, and rich cultural heritage. It offers a perfect blend of history, nature, and relaxation.','Visit the UNESCO World Heritage site of Paphos, explore the stunning Troodos Mountains, and indulge in delicious Cypriot cuisine.','https://www.travelandleisure.com/thmb/_HcHZ4Gr8jbDJ5vcHYzR7a4lXvA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/TAL-kourion-archaeological-site-CYPRUS0124-3e8854b03a754966a1a11e4b6dd356c3.jpg'),
(2, 'Portugal',15.85,46.6,54.95,111,'Portuguese','', 'English','Portugal is a charming country located on the Iberian Peninsula. It is famous for its beautiful coastline, historic cities, and warm hospitality.','Discover the historic neighborhoods of Lisbon, explore the vineyards of the Douro Valley, and relax on the stunning beaches of the Algarve.','https://images.winalist.com/blog/wp-content/uploads/2023/06/26110037/AdobeStock_79650880-1-1500x1000.jpeg'),
(3, 'Greece',14.26,54.2,52.5,78,'Greek','', '','Greece is a country with a rich history and stunning natural beauty. It is known for its ancient ruins, beautiful islands, and delicious cuisine.','Explore the iconic Acropolis in Athens, relax on the breathtaking beaches of Santorini, and indulge in traditional Greek dishes like moussaka and souvlaki.','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Parthenon_%2830276156187%29.jpg/1200px-Parthenon_%2830276156187%29.jpg'),
(4, 'Spain',14.07,48.4,53.55,97,'Spanish','Astur-Leonese, Aragonese, Fala, French, Portuguese','','Spain is a diverse country with a rich cultural heritage. It is known for its vibrant festivals, stunning architecture, and delicious cuisine.','Visit the famous Sagrada Familia in Barcelona, explore the historic streets of Seville, and indulge in tapas and paella.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvCx-6qSsIiNNCT1nkUKDoMQH9wEmuUaE2oA&s'),
(5, 'Italy',13.22,58.9,72.15,195,'Italian','Ladin, Slovene','Other Italo-Dalmatian languages','Italy is a country renowned for its art, history, and cuisine. It is home to iconic landmarks such as the Colosseum, the Leaning Tower of Pisa, and the canals of Venice.','Explore the ancient ruins of Rome, take a gondola ride in Venice, and indulge in authentic Italian pasta and gelato.','https://www.travelandleisure.com/thmb/pH2s7mCAmsjcKWQHsnLz1bAgS7M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/giotto-bell-tower-florence-EDPICKITALY0221-b5b69b7a4da348c9a4528048e8574285.jpg'),
(6, 'Croatia',11.96,46.9,52.4,71,'Croatian','','English','Croatia is a stunning country located on the Adriatic Sea. It is known for its beautiful coastline, historic cities, and crystal-clear waters.','Visit the historic city of Dubrovnik, explore the Plitvice Lakes National Park, and relax on the picturesque beaches of Hvar.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTkRvasRxO07ZC0EceSfybMHmn_Oo_HEVIIw&s'),
(7, 'France',11.65,66,55.31,117,'French','Corsican language, Basque language, Breton language','Occitan language','France is a country known for its art, culture, and gastronomy. It is home to iconic landmarks such as the Eiffel Tower, the Louvre Museum, and the Palace of Versailles.','Explore the charming streets of Paris, visit the beautiful vineyards of Bordeaux, and indulge in delicious French cuisine.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Cwcwjbhob6MIwyhTy1cZs7Za56rTdZAIrw&s'),
(8, 'Hungary',11.5,43.4,49.97,109,'Hungarian','Croatian','','Hungary is a country located in Central Europe. It is known for its rich history, stunning architecture, and thermal baths.','Explore the historic city of Budapest, visit the beautiful Lake Balaton, and indulge in traditional Hungarian dishes like goulash and chimney cake.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Budapest_Hungarian_Parliament_%2831363963556%29.jpg/800px-Budapest_Hungarian_Parliament_%2831363963556%29.jpg'),
(9, 'Bulgaria',11.35,38.7,47.02,61,'Bulgarian','','','Bulgaria is a country located in Southeast Europe. It is known for its beautiful landscapes, rich history, and vibrant culture.','Explore the historic city of Sofia, visit the stunning Rila Monastery, and enjoy the beautiful beaches of the Black Sea coast.',''),
(10, 'Belgium',10.67,63,53.99,383,'Dutch, French, German','','English', 'Belgium is a small country known for its delicious chocolates, waffles, and beers. It is home to beautiful medieval cities, stunning architecture, and vibrant cultural festivals.','Explore the historic city of Bruges, indulge in Belgian chocolates and waffles, and visit the famous Atomium in Brussels.','https://media.timeout.com/images/105237873/image.jpg'),
(11, 'Netherlands',10.49,64.3,54.63,424,'Dutch','Dutch Low Saxon, Dutch Sign Language, Limburgish, Sinte Romani, Yiddish','English','The Netherlands is a country known for its picturesque canals, windmills, and tulip fields. It is famous for its cycling culture, vibrant cities, and rich artistic heritage.','Explore the beautiful city of Amsterdam, visit the historic windmills of Kinderdijk, and admire the colorful tulip fields in Keukenhof.','https://fullsuitcase.com/wp-content/uploads/2020/12/Two-days-in-Amsterdam-Netherlands.jpg.webp'),
(12, 'Romania',10.18,38.8,48.84,83,'Romanian','Armenian, German, Hungarian, Romani, Russian, Serbian, Slovak, Tatar, Turkish, Ukrainian','','Romania is a country located in Eastern Europe. It is known for its stunning landscapes, medieval castles, and vibrant folklore.','Explore the historic city of Bucharest, visit the famous Bran Castle, and hike in the beautiful Carpathian Mountains.','https://cdn-v2.theculturetrip.com/1200x675/wp-content/uploads/2021/05/bran-castle.webp'),
(13, 'Luxembourg',10.02,65.3,56.31,253,'French, German, Luxembourgish','','English, Portuguese','Luxembourg is a small country known for its picturesque landscapes, medieval castles, and rich cultural heritage. It is one of the wealthiest countries in the world.','Explore the charming city of Luxembourg, visit the beautiful Vianden Castle, and enjoy the scenic hiking trails in Mullerthal.','https://worldwildschooling.com/wp-content/uploads/2022/02/PXL_20211125_132742813-Edit-1024x678.jpg'),
(14, 'Slovenia',9.86,49.3,53.13,105,'Slovene','Hungarian, Italian, Croatian','','Slovenia is a country located in Central Europe. It is known for its stunning landscapes, charming towns, and outdoor activities.','Explore the beautiful Lake Bled, visit the historic city of Ljubljana, and hike in the breathtaking Julian Alps.',''),
(15, 'Ireland',9.73,66.5,55.19,72,'Irish, English','', '', 'Ireland is a country known for its stunning landscapes, rich history, and vibrant culture. It is famous for its ancient castles, traditional music, and friendly locals.','Explore the scenic Ring of Kerry, visit the historic Blarney Castle, and enjoy a pint of Guinness in a traditional Irish pub.',''),
(16, 'Germany',9.59,62.7,55.98,233,'German','Danish, Lower Sorbian, North Frisian, Romani','','Germany is a country known for its rich history, stunning architecture, and vibrant cultural scene. It is famous for its castles, beer festivals, and automotive engineering.','Explore the historic city of Berlin, visit the fairy-tale Neuschwanstein Castle, and indulge in traditional German sausages and beer.',''),
(17, 'Denmark',8.9,75.2,55.46,138,'Danish','German','','Denmark is a country known for its beautiful coastline, historic cities, and high quality of life. It is famous for its design, cycling culture, and hygge lifestyle.','Explore the colorful streets of Copenhagen, visit the iconic Little Mermaid statue, and enjoy a bike ride along the Danish Riviera.',''),
(18, 'Slovakia',8.83,47.9,51.7,118,'Slovak','Bulgarian, Czech, German, Hungarian, Polish, Romani, Rusyn, Serbian, Ukrainian','','Slovakia is a country located in Central Europe. It is known for its stunning landscapes, medieval castles, and thermal spas.','Explore the historic city of Bratislava, hike in the Tatra Mountains, and relax in the healing waters of the High Tatras.',''),
(19, 'Poland',8.78,41.9,49.25,120,'Polish','German, Lithuanian, Belarusian, Czech, Hebrew, Yiddish, Lemko, Karaim, Armenian, Romani, Russian, Slovak, Tatar, Ukrainian','English','Poland is a country located in Central Europe. It is known for its rich history, stunning architecture, and hearty cuisine.','Explore the historic city of Krakow, visit the Auschwitz-Birkenau Memorial and Museum, and indulge in traditional Polish pierogi and vodka.',''),
(20, 'Czech Republic',8.6,48.6,53,133,'Czech','Belarusian','','The Czech Republic is a country located in Central Europe. It is known for its beautiful architecture, historic castles, and world-famous beer.','Explore the charming city of Prague, visit the stunning Karlstejn Castle, and enjoy a glass of Czech beer in a traditional pub.',''),
(21, 'Austria',7.44,66.8,54.69,107,'German','Slovene, Czech, Hungarian, Slovak, Romani, Serbian','English','Austria is a country located in the heart of Europe. It is known for its stunning alpine landscapes, historic cities, and rich cultural heritage.','Explore the imperial city of Vienna, visit the picturesque Salzburg, and enjoy outdoor activities in the Austrian Alps.',''),
(22, 'Lithuania',7.38,48.4,49.87,42,'Lithuanian','','Polish, Russian','Lithuania is a country located in the Baltic region of Europe. It is known for its beautiful landscapes, historic castles, and rich cultural heritage.','Explore the historic city of Vilnius, visit the stunning Trakai Castle, and enjoy the beautiful beaches of the Curonian Spit.',''),
(23, 'Latvia',6.87,51.4,50.39,28,'Latvian','','Russian','Latvia is a country located in the Baltic region of Europe. It is known for its beautiful landscapes, historic architecture, and vibrant cultural scene.','Explore the charming streets of Riga, visit the stunning Rundale Palace, and relax on the sandy beaches of Jurmala.',''),
(24, 'Estonia',6.34,53,51.41,29,'Estonian','','Russian','Estonia is a country located in Northern Europe. It is known for its beautiful landscapes, medieval architecture, and advanced digital society.','Explore the charming streets of Tallinn, visit the picturesque Lahemaa National Park, and relax on the pristine beaches of Saaremaa.',''),
(25, 'Sweden',3.23,62.2,56.29,24,'Swedish','Finnish, Meänkieli, Sami, Yiddish, Romani', '','Sweden is a country located in Northern Europe. It is known for its stunning landscapes, modern design, and high quality of life.','Explore the beautiful city of Stockholm, visit the stunning archipelago of Gothenburg, and experience the unique Sami culture in Swedish Lapland.',''),
(26, 'Finland',2.46,65.5,60.53,16,'Finnish, Swedish','Sami','','Finland is a country located in Northern Europe. It is known for its beautiful landscapes, saunas, and the Northern Lights.','Explore the vibrant city of Helsinki, visit the stunning lakes of Lakeland, and experience the magical winter wonderland of Lapland.','');

INSERT INTO states (id, stateName)
VALUES
(0, 'Alabama'),
(1, 'Alaska'),
(2, 'Arizona'),
(3, 'Arkansas'),
(4, 'California'),
(5, 'Colorado'),
(6, 'Connecticut'),
(7, 'Delaware'),
(8, 'Florida'),
(9, 'Georgia'),
(10, 'Hawaii'),
(11, 'Idaho'),
(12, 'Illinois'),
(13, 'Indiana'),
(14, 'Iowa'),
(15, 'Kansas'),
(16, 'Kentucky'),
(17, 'Louisiana'),
(18, 'Maine'),
(19, 'Maryland'),
(20, 'Massachusetts'),
(21, 'Michigan'),
(22, 'Minnesota'),
(23, 'Mississippi'),
(24, 'Missouri'),
(25, 'Montana'),
(26, 'Nebraska'),
(27, 'Nevada'),
(28, 'New Hampshire'),
(29, 'New Jersey'),
(30, 'New Mexico'),
(31, 'New York'),
(32, 'North Carolina'),
(33, 'North Dakota'),
(34, 'Ohio'),
(35, 'Oklahoma'),
(36, 'Oregon'),
(37, 'Pennsylvania'),
(38, 'Rhode Island'),
(39, 'South Carolina'),
(40, 'South Dakota'),
(41, 'Tennessee'),
(42, 'Texas'),
(43, 'Utah'),
(44, 'Vermont'),
(45, 'Virginia'),
(46, 'Washington'),
(47, 'West Virginia'),
(48, 'Wisconsin'),
(49, 'Wyoming');

CREATE TABLE `crime_inference` (
  `intercept` VARCHAR(1024),
  `slope` VARCHAR(1024),
  `Belgium` VARCHAR(1024),
  `Bulgaria` VARCHAR(1024),
  `Croatia` VARCHAR(1024),
  `Cyprus` VARCHAR(1024),
  `Czech Republic` VARCHAR(1024),
  `Denmark` VARCHAR(1024),
  `Estonia` VARCHAR(1024),
  `Finland` VARCHAR(1024),
  `France` VARCHAR(1024),
  `Germany` VARCHAR(1024),
  `Greece` VARCHAR(1024),
  `Hungary` VARCHAR(1024),
  `Ireland` VARCHAR(1024),
  `Italy` VARCHAR(1024),
  `Latvia` VARCHAR(1024),
  `Lithuania` VARCHAR(1024),
  `Luxembourg` VARCHAR(1024),
  `Malta` VARCHAR(1024),
  `Netherlands` VARCHAR(1024),
  `Poland` VARCHAR(1024),
  `Portugal` VARCHAR(1024),
  `Romania` VARCHAR(1024),
  `Slovakia` VARCHAR(1024),
  `Slovenia` VARCHAR(1024),
  `Spain` VARCHAR(1024),
  `Sweden` VARCHAR(1024),
  `mean` VARCHAR(1024),
  `std` VARCHAR(1024)
);

INSERT INTO `crime_inference` (`intercept`,`slope`,`Belgium`,`Bulgaria`,`Croatia`,`Cyprus`,`Czech Republic`,`Denmark`,`Estonia`,`Finland`,`France`,`Germany`,`Greece`,`Hungary`,`Ireland`,`Italy`,`Latvia`,`Lithuania`,`Luxembourg`,`Malta`,`Netherlands`,`Poland`,`Portugal`,`Romania`,`Slovakia`,`Slovenia`,`Spain`,`Sweden`,`mean`,`std`)
VALUES
('51.49264070186038','-0.025343210280880452','0.8424716479667611','-1.2691509399420773','-1.2048812615335587','-1.3795910056953788','-0.8566285735109374','1.9097863654002227','-0.8902120554633022','0.2667724480188427','0.22277416761115842','-0.031665101792161865','-0.9882232807488893','-0.9072213500072184','-0.36656833259472243','-0.3602529359610256','-1.0859228335473698','-1.1988583364416703','0.1581184130524953','-0.6810311285030006','0.11125987754310729','-1.1580278691345196','-0.8019158227516407','-1.4061150543836602','-1.360419547561036','-0.6506164882732373','-0.9259974743927886','2.5081728537165873','2631.5334814814814','1944.3487156161814');


CREATE TABLE `crime_training` (
  `country` VARCHAR(1024),
  `year` BIGINT,
  `amount` VARCHAR(1024)
);

INSERT INTO `crime_training` (`country`,`year`,`amount`)
VALUES
('Austria',2008,'3896.74'),
('Austria',2009,'3906.7400000000007'),
('Austria',2010,'3308.21'),
('Austria',2011,'3197.13'),
('Austria',2012,'3212.1899999999996'),
('Austria',2013,'3696.5299999999997'),
('Austria',2014,'3573.58'),
('Austria',2015,'3397.45'),
('Austria',2016,'4011.9799999999996'),
('Austria',2017,'3634.96'),
('Austria',2018,'3338.02'),
('Austria',2019,'3450.7200000000003'),
('Austria',2020,'3051.09'),
('Austria',2021,'2810.8100000000004'),
('Austria',2022,'3413.34'),
('Belgium',2008,'5286.5599999999995'),
('Belgium',2009,'5371.0199999999995'),
('Belgium',2010,'5013.710000000001'),
('Belgium',2011,'5220.0599999999995'),
('Belgium',2012,'5103.099999999999'),
('Belgium',2013,'4838.86'),
('Belgium',2014,'4979.9'),
('Belgium',2015,'5117.610000000001'),
('Belgium',2016,'5383.180000000001'),
('Belgium',2017,'5264.43'),
('Belgium',2018,'5271.2300000000005'),
('Belgium',2019,'5426.3499999999985'),
('Belgium',2020,'4507.370000000001'),
('Belgium',2021,'4623.029999999999'),
('Belgium',2022,'5063.959999999999'),
('Bulgaria',2008,'1125.92'),
('Bulgaria',2009,'1239.25'),
('Bulgaria',2010,'1333.8'),
('Bulgaria',2011,'1185.5099999999998'),
('Bulgaria',2012,'1101.63'),
('Bulgaria',2013,'1131.29'),
('Bulgaria',2014,'1037.75'),
('Bulgaria',2015,'953.96'),
('Bulgaria',2016,'839.5'),
('Bulgaria',2017,'936.95'),
('Bulgaria',2018,'963.1899999999999'),
('Bulgaria',2019,'864.5500000000002'),
('Bulgaria',2020,'737.9600000000002'),
('Bulgaria',2021,'668.03'),
('Bulgaria',2022,'765.1199999999999'),
('Croatia',2008,'1143.28'),
('Croatia',2009,'1083.63'),
('Croatia',2010,'1127.77'),
('Croatia',2011,'1213.3899999999999'),
('Croatia',2012,'1260.59'),
('Croatia',2013,'1073.41'),
('Croatia',2014,'918.8399999999999'),
('Croatia',2015,'958.37'),
('Croatia',2016,'1258.0600000000002'),
('Croatia',2017,'1216.9'),
('Croatia',2018,'1170.59'),
('Croatia',2019,'1241.69'),
('Croatia',2020,'1007.14'),
('Croatia',2021,'1005.8999999999999'),
('Croatia',2022,'1079.2899999999997'),
('Cyprus',2008,'1134.69'),
('Cyprus',2009,'1045.26'),
('Cyprus',2010,'975.4'),
('Cyprus',2011,'1217.85'),
('Cyprus',2012,'1134.44'),
('Cyprus',2013,'973.46'),
('Cyprus',2014,'880.17'),
('Cyprus',2015,'762.8100000000001'),
('Cyprus',2016,'732.9800000000001'),
('Cyprus',2017,'715.62'),
('Cyprus',2018,'458.82'),
('Cyprus',2019,'422.06'),
('Cyprus',2020,'371.4'),
('Cyprus',2021,'396.88'),
('Cyprus',2022,'441.56'),
('Czech Republic',2008,'2458.57'),
('Czech Republic',2009,'2718.35'),
('Czech Republic',2010,'2554.0699999999997'),
('Czech Republic',2011,'2493.08'),
('Czech Republic',2012,'2341.84'),
('Czech Republic',2013,'2609.94'),
('Czech Republic',2014,'2131.42'),
('Czech Republic',2015,'1665.22'),
('Czech Republic',2016,'1389.63'),
('Czech Republic',2017,'1274.8999999999999'),
('Czech Republic',2018,'1157.5700000000002'),
('Czech Republic',2019,'1167.0100000000002'),
('Czech Republic',2020,'965.01'),
('Czech Republic',2021,'906.5899999999999'),
('Czech Republic',2022,'1082.5199999999998'),
('Denmark',2008,'8775.35'),
('Denmark',2009,'9157.96'),
('Denmark',2010,'8706.94'),
('Denmark',2011,'8627.710000000001'),
('Denmark',2012,'8122.22'),
('Denmark',2013,'7853.710000000001'),
('Denmark',2014,'7267.4400000000005'),
('Denmark',2015,'6528.66'),
('Denmark',2016,'7213.38'),
('Denmark',2017,'7012.460000000001'),
('Denmark',2018,'6492.569999999999'),
('Denmark',2019,'6144.449999999999'),
('Denmark',2020,'5442.06'),
('Denmark',2021,'4807.469999999999'),
('Denmark',2022,'5446.470000000001'),
('Estonia',2008,'2781.13'),
('Estonia',2009,'2580.7400000000002'),
('Estonia',2010,'2507.95'),
('Estonia',2011,'2153.33'),
('Estonia',2012,'2091.26'),
('Estonia',2013,'1886.1200000000001'),
('Estonia',2014,'1774.4799999999998'),
('Estonia',2015,'1488.58'),
('Estonia',2016,'1463.9000000000003'),
('Estonia',2017,'1355.9299999999998'),
('Estonia',2018,'1228.3800000000003'),
('Estonia',2019,'1134.34'),
('Estonia',2020,'1092.2'),
('Estonia',2021,'1214.8399999999997'),
('Estonia',2022,'1183.0700000000002'),
('Finland',2008,'3947.57'),
('Finland',2009,'3991.21'),
('Finland',2010,'3906.51'),
('Finland',2011,'4003.25'),
('Finland',2012,'3631.4700000000003'),
('Finland',2013,'3546.52'),
('Finland',2014,'3548.27'),
('Finland',2015,'3451.95'),
('Finland',2016,'4234.959999999999'),
('Finland',2017,'3956.61'),
('Finland',2018,'3956.4399999999996'),
('Finland',2019,'4188.999999999999'),
('Finland',2020,'4675.9400000000005'),
('Finland',2021,'4289.09'),
('Finland',2022,'4351.179999999999'),
('France',2008,'3126.2799999999997'),
('France',2009,'3854.63'),
('France',2010,'3547.91'),
('France',2011,'3580.4700000000003'),
('France',2012,'3637.21'),
('France',2013,'3999.5299999999997'),
('France',2014,'4002.7199999999993'),
('France',2015,'3915.92'),
('France',2016,'4725.33'),
('France',2017,'4059.5299999999997'),
('France',2018,'4056.3100000000004'),
('France',2019,'4144.200000000001'),
('France',2020,'3593.7800000000007'),
('France',2021,'3891.4'),
('France',2022,'4261.530000000001'),
('Germany',2008,'4338.070000000001'),
('Germany',2009,'2971.81'),
('Germany',2010,'2832.69'),
('Germany',2011,'2996.95'),
('Germany',2012,'2997.45'),
('Germany',2013,'3032.73'),
('Germany',2014,'3100.11'),
('Germany',2015,'3161.1400000000003'),
('Germany',2016,'4186.839999999999'),
('Germany',2017,'3917.51'),
('Germany',2018,'3692.05'),
('Germany',2019,'3592.7599999999998'),
('Germany',2020,'3426.7400000000007'),
('Germany',2021,'3246.3500000000004'),
('Germany',2022,'3482.77'),
('Greece',2008,'1354.1100000000001'),
('Greece',2009,'1493.2599999999998'),
('Greece',2010,'1718.92'),
('Greece',2011,'2224.0'),
('Greece',2012,'1790.08'),
('Greece',2013,'1595.2400000000002'),
('Greece',2014,'1459.23'),
('Greece',2015,'1561.05'),
('Greece',2016,'1623.93'),
('Greece',2017,'1699.1799999999998'),
('Greece',2018,'1461.3600000000001'),
('Greece',2019,'1511.82'),
('Greece',2020,'1120.1299999999999'),
('Greece',2021,'1128.3199999999995'),
('Greece',2022,'1337.1'),
('Hungary',2008,'2189.33'),
('Hungary',2009,'2100.0'),
('Hungary',2010,'2581.7999999999997'),
('Hungary',2011,'2565.2'),
('Hungary',2012,'2621.89'),
('Hungary',2013,'2192.4700000000003'),
('Hungary',2014,'1912.0499999999997'),
('Hungary',2015,'1886.5799999999997'),
('Hungary',2016,'1524.0599999999997'),
('Hungary',2017,'1274.53'),
('Hungary',2018,'1062.2'),
('Hungary',2019,'902.19'),
('Hungary',2020,'858.1299999999999'),
('Hungary',2021,'865.71'),
('Hungary',2022,'904.0300000000002'),
('Ireland',2008,'3333.2400000000002'),
('Ireland',2009,'3292.67'),
('Ireland',2010,'3197.82'),
('Ireland',2011,'3131.68'),
('Ireland',2012,'3038.12'),
('Ireland',2013,'2983.45'),
('Ireland',2014,'2988.35'),
('Ireland',2015,'2743.5899999999997'),
('Ireland',2016,'2429.16'),
('Ireland',2017,'2536.91'),
('Ireland',2018,'2493.4199999999996'),
('Ireland',2019,'2568.2899999999995'),
('Ireland',2020,'2067.76'),
('Ireland',2021,'2081.5399999999995'),
('Ireland',2022,'2322.4399999999996'),
('Italy',2008,'3027.45'),
('Italy',2009,'2837.7'),
('Italy',2010,'2472.36'),
('Italy',2011,'2712.42'),
('Italy',2012,'2817.64'),
('Italy',2013,'3205.07'),
('Italy',2014,'3016.7200000000003'),
('Italy',2015,'2809.1900000000005'),
('Italy',2016,'2948.91'),
('Italy',2017,'2809.1899999999996'),
('Italy',2018,'2752.59'),
('Italy',2019,'2636.6099999999997'),
('Italy',2020,'2123.28'),
('Italy',2021,'2478.79'),
('Italy',2022,'2744.709999999999'),
('Latvia',2008,'1738.4699999999998'),
('Latvia',2009,'1903.4299999999998'),
('Latvia',2010,'1607.69'),
('Latvia',2011,'208.38'),
('Latvia',2012,'1425.67'),
('Latvia',2013,'1361.8400000000001'),
('Latvia',2014,'1404.7300000000002'),
('Latvia',2015,'1376.44'),
('Latvia',2016,'1587.7599999999998'),
('Latvia',2017,'1473.67'),
('Latvia',2018,'1436.19'),
('Latvia',2019,'1346.0'),
('Latvia',2020,'1301.6899999999998'),
('Latvia',2021,'1002.95'),
('Latvia',2022,'1053.39'),
('Lithuania',2008,'1396.89'),
('Lithuania',2009,'1412.1'),
('Lithuania',2010,'1272.92'),
('Lithuania',2011,'1292.96'),
('Lithuania',2012,'1164.63'),
('Lithuania',2013,'1384.95'),
('Lithuania',2014,'1397.04'),
('Lithuania',2015,'1196.82'),
('Lithuania',2016,'1232.19'),
('Lithuania',2017,'1146.6299999999999'),
('Lithuania',2018,'959.25'),
('Lithuania',2019,'854.4700000000001'),
('Lithuania',2020,'759.2100000000002'),
('Lithuania',2021,'687.5899999999999'),
('Lithuania',2022,'776.86'),
('Luxembourg',2008,'3268.49'),
('Luxembourg',2009,'3633.6400000000003'),
('Luxembourg',2010,'3129.4800000000005'),
('Luxembourg',2011,'3874.6400000000003'),
('Luxembourg',2012,'3694.9399999999996'),
('Luxembourg',2013,'4405.27'),
('Luxembourg',2014,'4848.09'),
('Luxembourg',2015,'3720.7'),
('Luxembourg',2016,'3598.6300000000006'),
('Luxembourg',2017,'2908.2400000000002'),
('Luxembourg',2018,'3227.04'),
('Luxembourg',2019,'3532.0399999999995'),
('Luxembourg',2020,'3627.5000000000005'),
('Luxembourg',2021,'3909.39'),
('Luxembourg',2022,'5132.96'),
('Malta',2008,'2389.72'),
('Malta',2009,'2055.1'),
('Malta',2010,'2269.2'),
('Malta',2011,'2439.59'),
('Malta',2012,'2481.6500000000005'),
('Malta',2013,'2379.89'),
('Malta',2014,'2263.01'),
('Malta',2015,'2281.96'),
('Malta',2016,'2419.99'),
('Malta',2017,'2390.88'),
('Malta',2018,'2021.01'),
('Malta',2019,'1881.22'),
('Malta',2020,'1385.6299999999999'),
('Malta',2021,'1795.4000000000005'),
('Malta',2022,'1582.81'),
('Netherlands',2008,'7492.470000000001'),
('Netherlands',2009,'7451.109999999999'),
('Netherlands',2010,'4077.8200000000006'),
('Netherlands',2011,'4158.66'),
('Netherlands',2012,'4116.46'),
('Netherlands',2013,'4069.88'),
('Netherlands',2014,'3661.97'),
('Netherlands',2015,'3374.37'),
('Netherlands',2016,'3434.1100000000006'),
('Netherlands',2017,'2662.9'),
('Netherlands',2018,'2399.11'),
('Netherlands',2019,'2376.93'),
('Netherlands',2020,'2046.5'),
('Netherlands',2021,'1760.11'),
('Netherlands',2022,'2062.0100000000007'),
('Poland',2008,'1201.4'),
('Poland',2009,'1273.08'),
('Poland',2010,'1287.84'),
('Poland',2011,'1348.07'),
('Poland',2012,'1331.5900000000001'),
('Poland',2013,'1254.87'),
('Poland',2014,'1041.4099999999999'),
('Poland',2015,'903.4000000000001'),
('Poland',2016,'1143.5400000000002'),
('Poland',2017,'1168.3999999999999'),
('Poland',2018,'1119.7500000000002'),
('Poland',2019,'1250.24'),
('Poland',2020,'1196.9699999999998'),
('Poland',2021,'1322.0'),
('Poland',2022,'1282.78'),
('Portugal',2008,'2521.52'),
('Portugal',2009,'2370.01'),
('Portugal',2010,'2114.46'),
('Portugal',2011,'2162.89'),
('Portugal',2012,'2047.22'),
('Portugal',2013,'1878.1200000000001'),
('Portugal',2014,'1771.3700000000001'),
('Portugal',2015,'1760.23'),
('Portugal',2016,'1806.5100000000002'),
('Portugal',2017,'1770.83'),
('Portugal',2018,'1755.3499999999997'),
('Portugal',2019,'1750.35'),
('Portugal',2020,'1557.01'),
('Portugal',2021,'1529.57'),
('Portugal',2022,'1715.99'),
('Romania',2008,'410.06'),
('Romania',2009,'461.56999999999994'),
('Romania',2010,'478.03999999999996'),
('Romania',2011,'483.9'),
('Romania',2012,'601.61'),
('Romania',2013,'613.25'),
('Romania',2014,'1312.2'),
('Romania',2015,'857.47'),
('Romania',2016,'768.9200000000002'),
('Romania',2017,'887.02'),
('Romania',2018,'946.28'),
('Romania',2019,'796.78'),
('Romania',2020,'739.4999999999999'),
('Romania',2021,'774.1100000000001'),
('Romania',2022,'759.1100000000001'),
('Slovakia',2008,'1116.35'),
('Slovakia',2009,'1075.23'),
('Slovakia',2010,'1259.54'),
('Slovakia',2011,'1118.32'),
('Slovakia',2012,'1043.23'),
('Slovakia',2013,'1044.4899999999998'),
('Slovakia',2014,'915.3600000000001'),
('Slovakia',2015,'736.8699999999999'),
('Slovakia',2016,'727.41'),
('Slovakia',2017,'689.2600000000001'),
('Slovakia',2018,'596.1299999999998'),
('Slovakia',2019,'515.9899999999999'),
('Slovakia',2020,'483.61999999999995'),
('Slovakia',2021,'433.43'),
('Slovakia',2022,'467.30999999999995'),
('Slovenia',2008,'2456.78'),
('Slovenia',2009,'2484.43'),
('Slovenia',2010,'2380.3'),
('Slovenia',2011,'2447.8199999999997'),
('Slovenia',2012,'2639.7799999999997'),
('Slovenia',2013,'2799.6800000000003'),
('Slovenia',2014,'2455.04'),
('Slovenia',2015,'1913.49'),
('Slovenia',2016,'2160.3300000000004'),
('Slovenia',2017,'1970.7199999999998'),
('Slovenia',2018,'1797.93'),
('Slovenia',2019,'2159.0599999999995'),
('Slovenia',2020,'2046.4599999999998'),
('Slovenia',2021,'1487.9799999999998'),
('Slovenia',2022,'1724.3100000000002'),
('Spain',2008,'1654.1'),
('Spain',2009,'1601.1100000000001'),
('Spain',2010,'1405.7'),
('Spain',2011,'1374.8799999999999'),
('Spain',2012,'1506.46'),
('Spain',2013,'1469.25'),
('Spain',2014,'1372.01'),
('Spain',2015,'1444.94'),
('Spain',2016,'1727.21'),
('Spain',2017,'1752.14'),
('Spain',2018,'1921.1199999999997'),
('Spain',2019,'1994.2700000000002'),
('Spain',2020,'1698.2499999999998'),
('Spain',2021,'1785.8600000000001'),
('Spain',2022,'2185.2599999999998'),
('Sweden',2008,'8018.07'),
('Sweden',2009,'7884.5'),
('Sweden',2010,'7580.88'),
('Sweden',2011,'7723.109999999999'),
('Sweden',2012,'7488.3200000000015'),
('Sweden',2013,'7398.59'),
('Sweden',2014,'7189.689999999999'),
('Sweden',2015,'7175.58'),
('Sweden',2016,'9402.41'),
('Sweden',2017,'9633.69'),
('Sweden',2018,'9620.21'),
('Sweden',2019,'9423.609999999999'),
('Sweden',2020,'9299.209999999997'),
('Sweden',2021,'8730.09'),
('Sweden',2022,'8482.97');


-- FAKE DATA




-- Insert data into users table
INSERT INTO users (email, id, age, phone, firstName, lastName, homeStateID, moveLoad) VALUES
('john.doe@example.com', 1, 28, '1234567890', 'John', 'Doe', 1, 'Full Household'),
('jane.smith@example.com', 2, 34, '2345678901', 'Jane', 'Smith', 2, 'Excess Baggage'),
('mike.jones@example.com', 3, 45, '3456789012', 'Mike', 'Jones', 3, 'Full Household'),
('emily.johnson@example.com', 4, 22, '4567890123', 'Emily', 'Johnson', 4, 'Vehicle Only'),
('chris.lee@example.com', 5, 39, '5678901234', 'Chris', 'Lee', 5, 'Vehicle Only');


-- -- Insert data into countryRankings table
INSERT INTO countryRankings (countryID, rankingNum, id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- -- Insert data into rankings table
INSERT INTO rankings (userID, rankingID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- -- Insert data into movers table
INSERT INTO movers (id, moverName, email, phone, bio, stars, numReviews) VALUES
(1, 'Fontemoves', 'mover1@example.com', '6789012345', 'bio', 5, 100),
(2, 'Gerbamoves', 'mover2@example.com', '7890123456', 'bio', 4, 50),
(3, 'Mover 3', 'mover3@example.com', '8901234567', 'bio', 3, 30),
(4, 'Mover 4', 'mover4@example.com', '9012345678', 'bio', 5, 200),
(5, 'Mover 5', 'mover5@example.com', '1234567890', 'bio', 4, 70);

-- -- Insert data into moverContacts table
INSERT INTO moverContacts (userID, moverID, dateContacted) VALUES
(1, 1, '2023-01-01 10:00:00'),
(2, 2, '2023-02-01 11:00:00'),
(3, 3, '2023-03-01 12:00:00'),
(4, 4, '2023-04-01 13:00:00'),
(5, 5, '2023-05-01 14:00:00');

-- -- Insert data into countryAdmins table
INSERT INTO countryAdmins (id, firstName, lastName, bio, countryID) VALUES
(1, 'Alice', 'Brown', 'bio', 1),
(2, 'Bob', 'White', 'bio', 2),
(3, 'Charlie', 'Green', 'bio', 3),
(4, 'David', 'Black', 'bio', 4),
(5, 'Eva', 'Blue', 'bio', 5);

-- -- Insert data into route table
INSERT INTO routes (fromStateID, toCountryID, moverID, cost) VALUES
(1, 1, 1, 5000),
(2, 2, 2, 6000),
(3, 3, 3, 7000),
(4, 4, 4, 8000),
(1, 10, 2, 2000),
(5, 5, 5, 9000);

