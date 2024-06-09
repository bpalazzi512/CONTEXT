USE context;

-- REAL DATA!


INSERT INTO countries (id, name, education, avg_temp, cost_of_life, healthcare, pop_density, official_lang, minority_lang, widely_spoken_lang, bio, tips, img_link)
VALUES
(1, 'Malta', 2524.5, 19.58,55.1,53.59,1700,'English, Spanish','','','Malta is a beautiful island country located in the Mediterranean Sea. It is known for its rich history, stunning architecture, and vibrant culture.','Explore the charming streets of Valletta, visit the ancient temples of Hagar Qim, and relax on the picturesque beaches of Gozo.','https://assets.vogue.com/photos/599365b2f0b0e21484d3436e/master/w_2560%2Cc_limit/00-lede-a-travel-guide-to-malta.jpg'),
(2, 'Cyprus', 4538.5, 18.95,57.1,53.74,136,'Greek','', 'English','Cyprus is a Mediterranean island known for its beautiful beaches, ancient ruins, and rich cultural heritage. It offers a perfect blend of history, nature, and relaxation.','Visit the UNESCO World Heritage site of Paphos, explore the stunning Troodos Mountains, and indulge in delicious Cypriot cuisine.','https://www.travelandleisure.com/thmb/_HcHZ4Gr8jbDJ5vcHYzR7a4lXvA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/TAL-kourion-archaeological-site-CYPRUS0124-3e8854b03a754966a1a11e4b6dd356c3.jpg'),
(3, 'Portugal', 28398.9, 15.85,46.6,54.95,111,'Portuguese','', 'English','Portugal is a charming country located on the Iberian Peninsula. It is famous for its beautiful coastline, historic cities, and warm hospitality.','Discover the historic neighborhoods of Lisbon, explore the vineyards of the Douro Valley, and relax on the stunning beaches of the Algarve.','https://images.winalist.com/blog/wp-content/uploads/2023/06/26110037/AdobeStock_79650880-1-1500x1000.jpeg'),
(4, 'Greece', 94273.13076923079, 14.26,54.2,52.5,78,'Greek','', '','Greece is a country with a rich history and stunning natural beauty. It is known for its ancient ruins, beautiful islands, and delicious cuisine.','Explore the iconic Acropolis in Athens, relax on the breathtaking beaches of Santorini, and indulge in traditional Greek dishes like moussaka and souvlaki.','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Parthenon_%2830276156187%29.jpg/1200px-Parthenon_%2830276156187%29.jpg'),
(5, 'Spain', 184029.7, 14.07,48.4,53.55,97,'Spanish','Astur-Leonese, Aragonese, Fala, French, Portuguese','','Spain is a diverse country with a rich cultural heritage. It is known for its vibrant festivals, stunning architecture, and delicious cuisine.','Visit the famous Sagrada Familia in Barcelona, explore the historic streets of Seville, and indulge in tapas and paella.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvCx-6qSsIiNNCT1nkUKDoMQH9wEmuUaE2oA&s'),
(6, 'Italy',232109.2,13.22,58.9,72.15,195,'Italian','Ladin, Slovene','Other Italo-Dalmatian languages','Italy is a country renowned for its art, history, and cuisine. It is home to iconic landmarks such as the Colosseum, the Leaning Tower of Pisa, and the canals of Venice.','Explore the ancient ruins of Rome, take a gondola ride in Venice, and indulge in authentic Italian pasta and gelato.','https://www.travelandleisure.com/thmb/pH2s7mCAmsjcKWQHsnLz1bAgS7M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/giotto-bell-tower-florence-EDPICKITALY0221-b5b69b7a4da348c9a4528048e8574285.jpg'),
(7, 'Croatia',5581.2,11.96,46.9,52.4,71,'Croatian','','English','Croatia is a stunning country located on the Adriatic Sea. It is known for its beautiful coastline, historic cities, and crystal-clear waters.','Visit the historic city of Dubrovnik, explore the Plitvice Lakes National Park, and relax on the picturesque beaches of Hvar.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTkRvasRxO07ZC0EceSfybMHmn_Oo_HEVIIw&s'),
(8, 'France',476838.3,11.65,66,55.31,117,'French','Corsican language, Basque language, Breton language','Occitan language','France is a country known for its art, culture, and gastronomy. It is home to iconic landmarks such as the Eiffel Tower, the Louvre Museum, and the Palace of Versailles.','Explore the charming streets of Paris, visit the beautiful vineyards of Bordeaux, and indulge in delicious French cuisine.','https://www.welcometofrance.com/app/uploads/2019/12/alexander-kagan-t9Td0zfDTwI-unsplash-1920x1280.jpg'),
(9, 'Hungary',19540.6,11.5,43.4,49.97,109,'Hungarian','Croatian','','Hungary is a country located in Central Europe. It is known for its rich history, stunning architecture, and thermal baths.','Explore the historic city of Budapest, visit the beautiful Lake Balaton, and indulge in traditional Hungarian dishes like goulash and chimney cake.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Budapest_Hungarian_Parliament_%2831363963556%29.jpg/800px-Budapest_Hungarian_Parliament_%2831363963556%29.jpg'),
(10, 'Bulgaria',9457.8,11.35,38.7,47.02,61,'Bulgarian','','','Bulgaria is a country located in Southeast Europe. It is known for its beautiful landscapes, rich history, and vibrant culture.','Explore the historic city of Sofia, visit the stunning Rila Monastery, and enjoy the beautiful beaches of the Black Sea coast.','https://i.natgeofe.com/n/ed5dd8fb-d73b-4770-b7f1-ed9a4227d852/gettyimages-1205570855.jpg'),
(11, 'Belgium',105815.4,10.67,63,53.99,383,'Dutch, French, German','','English', 'Belgium is a small country known for its delicious chocolates, waffles, and beers. It is home to beautiful medieval cities, stunning architecture, and vibrant cultural festivals.','Explore the historic city of Bruges, indulge in Belgian chocolates and waffles, and visit the famous Atomium in Brussels.','https://media.timeout.com/images/105237873/image.jpg'),
(12, 'Netherlands',154748.9,10.49,64.3,54.63,424,'Dutch','Dutch Low Saxon, Dutch Sign Language, Limburgish, Sinte Romani, Yiddish','English','The Netherlands is a country known for its picturesque canals, windmills, and tulip fields. It is famous for its cycling culture, vibrant cities, and rich artistic heritage.','Explore the beautiful city of Amsterdam, visit the historic windmills of Kinderdijk, and admire the colorful tulip fields in Keukenhof.','https://fullsuitcase.com/wp-content/uploads/2020/12/Two-days-in-Amsterdam-Netherlands.jpg.webp'),
(13, 'Romania',	25942.5,10.18,38.8,48.84,83,'Romanian','Armenian, German, Hungarian, Romani, Russian, Serbian, Slovak, Tatar, Turkish, Ukrainian','','Romania is a country located in Eastern Europe. It is known for its stunning landscapes, medieval castles, and vibrant folklore.','Explore the historic city of Bucharest, visit the famous Bran Castle, and hike in the beautiful Carpathian Mountains.','https://cdn-v2.theculturetrip.com/1200x675/wp-content/uploads/2021/05/bran-castle.webp'),
(14, 'Luxembourg',9123.3,10.02,65.3,56.31,253,'French, German, Luxembourgish','','English, Portuguese','Luxembourg is a small country known for its picturesque landscapes, medieval castles, and rich cultural heritage. It is one of the wealthiest countries in the world.','Explore the charming city of Luxembourg, visit the beautiful Vianden Castle, and enjoy the scenic hiking trails in Mullerthal.','https://worldwildschooling.com/wp-content/uploads/2022/02/PXL_20211125_132742813-Edit-1024x678.jpg'),
(15, 'Slovenia',8710.8,9.86,49.3,53.13,105,'Slovene','Hungarian, Italian, Croatian','','Slovenia is a country located in Central Europe. It is known for its stunning landscapes, charming towns, and outdoor activities.','Explore the beautiful Lake Bled, visit the historic city of Ljubljana, and hike in the breathtaking Julian Alps.','https://www.state.gov/wp-content/uploads/2018/11/Slovenia-2560x1395.jpg'),
(16, 'Ireland',21128.7,9.73,66.5,55.19,72,'Irish, English','', '', 'Ireland is a country known for its stunning landscapes, rich history, and vibrant culture. It is famous for its ancient castles, traditional music, and friendly locals.','Explore the scenic Ring of Kerry, visit the historic Blarney Castle, and enjoy a pint of Guinness in a traditional Irish pub.','https://images.ireland.com/thumbs/Images/things-to-do/attractions/dunluce-castle/a61804689776483c8eebd671d9dfbe84/featurecarousel-desktop.jpg'),
(17, 'Germany',665035.2,9.59,62.7,55.98,233,'German','Danish, Lower Sorbian, North Frisian, Romani','','Germany is a country known for its rich history, stunning architecture, and vibrant cultural scene. It is famous for its castles, beer festivals, and automotive engineering.','Explore the historic city of Berlin, visit the fairy-tale Neuschwanstein Castle, and indulge in traditional German sausages and beer.','https://www.insightvacations.com/media/pfwapf3l/best-germany-guided-tour-14.jpg'),
(18, 'Denmark',77810.0,8.9,75.2,55.46,138,'Danish','German','','Denmark is a country known for its beautiful coastline, historic cities, and high quality of life. It is famous for its design, cycling culture, and hygge lifestyle.','Explore the colorful streets of Copenhagen, visit the iconic Little Mermaid statue, and enjoy a bike ride along the Danish Riviera.','https://i.natgeofe.com/k/c4b51a61-ac20-4b96-a52a-609ab6576a4e/denmark-copenhagen-canal_16x9.jpg?w=1200'),
(19, 'Slovakia',16267.5,8.83,47.9,51.7,118,'Slovak','Bulgarian, Czech, German, Hungarian, Polish, Romani, Rusyn, Serbian, Ukrainian','','Slovakia is a country located in Central Europe. It is known for its stunning landscapes, medieval castles, and thermal spas.','Explore the historic city of Bratislava, hike in the Tatra Mountains, and relax in the healing waters of the High Tatras.','https://idsb.tmgrup.com.tr/ly/uploads/images/2024/03/18/319978.jpg'),
(20, 'Poland',90781.7,8.78,41.9,49.25,120,'Polish','German, Lithuanian, Belarusian, Czech, Hebrew, Yiddish, Lemko, Karaim, Armenian, Romani, Russian, Slovak, Tatar, Ukrainian','English','Poland is a country located in Central Europe. It is known for its rich history, stunning architecture, and hearty cuisine.','Explore the historic city of Krakow, visit the Auschwitz-Birkenau Memorial and Museum, and indulge in traditional Polish pierogi and vodka.','https://i.natgeofe.com/k/6eb7149d-9876-40ac-9bf7-d261931ddb56/poland-warsaw_16x9.jpg?w=1200'),
(21, 'Czech Republic',37095.7,8.6,48.6,53,133,'Czech','Belarusian','','The Czech Republic is a country located in Central Europe. It is known for its beautiful architecture, historic castles, and world-famous beer.','Explore the charming city of Prague, visit the stunning Karlstejn Castle, and enjoy a glass of Czech beer in a traditional pub.','https://www.amazingczechia.com/wp-content/uploads/2018/09/czechia-prague-01-old-town-square.jpg'),
(22, 'Austria',	74627.4,7.44,66.8,54.69,107,'German','Slovene, Czech, Hungarian, Slovak, Romani, Serbian','English','Austria is a country located in the heart of Europe. It is known for its stunning alpine landscapes, historic cities, and rich cultural heritage.','Explore the imperial city of Vienna, visit the picturesque Salzburg, and enjoy outdoor activities in the Austrian Alps.','https://content.r9cdn.net/rimg/dimg/a8/ce/6d1490d1-city-64466-16510215367.jpg?width=1366&height=768&xhint=1426&yhint=1115&crop=true'),
(23, 'Lithuania',7802.6,7.38,48.4,49.87,42,'Lithuanian','','Polish, Russian','Lithuania is a country located in the Baltic region of Europe. It is known for its beautiful landscapes, historic castles, and rich cultural heritage.','Explore the historic city of Vilnius, visit the stunning Trakai Castle, and enjoy the beautiful beaches of the Curonian Spit.','https://www.state.gov/wp-content/uploads/2019/04/Lithuania-2109x1406.png'),
(24, 'Latvia',5077.4,6.87,51.4,50.39,28,'Latvian','','Russian','Latvia is a country located in the Baltic region of Europe. It is known for its beautiful landscapes, historic architecture, and vibrant cultural scene.','Explore the charming streets of Riga, visit the stunning Rundale Palace, and relax on the sandy beaches of Jurmala.','https://ourcrossings.com/wp-content/uploads/2023/11/image_processing20200207-4-exzsbo.jpg'),
(25, 'Estonia',3286.7,6.34,53,51.41,29,'Estonian','','Russian','Estonia is a country located in Northern Europe. It is known for its beautiful landscapes, medieval architecture, and advanced digital society.','Explore the charming streets of Tallinn, visit the picturesque Lahemaa National Park, and relax on the pristine beaches of Saaremaa.','https://i.natgeofe.com/n/028e4dd5-1664-4b9d-9aee-e0b427d2364a/estonia1_4x3.jpg'),
(26, 'Sweden',129332.2,3.23,62.2,56.29,24,'Swedish','Finnish, Meänkieli, Sami, Yiddish, Romani', '','Sweden is a country located in Northern Europe. It is known for its stunning landscapes, modern design, and high quality of life.','Explore the beautiful city of Stockholm, visit the stunning archipelago of Gothenburg, and experience the unique Sami culture in Swedish Lapland.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWApBZcLtI8JMNHV2fzzJcTy-SOmA2C9NLGA&s'),
(27, 'Finland',	55496.7,2.46,65.5,60.53,16,'Finnish, Swedish','Sami','','Finland is a country located in Northern Europe. It is known for its beautiful landscapes, saunas, and the Northern Lights.','Explore the vibrant city of Helsinki, visit the stunning lakes of Lakeland, and experience the magical winter wonderland of Lapland.','https://images.ctfassets.net/nwbqij9m1jag/64uygHdfDYMuIEy5uc8SL9/81560ac70f91614208583cfb5a95aced/helsinki-skyscape-finland.jpg');

-- Railway lengths update statements
UPDATE countries SET railwayLength = 3607 WHERE name = 'Belgium';
UPDATE countries SET railwayLength = 1600 WHERE name = 'Bulgaria';
UPDATE countries SET railwayLength = 9394 WHERE name = 'Czech Republic';
UPDATE countries SET railwayLength = 6376 WHERE name = 'Denmark';
UPDATE countries SET railwayLength = 92313 WHERE name = 'Germany';
UPDATE countries SET railwayLength = 382 WHERE name = 'Estonia';
UPDATE countries SET railwayLength = 1748 WHERE name = 'Ireland';
UPDATE countries SET railwayLength = 1117 WHERE name = 'Greece';
UPDATE countries SET railwayLength = 27489 WHERE name = 'Spain';
UPDATE countries SET railwayLength = 102814 WHERE name = 'France';
UPDATE countries SET railwayLength = 812 WHERE name = 'Croatia';
UPDATE countries SET railwayLength = 46143 WHERE name = 'Italy';
UPDATE countries SET railwayLength = 0 WHERE name = 'Cyprus';
UPDATE countries SET railwayLength = 541 WHERE name = 'Latvia';
UPDATE countries SET railwayLength = 382 WHERE name = 'Lithuania';
UPDATE countries SET railwayLength = 389 WHERE name = 'Luxembourg';
UPDATE countries SET railwayLength = 7945 WHERE name = 'Hungary';
UPDATE countries SET railwayLength = 0 WHERE name = 'Malta';
UPDATE countries SET railwayLength = 3055 WHERE name = 'Netherlands';
UPDATE countries SET railwayLength = 12371 WHERE name = 'Austria';
UPDATE countries SET railwayLength = 23646 WHERE name = 'Poland';
UPDATE countries SET railwayLength = 4419 WHERE name = 'Portugal';
UPDATE countries SET railwayLength = 5616 WHERE name = 'Romania';
UPDATE countries SET railwayLength = 645 WHERE name = 'Slovenia';
UPDATE countries SET railwayLength = 3168 WHERE name = 'Slovakia';
UPDATE countries SET railwayLength = 4572 WHERE name = 'Finland';
UPDATE countries SET railwayLength = 12879 WHERE name = 'Sweden';


-- Happiness Index update statements
UPDATE countries SET happinessIndex = 19.997142857142858 WHERE name = 'Austria';
UPDATE countries SET happinessIndex = 19.94857142857143 WHERE name = 'Belgium';
UPDATE countries SET happinessIndex = 18.485714285714284 WHERE name = 'Bulgaria';
UPDATE countries SET happinessIndex = 19.431428571428572 WHERE name = 'Croatia';
UPDATE countries SET happinessIndex = 19.874285714285715 WHERE name = 'Cyprus';
UPDATE countries SET happinessIndex = 18.931428571428572 WHERE name = 'Czech Republic';
UPDATE countries SET happinessIndex = 19.685714285714287 WHERE name = 'Denmark';
UPDATE countries SET happinessIndex = 19.994285714285713 WHERE name = 'Estonia';
UPDATE countries SET happinessIndex = 19.897142857142857 WHERE name = 'Finland';
UPDATE countries SET happinessIndex = 19.914285714285715 WHERE name = 'France';
UPDATE countries SET happinessIndex = 20.0 WHERE name = 'Greece';
UPDATE countries SET happinessIndex = 19.61 WHERE name = 'Germany';
UPDATE countries SET happinessIndex = 19.994285714285713 WHERE name = 'Hungary';
UPDATE countries SET happinessIndex = 20.002857142857142 WHERE name = 'Ireland';
UPDATE countries SET happinessIndex = 19.242857142857144 WHERE name = 'Italy';
UPDATE countries SET happinessIndex = 19.642857142857142 WHERE name = 'Latvia';
UPDATE countries SET happinessIndex = 18.5 WHERE name = 'Lithuania';
UPDATE countries SET happinessIndex = 19.76571428571429 WHERE name = 'Luxembourg';
UPDATE countries SET happinessIndex = 19.545714285714286 WHERE name = 'Malta';
UPDATE countries SET happinessIndex = 19.87142857142857 WHERE name = 'Netherlands';
UPDATE countries SET happinessIndex = 19.691428571428574 WHERE name = 'Poland';
UPDATE countries SET happinessIndex = 19.80857142857143 WHERE name = 'Portugal';
UPDATE countries SET happinessIndex = 19.24 WHERE name = 'Romania';
UPDATE countries SET happinessIndex = 18.537142857142857 WHERE name = 'Slovakia';
UPDATE countries SET happinessIndex = 19.897142857142857 WHERE name = 'Slovenia';
UPDATE countries SET happinessIndex = 20.0 WHERE name = 'Spain';
UPDATE countries SET happinessIndex = 20.0 WHERE name = 'Sweden';

-- Calculating averages and updating the average Leisure field

UPDATE countries SET leisure = (82.0 + 74.5 + 74.2 + 63.7 + 59.6 + 55.1 + 36.2) / 7 WHERE name = 'Belgium';
UPDATE countries SET leisure = (42.6 + 31.0 + 28.4 + 21.7 + 15.0 + 10.0 + 4.5) / 7 WHERE name = 'Bulgaria';
UPDATE countries SET leisure = (85.9 + 73.0 + 71.9 + 66.9 + 60.2 + 48.8 + 29.4) / 7 WHERE name = 'Czech Republic';
UPDATE countries SET leisure = (91.5 + 86.6 + 82.9 + 84.1 + 77.4 + 74.3 + 64.8) / 7 WHERE name = 'Denmark';
UPDATE countries SET leisure = NULL WHERE name = 'Germany';  -- No data provided
UPDATE countries SET leisure = (86.9 + 79.5 + 75.4 + 70.1 + 56.8 + 45.9 + 26.2) / 7 WHERE name = 'Estonia';
UPDATE countries SET leisure = (85.9 + 81.4 + 79.5 + 71.7 + 66.9 + 49.3 + 33.4) / 7 WHERE name = 'Ireland';
UPDATE countries SET leisure = (69.6 + 61.7 + 47.7 + 43.8 + 36.0 + 22.3 + 10.3) / 7 WHERE name = 'Greece';
UPDATE countries SET leisure = (86.3 + 79.1 + 69.8 + 66.5 + 59.8 + 50.6 + 29.0) / 7 WHERE name = 'Spain';
UPDATE countries SET leisure = (83.0 + 71.1 + 69.3 + 62.8 + 53.7 + 47.2 + 27.7) / 7 WHERE name = 'France';
UPDATE countries SET leisure = (78.5 + 63.8 + 50.3 + 41.1 + 27.9 + 20.3 + 7.8) / 7 WHERE name = 'Croatia';
UPDATE countries SET leisure = (70.9 + 58.8 + 46.4 + 45.4 + 34.1 + 24.2 + 9.6) / 7 WHERE name = 'Italy';
UPDATE countries SET leisure = (68.4 + 56.6 + 50.3 + 44.0 + 31.1 + 22.2 + 8.8) / 7 WHERE name = 'Cyprus';
UPDATE countries SET leisure = (63.6 + 59.8 + 52.4 + 45.6 + 36.3 + 26.7 + 13.7) / 7 WHERE name = 'Latvia';
UPDATE countries SET leisure = (73.9 + 68.3 + 63.2 + 48.9 + 41.5 + 33.3 + 13.1) / 7 WHERE name = 'Lithuania';
UPDATE countries SET leisure = (93.8 + 88.8 + 82.7 + 80.4 + 76.3 + 79.5 + 62.8) / 7 WHERE name = 'Luxembourg';
UPDATE countries SET leisure = (72.6 + 52.0 + 47.8 + 46.2 + 35.3 + 26.0 + 14.9) / 7 WHERE name = 'Hungary';
UPDATE countries SET leisure = (67.3 + 58.0 + 50.2 + 43.7 + 27.7 + 19.2 + 8.6) / 7 WHERE name = 'Malta';
UPDATE countries SET leisure = (90.9 + 86.9 + 82.1 + 77.0 + 71.4 + 65.3 + 52.7) / 7 WHERE name = 'Netherlands';
UPDATE countries SET leisure = (82.8 + 75.6 + 68.9 + 58.5 + 54.4 + 48.5 + 30.6) / 7 WHERE name = 'Austria';
UPDATE countries SET leisure = (85.6 + 73.3 + 68.5 + 55.9 + 43.6 + 31.7 + 18.2) / 7 WHERE name = 'Poland';
UPDATE countries SET leisure = (86.9 + 76.8 + 72.0 + 61.6 + 48.2 + 38.7 + 20.1) / 7 WHERE name = 'Portugal';
UPDATE countries SET leisure = (45.1 + 38.7 + 33.3 + 23.0 + 13.1 + 8.7 + 4.2) / 7 WHERE name = 'Romania';
UPDATE countries SET leisure = (76.3 + 73.9 + 75.7 + 63.0 + 52.0 + 47.6 + 29.2) / 7 WHERE name = 'Slovenia';
UPDATE countries SET leisure = (73.8 + 60.1 + 52.3 + 41.8 + 33.6 + 21.8 + 6.7) / 7 WHERE name = 'Slovakia';
UPDATE countries SET leisure = (82.3 + 82.5 + 82.8 + 81.9 + 69.6 + 58.7 + 42.5) / 7 WHERE name = 'Finland';
UPDATE countries SET leisure = (85.0 + 75.7 + 76.4 + 74.5 + 63.7 + 62.0 + 47.3) / 7 WHERE name = 'Sweden';

-- Update statements for square kilometers (square_kilos)

UPDATE countries SET square_kilos = 83879 WHERE name = 'Austria';
UPDATE countries SET square_kilos = 30528 WHERE name = 'Belgium';
UPDATE countries SET square_kilos = 110994 WHERE name = 'Bulgaria';
UPDATE countries SET square_kilos = 56594 WHERE name = 'Croatia';
UPDATE countries SET square_kilos = 9251 WHERE name = 'Cyprus';
UPDATE countries SET square_kilos = 78866 WHERE name = 'Czech Republic';
UPDATE countries SET square_kilos = 42933 WHERE name = 'Denmark';
UPDATE countries SET square_kilos = 45227 WHERE name = 'Estonia';
UPDATE countries SET square_kilos = 338424 WHERE name = 'Finland';
UPDATE countries SET square_kilos = 551695 WHERE name = 'France';
UPDATE countries SET square_kilos = 131957 WHERE name = 'Greece';
UPDATE countries SET square_kilos = 357386 WHERE name = 'Germany';
UPDATE countries SET square_kilos = 93028 WHERE name = 'Hungary';
UPDATE countries SET square_kilos = 70273 WHERE name = 'Ireland';
UPDATE countries SET square_kilos = 301340 WHERE name = 'Italy';
UPDATE countries SET square_kilos = 64589 WHERE name = 'Latvia';
UPDATE countries SET square_kilos = 65300 WHERE name = 'Lithuania';
UPDATE countries SET square_kilos = 2586 WHERE name = 'Luxembourg';
UPDATE countries SET square_kilos = 316 WHERE name = 'Malta';
UPDATE countries SET square_kilos = 41543 WHERE name = 'Netherlands';
UPDATE countries SET square_kilos = 312696 WHERE name = 'Poland';
UPDATE countries SET square_kilos = 92212 WHERE name = 'Portugal';
UPDATE countries SET square_kilos = 238397 WHERE name = 'Romania';
UPDATE countries SET square_kilos = 20273 WHERE name = 'Slovakia';
UPDATE countries SET square_kilos = 20273 WHERE name = 'Slovenia';
UPDATE countries SET square_kilos = 505992 WHERE name = 'Spain';
UPDATE countries SET square_kilos = 450295 WHERE name = 'Sweden';

UPDATE countries
SET crime_safety = CASE name
    WHEN 'Austria' THEN 3413.34
    WHEN 'Belgium' THEN 5063.96
    WHEN 'Bulgaria' THEN 765.12
    WHEN 'Croatia' THEN 1079.29
    WHEN 'Cyprus' THEN 441.56
    WHEN 'Czech Republic' THEN 1082.52
    WHEN 'Denmark' THEN 5446.47
    WHEN 'Estonia' THEN 1183.07
    WHEN 'Finland' THEN 4351.18
    WHEN 'France' THEN 4261.53
    WHEN 'Germany' THEN 3482.77
    WHEN 'Greece' THEN 1337.10
    WHEN 'Hungary' THEN 904.03
    WHEN 'Ireland' THEN 2322.44
    WHEN 'Italy' THEN 2744.71
    WHEN 'Latvia' THEN 1053.39
    WHEN 'Lithuania' THEN 776.86
    WHEN 'Luxembourg' THEN 5132.96
    WHEN 'Malta' THEN 1582.81
    WHEN 'Netherlands' THEN 2062.01
    WHEN 'Poland' THEN 1282.78
    WHEN 'Portugal' THEN 1715.99
    WHEN 'Romania' THEN 759.11
    WHEN 'Slovakia' THEN 467.31
    WHEN 'Slovenia' THEN 1724.31
    WHEN 'Spain' THEN 2185.26
    WHEN 'Sweden' THEN 8482.97
    ELSE crime_safety
END;




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
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (3, 'cbalderstone2@baidu.com', 'Realbuzz', '(538) 4307208', 2, 80, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
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
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (17, 'apalserg@walmart.com', 'Kimia', '(533) 5918340', 1, 396, 'Vivamus in felis eu sapien cursus vestibulum.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (18, 'gwallworkh@instagram.com', 'Fiveclub', '(426) 8336864', 1, 406, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (19, 'mbooyi@chicagotribune.com', 'Shuffletag', '(710) 6804101', 4, 284, 'Proin risus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (20, 'saslamj@intel.com', 'Skippad', '(585) 7469398', 4, 490, 'Praesent id massa id nisl venenatis lacinia.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (21, 'kwardalek@wordpress.com', 'Zoomcast', '(293) 3292236', 1, 310, 'Nullam sit amet turpis elementum ligula vehicula consequat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (22, 'lbazelyl@merriam-webster.com', 'Jabberbean', '(905) 1185375', 3, 201, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (23, 'lmuckartm@rambler.ru', 'Yakitri', '(681) 5727979', 2, 198, 'Quisque id justo sit amet sapien dignissim vestibulum.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (24, 'ndowbigginn@youtube.com', 'Gigashots', '(895) 4741980', 4, 277, 'Nam nulla.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (25, 'kinkero@zimbio.com', 'Buzzbean', '(952) 3160612', 3, 279, 'Duis aliquam convallis nunc.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (26, 'obackenp@github.io', 'Eayo', '(361) 1129431', 1, 332, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (27, 'hechlinq@dell.com', 'Jayo', '(725) 1074424', 3, 469, 'Praesent id massa id nisl venenatis lacinia.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (28, 'bwilloughwayr@furl.net', 'Jaxspan', '(120) 6718351', 4, 183, 'Quisque ut erat.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (29, 'bliversedges@mozilla.org', 'Skimia', '(914) 9128676', 1, 77, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (30, 'gmacivert@hud.gov', 'Flipopia', '(296) 1561337', 5, 459, 'Vivamus vestibulum sagittis sapien.');
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
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (45, 'lswash18@sitemeter.com', 'Jabberbean', '(611) 5801872', 4, 465, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (46, 'tpalfreman19@wunderground.com', 'Aibox', '(559) 7265149', 1, 367, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (47, 'rstacy1a@state.tx.us', 'Jayo', '(240) 6008363', 1, 411, 'Proin eu mi. Nulla ac enim.');
insert into movers (id, email, moverName, phone, stars, numReviews, bio) values (48, 'emacgee1b@cocolog-nifty.com', 'Omba', '(105) 6457758', 5, 147, 'Cras in purus eu magna vulputate luctus.');
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
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kgorringe@dyndns.org', 62, 'Klement', 'Gorring', 6, 15, '(279) 3005753', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('rreinaf@usnews.com', 50, 'Rick', 'Reina', 4, 16, '(963) 8400781', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cbenhamg@elpais.com', 69, 'Clea', 'Benham', 8, 17, '(700) 8099483', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('eebrallh@booking.com', 57, 'Emmaline', 'Ebrall', 50, 18, '(463) 1182317', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('naiskriggi@squidoo.com', 29, 'Nealson', 'Aiskrigg', 2, 19, '(269) 1890349', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('dbarkwayj@webmd.com', 53, 'Daveta', 'Barkway', 21, 20, '(941) 3219552', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('qgeroldok@scribd.com', 53, 'Quillan', 'Geroldo', 27, 21, '(369) 6510440', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('pbosenworthl@bloglines.com', 29, 'Pembroke', 'Bosenworth', 9, 22, '(421) 8563213', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mhexhamm@trellian.com', 27, 'Margie', 'Hexham', 24, 23, '(514) 9912070', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gsallansn@epa.gov', 83, 'Gelya', 'Sallans', 10, 24, '(973) 3437889', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('tsecombeo@si.edu', 60, 'Trenna', 'Secombe', 22, 25, '(925) 2438106', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('lcabottop@1688.com', 26, 'Lawrence', 'Cabotto', 43, 26, '(759) 9386548', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kgianettiniq@flickr.com', 55, 'Karlee', 'Gianettini', 42, 27, '(700) 3761165', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cnorthedger@hibu.com', 66, 'Clea', 'Northedge', 32, 28, '(372) 4513982', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ppendletons@mashable.com', 21, 'Priscella', 'Pendleton', 45, 29, '(573) 7181649', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mgarciat@dot.gov', 60, 'Martica', 'Garcia', 14, 30, '(898) 5167496', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ldemkou@ocn.ne.jp', 25, 'Lisette', 'Demko', 33, 31, '(580) 7998079', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('wdreierv@nifty.com', 20, 'Wendeline', 'Dreier', 48, 32, '(509) 8218736', 'Full Household');
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
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ktingley1c@github.com', 69, 'Kristyn', 'Tingley', 19, 49, '(867) 5507636', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mbortoloni1d@forbes.com', 50, 'Myrtie', 'Bortoloni', 37, 50, '(745) 6725406', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('dkeinrat1e@pen.io', 81, 'Dewitt', 'Keinrat', 26, 51, '(397) 6111491', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bmcalarney1f@mac.com', 24, 'Brandais', 'McAlarney', 25, 52, '(731) 1203484', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('fdugue1g@sohu.com', 26, 'Farrah', 'Dugue', 40, 53, '(236) 3928977', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cskittles1h@europa.eu', 79, 'Cord', 'Skittles', 16, 54, '(805) 8657376', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('lcotgrave1i@thetimes.co.uk', 42, 'Lowrance', 'Cotgrave', 14, 55, '(698) 4629085', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('agregolotti1j@skype.com', 35, 'Amalea', 'Gregolotti', 21, 56, '(470) 6793462', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('hclissell1k@odnoklassniki.ru', 78, 'Heather', 'Clissell', 4, 57, '(907) 2143629', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('sstrathdee1l@rambler.ru', 62, 'Shawnee', 'Strathdee', 36, 58, '(656) 7990619', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gpantin1m@com.com', 70, 'Gabbie', 'Pantin', 1, 59, '(890) 5481922', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ljiran1n@naver.com', 40, 'Lorry', 'Jiran', 7, 60, '(406) 8165280', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('chighton1o@jiathis.com', 75, 'Carie', 'Highton', 23, 61, '(512) 9855543', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gkettow1p@about.com', 52, 'Gaven', 'Kettow', 41, 62, '(519) 5247453', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('candreassen1q@pen.io', 44, 'Calla', 'Andreassen', 48, 63, '(389) 3191059', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('chilling1r@hatena.ne.jp', 43, 'Clementina', 'Hilling', 19, 64, '(265) 2893866', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bskyrm1s@mysql.com', 19, 'Barthel', 'Skyrm', 31, 65, '(655) 8296039', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kboat1t@apple.com', 40, 'Kerrin', 'Boat', 46, 66, '(946) 1656412', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('igrinsted1u@state.gov', 23, 'Isidora', 'Grinsted', 27, 67, '(489) 4269903', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('dyackiminie1v@dagondesign.com', 78, 'Donica', 'Yackiminie', 30, 68, '(959) 5357715', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('iwelsby1w@engadget.com', 30, 'Ingamar', 'Welsby', 39, 69, '(965) 4170812', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ehuckleby1x@freewebs.com', 76, 'Emmeline', 'Huckleby', 3, 70, '(139) 7559327', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('rkaroly1y@amazon.co.uk', 41, 'Ramsay', 'Karoly', 11, 71, '(661) 7584516', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ymayes1z@goo.gl', 21, 'Yolande', 'Mayes', 22, 72, '(619) 7699314', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('alimb20@flickr.com', 39, 'Alessandra', 'Limb', 45, 73, '(846) 6850803', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('npinfold21@netscape.com', 27, 'Norina', 'Pinfold', 49, 74, '(389) 1899685', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cgingle22@dmoz.org', 44, 'Cathi', 'Gingle', 2, 75, '(663) 6264792', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('lprate23@fc2.com', 36, 'Land', 'Prate', 12, 76, '(945) 1490394', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('htrazzi24@accuweather.com', 35, 'Hoebart', 'Trazzi', 18, 77, '(342) 4166348', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gmicallef25@oakley.com', 46, 'Gustie', 'Micallef', 20, 78, '(114) 4478621', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('tstorms26@msn.com', 54, 'Taryn', 'Storms', 5, 79, '(951) 5067430', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ckyngdon27@jugem.jp', 43, 'Cathrin', 'Kyngdon', 17, 80, '(445) 6893713', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('ybenazet28@comcast.net', 33, 'Ysabel', 'Benazet', 9, 81, '(501) 4880789', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('orubee29@wordpress.org', 36, 'Ofella', 'Rubee', 34, 82, '(109) 9909299', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('mthomlinson2a@google.com', 27, 'Melina', 'Thomlinson', 10, 83, '(186) 6225669', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cnursey2b@tinyurl.com', 24, 'Cynthy', 'Nursey', 37, 84, '(563) 6032940', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kragg2c@dagondesign.com', 31, 'Kelli', 'Ragg', 44, 85, '(629) 7576323', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('eroebuck2d@nyu.edu', 36, 'Estelle', 'Roebuck', 33, 86, '(860) 2333446', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('cbarwell2e@home.pl', 32, 'Colene', 'Barwell', 32, 87, '(796) 9250269', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bchesson2f@fema.gov', 30, 'Broddie', 'Chesson', 15, 88, '(269) 9298400', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('scumming2g@hibu.com', 81, 'Sawyere', 'Cumming', 38, 89, '(925) 9302239', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('eroyan2h@va.gov', 68, 'Elyssa', 'Royan', 47, 90, '(255) 1723899', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('bblanch2i@scribd.com', 32, 'Bride', 'Blanch', 35, 91, '(518) 2259711', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('gickovits2j@unesco.org', 35, 'Garrik', 'Ickovits', 50, 92, '(162) 1175835', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('jralston2k@uiuc.edu', 47, 'Jojo', 'Ralston', 42, 93, '(962) 2263931', 'personal effects only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('erothert2l@php.net', 21, 'Emogene', 'Rothert', 8, 94, '(136) 8236781', 'Full Household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('kcrewes2m@google.co.jp', 41, 'Kathlin', 'Crewes', 13, 95, '(957) 5956017', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('zsimonich2n@msn.com', 22, 'Zahara', 'Simonich', 29, 96, '(627) 8736319', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('sgummow2o@histats.com', 55, 'Sauveur', 'Gummow', 28, 97, '(151) 2970293', 'vehicle only');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('abourchier2p@nba.com', 75, 'Amabel', 'Bourchier', 24, 98, '(102) 5198950', 'excess baggage');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('alempel2q@w3.org', 39, 'Alicia', 'Lempel', 6, 99, '(167) 2970896', 'part household');
insert into users (email, age, firstName, lastName, homeStateID, id, phone, moveLoad) values ('alattey2r@ehow.com', 60, 'Ardyth', 'Lattey', 43, 100, '(492) 7667775', 'excess baggage');

insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3624, '6', '21', '35', 1, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2692, '6', '27', '12', 2, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (606, '6', '22', '2', 3, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11446, '6', '12', '47', 4, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13657, '6', '20', '39', 5, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5611, '6', '3', '29', 6, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14116, '6', '18', '28', 7, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11151, '6', '10', '36', 8, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11128, '6', '25', '7', 9, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6409, '6', '26', '37', 10, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2402, '6', '5', '25', 11, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14190, '6', '7', '27', 12, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7814, '6', '6', '17', 13, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11023, '6', '23', '31', 14, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4849, '6', '15', '42', 15, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9387, '6', '13', '26', 16, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5167, '6', '24', '22', 17, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14624, '6', '19', '50', 18, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2740, '6', '1', '8', 19, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3772, '6', '8', '10', 20, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7746, '6', '4', '33', 21, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3134, '6', '9', '46', 22, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10728, '6', '2', '6', 23, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12183, '6', '16', '16', 24, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8896, '6', '17', '44', 25, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10349, '6', '14', '45', 26, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7096, '6', '11', '19', 27, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4517, '6', '20', '24', 28, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3718, '6', '7', '48', 29, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1163, '6', '1', '40', 30, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12758, '6', '25', '20', 31, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13532, '6', '17', '30', 32, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14694, '6', '14', '1', 33, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10571, '6', '4', '49', 34, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4278, '6', '2', '14', 35, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13942, '6', '3', '21', 36, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6516, '6', '5', '3', 37, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13792, '6', '23', '38', 38, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11190, '6', '15', '18', 39, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12833, '6', '24', '5', 40, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14856, '6', '13', '15', 41, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12921, '6', '11', '41', 42, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3185, '6', '10', '43', 43, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12232, '6', '12', '4', 44, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4484, '6', '27', '11', 45, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11610, '6', '22', '23', 46, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7769, '6', '9', '32', 47, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3743, '6', '16', '34', 48, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4210, '6', '26', '9', 49, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (550, '6', '8', '13', 50, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7100, '6', '19', '19', 51, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4455, '6', '6', '45', 52, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10846, '6', '18', '42', 53, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12334, '6', '21', '8', 54, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7897, '6', '17', '50', 55, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5523, '6', '10', '13', 56, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13579, '6', '22', '37', 57, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3236, '6', '27', '35', 58, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8411, '6', '24', '2', 59, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2231, '6', '12', '23', 60, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11758, '6', '11', '29', 61, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8746, '6', '1', '16', 62, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1943, '6', '23', '43', 63, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2658, '6', '8', '15', 64, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1104, '6', '2', '44', 65, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7853, '6', '18', '14', 66, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4782, '6', '16', '4', 67, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5067, '6', '7', '47', 68, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9455, '6', '15', '39', 69, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3565, '6', '5', '36', 70, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6632, '6', '13', '32', 71, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14576, '6', '21', '12', 72, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2678, '6', '14', '11', 73, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5109, '6', '25', '27', 74, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13861, '6', '3', '22', 75, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13530, '6', '20', '1', 76, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1482, '6', '19', '24', 77, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7450, '6', '9', '20', 78, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6225, '6', '6', '33', 79, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2830, '6', '4', '7', 80, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7257, '6', '26', '3', 81, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10193, '6', '5', '48', 82, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7772, '6', '9', '9', 83, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3993, '6', '12', '28', 84, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6129, '6', '4', '10', 86, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13601, '6', '11', '17', 87, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5005, '6', '8', '25', 88, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13155, '6', '18', '40', 89, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2997, '6', '1', '21', 90, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11057, '6', '7', '26', 91, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9102, '6', '20', '5', 92, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1114, '6', '6', '30', 93, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10236, '11', '21', '18', 94, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13538, '23', '24', '46', 95, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (911, '37', '25', '38', 96, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (928, '43', '2', '31', 97, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9461, '32', '15', '6', 98, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2630, '6', '22', '49', 99, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5263, '12', '27', '34', 100, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8124, '9', '14', '48', 101, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11807, '31', '16', '41', 102, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5578, '19', '23', '18', 103, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11544, '2', '10', '8', 104, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7112, '47', '3', '49', 105, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3514, '33', '13', '31', 106, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (846, '15', '17', '29', 107, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11083, '40', '26', '13', 108, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7387, '38', '23', '43', 109, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6111, '42', '9', '33', 110, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6313, '14', '6', '50', 111, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (961, '44', '18', '32', 112, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2128, '17', '7', '34', 113, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5475, '7', '19', '37', 114, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12413, '3', '12', '14', 115, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7385, '27', '14', '28', 116, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12652, '21', '2', '38', 117, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4664, '34', '27', '42', 118, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (833, '8', '3', '1', 119, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5840, '4', '5', '45', 120, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6639, '39', '13', '9', 121, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (875, '48', '24', '39', 122, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11134, '11', '21', '2', 123, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10190, '32', '25', '44', 124, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11979, '23', '16', '24', 125, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3576, '25', '17', '26', 126, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14272, '35', '1', '23', 127, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14775, '46', '20', '30', 128, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12551, '16', '26', '16', 129, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10618, '36', '8', '47', 130, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1349, '45', '11', '46', 131, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7528, '30', '10', '6', 132, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6611, '26', '22', '35', 133, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13140, '29', '4', '40', 134, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1229, '50', '15', '20', 135, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7790, '28', '21', '7', 136, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11192, '12', '5', '36', 137, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5965, '10', '24', '21', 138, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4352, '24', '16', '11', 139, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12150, '43', '14', '12', 140, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8189, '20', '8', '22', 141, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14029, '1', '1', '27', 142, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9373, '37', '23', '15', 143, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11186, '49', '15', '17', 144, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4831, '18', '4', '3', 145, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8201, '22', '11', '25', 146, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3272, '6', '18', '5', 147, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1024, '13', '7', '4', 148, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10378, '5', '6', '10', 149, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1011, '41', '9', '19', 150, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3673, '49', '26', '39', 151, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7913, '10', '3', '16', 152, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6023, '7', '12', '9', 153, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4876, '21', '22', '8', 154, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13115, '22', '13', '34', 155, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13553, '28', '27', '49', 156, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14239, '30', '17', '13', 157, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6712, '47', '19', '43', 158, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11292, '32', '2', '38', 159, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4351, '6', '10', '50', 160, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9388, '33', '20', '20', 161, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5066, '42', '25', '22', 162, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8734, '11', '26', '42', 163, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7006, '50', '5', '11', 164, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12579, '39', '9', '2', 165, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5071, '2', '1', '41', 166, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7061, '29', '27', '40', 167, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8972, '36', '21', '35', 168, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14639, '37', '16', '17', 169, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6650, '35', '25', '26', 170, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9116, '12', '10', '15', 171, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11568, '38', '24', '48', 172, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8512, '16', '8', '3', 173, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14024, '23', '7', '36', 174, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12534, '25', '20', '10', 175, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5285, '31', '14', '6', 176, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13756, '14', '3', '27', 177, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2224, '48', '11', '37', 178, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9389, '9', '17', '33', 179, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9813, '5', '19', '25', 180, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10250, '26', '12', '23', 181, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2599, '40', '18', '12', 182, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11366, '34', '4', '1', 183, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12126, '3', '6', '19', 184, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14263, '8', '15', '46', 185, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8140, '13', '13', '32', 186, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9633, '41', '22', '29', 187, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9825, '44', '2', '28', 188, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12567, '19', '23', '30', 189, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12051, '45', '11', '18', 190, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11688, '46', '13', '24', 191, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7724, '43', '27', '14', 192, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5346, '1', '20', '7', 193, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9441, '17', '9', '21', 194, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8999, '27', '21', '45', 195, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10042, '24', '14', '4', 196, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14561, '15', '24', '44', 197, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11043, '18', '10', '31', 198, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4172, '4', '8', '47', 199, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4992, '20', '16', '5', 200, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6661, '27', '6', '39', 201, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1793, '5', '18', '8', 202, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5652, '1', '23', '20', 203, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1200, '47', '3', '24', 204, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (546, '22', '2', '50', 205, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6248, '44', '15', '25', 206, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12716, '45', '25', '3', 207, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14932, '24', '5', '41', 208, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9848, '37', '22', '38', 209, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5373, '29', '1', '44', 210, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12642, '26', '19', '22', 211, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5965, '11', '17', '23', 212, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14483, '32', '26', '36', 213, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10729, '39', '7', '4', 214, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3237, '15', '12', '48', 215, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1057, '36', '4', '6', 216, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5731, '14', '1', '45', 217, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14089, '28', '22', '33', 218, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10602, '18', '7', '47', 219, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9287, '7', '19', '32', 220, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1008, '41', '15', '29', 221, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1974, '10', '12', '1', 222, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (613, '17', '27', '43', 223, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2207, '42', '3', '35', 224, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6224, '9', '9', '9', 225, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11264, '13', '11', '11', 226, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1382, '2', '13', '5', 227, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5566, '48', '16', '37', 228, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12532, '21', '5', '27', 229, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4393, '4', '10', '42', 230, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5480, '40', '25', '12', 231, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10602, '34', '2', '21', 232, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5773, '31', '20', '17', 233, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4987, '46', '23', '46', 234, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14949, '19', '26', '31', 235, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13367, '8', '24', '19', 236, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7414, '35', '8', '7', 237, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5350, '43', '6', '16', 238, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13778, '50', '18', '15', 239, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2976, '23', '17', '26', 240, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8404, '25', '14', '18', 241, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9916, '49', '4', '13', 242, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2817, '3', '21', '14', 243, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2718, '20', '8', '10', 244, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14491, '12', '18', '40', 245, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11245, '38', '15', '28', 246, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12502, '30', '10', '30', 247, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14623, '33', '13', '2', 248, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14286, '16', '16', '49', 249, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4197, '6', '4', '34', 250, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12206, '9', '22', '48', 251, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13981, '26', '24', '9', 252, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14600, '6', '21', '44', 253, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10970, '34', '1', '5', 254, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6982, '29', '9', '36', 255, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2644, '31', '6', '43', 256, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12829, '5', '25', '14', 257, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14212, '8', '7', '23', 258, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1338, '30', '26', '33', 259, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8963, '1', '27', '13', 260, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7264, '46', '12', '2', 261, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12362, '36', '20', '11', 262, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10852, '28', '5', '25', 263, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11691, '3', '14', '21', 264, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14737, '25', '23', '38', 265, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3274, '7', '11', '31', 266, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5295, '12', '3', '41', 267, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12470, '4', '2', '34', 268, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4998, '49', '17', '10', 269, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7601, '38', '19', '45', 270, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3547, '42', '20', '1', 271, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14850, '20', '27', '27', 272, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3023, '10', '22', '4', 273, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2126, '16', '26', '30', 274, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9401, '37', '14', '6', 275, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1830, '33', '24', '22', 276, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5977, '35', '11', '32', 277, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10142, '13', '13', '7', 278, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8906, '11', '17', '35', 279, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4086, '23', '16', '18', 280, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7683, '43', '8', '12', 281, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11429, '40', '4', '42', 282, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7473, '47', '12', '26', 283, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7801, '18', '9', '20', 284, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3493, '14', '25', '15', 285, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10371, '21', '6', '29', 286, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10974, '41', '5', '24', 287, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5710, '44', '3', '40', 288, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5596, '19', '10', '19', 289, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4020, '48', '18', '37', 290, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8131, '32', '23', '46', 291, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7925, '27', '15', '49', 292, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1083, '50', '2', '3', 293, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9911, '39', '21', '39', 294, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10086, '45', '19', '47', 295, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4843, '15', '1', '8', 296, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14159, '2', '7', '28', 297, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9847, '24', '5', '50', 298, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (507, '22', '11', '17', 299, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9473, '17', '25', '16', 300, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13844, '30', '8', '18', 301, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11293, '36', '1', '3', 302, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10393, '47', '17', '33', 303, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9245, '17', '10', '16', 304, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (950, '1', '7', '48', 305, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8884, '50', '13', '17', 306, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5065, '2', '19', '49', 307, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3432, '49', '22', '5', 308, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3805, '32', '26', '21', 309, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7554, '22', '6', '27', 310, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5559, '29', '23', '35', 311, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10909, '43', '16', '34', 312, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12905, '37', '15', '37', 313, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11683, '34', '9', '12', 314, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6919, '15', '4', '13', 315, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14210, '9', '12', '39', 316, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8300, '21', '20', '20', 317, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9828, '6', '3', '23', 318, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12208, '23', '2', '38', 319, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12648, '33', '24', '6', 320, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4597, '14', '14', '31', 321, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5008, '8', '18', '10', 322, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8192, '16', '27', '29', 323, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13056, '31', '21', '41', 324, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9684, '18', '9', '1', 325, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1243, '40', '23', '36', 326, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13881, '3', '1', '19', 327, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1789, '46', '22', '2', 328, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8182, '13', '4', '7', 329, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4604, '41', '11', '47', 330, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5072, '38', '8', '44', 331, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6906, '28', '15', '28', 332, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1748, '20', '27', '42', 333, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (523, '44', '19', '22', 334, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7373, '5', '12', '45', 335, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1369, '19', '20', '8', 336, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11513, '24', '10', '30', 337, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4956, '25', '24', '43', 338, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2917, '35', '18', '4', 339, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14817, '4', '6', '11', 340, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14390, '42', '3', '50', 341, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14617, '12', '16', '32', 342, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8995, '45', '13', '26', 343, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8743, '48', '5', '40', 344, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3788, '39', '7', '14', 345, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13859, '7', '2', '25', 346, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9819, '10', '26', '15', 347, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12421, '27', '25', '9', 348, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10307, '11', '14', '46', 349, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1371, '26', '21', '24', 350, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2873, '12', '17', '29', 351, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11383, '7', '26', '19', 352, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6854, '45', '14', '3', 353, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (738, '38', '27', '33', 354, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (598, '14', '10', '9', 355, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9852, '22', '24', '1', 356, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12848, '20', '18', '5', 357, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6481, '36', '22', '16', 358, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13819, '17', '25', '37', 359, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3861, '16', '12', '41', 360, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7405, '18', '20', '31', 361, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11551, '9', '19', '8', 362, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9679, '48', '15', '45', 363, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6431, '34', '17', '42', 364, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14765, '32', '13', '48', 365, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14340, '25', '3', '23', 366, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5626, '11', '6', '38', 367, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8255, '46', '21', '27', 368, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10269, '5', '11', '43', 369, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9259, '43', '5', '35', 370, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10417, '10', '9', '44', 371, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (601, '26', '23', '10', 372, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12674, '24', '8', '34', 373, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3718, '50', '7', '6', 374, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6836, '2', '1', '25', 375, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5474, '47', '2', '26', 376, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2457, '13', '4', '11', 377, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7628, '35', '16', '14', 378, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13035, '42', '5', '39', 379, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (631, '27', '11', '12', 380, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14521, '8', '26', '50', 381, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6200, '28', '8', '40', 382, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7920, '37', '23', '28', 383, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14611, '33', '12', '24', 384, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5569, '49', '27', '32', 385, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10746, '29', '2', '17', 386, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14820, '31', '22', '20', 387, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9471, '21', '18', '30', 388, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3349, '30', '4', '4', 389, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7305, '15', '16', '15', 390, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9625, '44', '21', '49', 391, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4884, '19', '17', '36', 392, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14558, '6', '10', '46', 393, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10508, '41', '9', '13', 394, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2023, '39', '7', '7', 395, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12124, '1', '14', '2', 396, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1188, '40', '24', '22', 397, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1718, '23', '19', '18', 398, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4167, '4', '3', '47', 399, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8699, '3', '6', '21', 400, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12281, '27', '20', '13', 401, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13986, '46', '13', '3', 402, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9059, '6', '1', '1', 403, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4062, '44', '15', '34', 404, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12441, '16', '25', '19', 405, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14703, '11', '7', '29', 406, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12528, '17', '9', '50', 407, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5472, '12', '11', '23', 408, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (828, '22', '23', '14', 409, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (501, '48', '25', '31', 410, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6975, '47', '5', '5', 411, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6948, '31', '24', '10', 412, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8211, '39', '15', '21', 413, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (815, '28', '20', '18', 414, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9647, '30', '3', '2', 415, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10952, '34', '19', '8', 416, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7855, '21', '21', '22', 417, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9258, '18', '8', '20', 418, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12697, '1', '1', '6', 419, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (915, '37', '18', '9', 420, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1377, '9', '22', '42', 421, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12250, '45', '12', '38', 422, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1438, '5', '27', '30', 423, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1369, '24', '10', '40', 424, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11761, '40', '26', '49', 425, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8785, '50', '6', '33', 426, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7181, '4', '2', '7', 427, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12523, '38', '4', '15', 428, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2599, '32', '17', '12', 429, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1050, '29', '13', '45', 430, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3070, '3', '16', '36', 431, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1084, '8', '14', '41', 432, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (989, '25', '6', '39', 433, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4981, '43', '13', '47', 434, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13979, '33', '5', '11', 435, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4373, '14', '4', '24', 436, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12675, '15', '25', '32', 437, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12164, '41', '14', '44', 438, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14005, '13', '22', '43', 439, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8930, '26', '21', '48', 440, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11593, '20', '16', '28', 441, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4688, '35', '23', '16', 442, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13914, '10', '7', '27', 443, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11212, '19', '9', '37', 444, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10896, '7', '3', '46', 445, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13413, '49', '24', '17', 446, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2744, '2', '20', '26', 447, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13659, '36', '11', '4', 448, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1181, '42', '10', '25', 449, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9261, '23', '1', '35', 450, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7728, '40', '8', '39', 451, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13367, '33', '19', '41', 452, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (594, '48', '26', '31', 453, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5633, '8', '17', '6', 454, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13007, '15', '15', '20', 455, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (544, '39', '27', '12', 456, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (778, '14', '2', '40', 457, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10264, '47', '12', '3', 458, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9471, '46', '18', '7', 459, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8574, '41', '4', '19', 460, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4692, '45', '11', '21', 461, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (657, '5', '7', '26', 462, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5635, '18', '23', '18', 463, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14152, '36', '2', '36', 464, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6427, '34', '5', '2', 465, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1756, '29', '14', '22', 466, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11437, '21', '26', '1', 467, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (517, '43', '12', '44', 468, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14106, '12', '3', '47', 469, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3359, '9', '18', '4', 470, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13307, '19', '25', '30', 471, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14703, '26', '27', '9', 472, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1399, '27', '9', '32', 473, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9234, '3', '24', '34', 474, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1569, '37', '10', '50', 475, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12870, '17', '21', '48', 476, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3814, '11', '16', '37', 477, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5480, '24', '13', '16', 478, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10307, '31', '17', '17', 479, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (846, '42', '15', '43', 480, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14490, '4', '19', '27', 481, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2587, '32', '8', '24', 482, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10941, '13', '20', '42', 483, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13199, '2', '22', '33', 484, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14547, '1', '1', '28', 485, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5737, '23', '6', '11', 486, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7511, '10', '15', '29', 487, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9976, '44', '6', '5', 488, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11950, '6', '16', '13', 489, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10698, '50', '20', '25', 490, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14441, '20', '23', '45', 491, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3910, '38', '8', '8', 492, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5523, '16', '12', '15', 493, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2314, '25', '19', '35', 494, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13932, '7', '24', '49', 495, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10623, '30', '4', '46', 496, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7680, '22', '1', '10', 497, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12504, '28', '7', '14', 498, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10820, '35', '21', '38', 499, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8891, '49', '22', '23', 500, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12679, '24', '11', '50', 501, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5488, '19', '5', '32', 502, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13767, '35', '9', '47', 503, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8982, '46', '13', '26', 504, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5970, '13', '26', '42', 505, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3837, '37', '17', '3', 506, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9955, '27', '18', '37', 507, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7622, '8', '10', '33', 508, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1371, '11', '2', '40', 509, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13961, '34', '27', '46', 510, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2239, '22', '3', '2', 511, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10253, '32', '25', '21', 512, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7363, '7', '14', '19', 513, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4625, '47', '7', '39', 514, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9023, '26', '26', '6', 515, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3236, '6', '19', '41', 516, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7130, '17', '22', '23', 517, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4510, '28', '5', '18', 518, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13860, '10', '8', '45', 519, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2083, '48', '9', '49', 520, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9802, '2', '6', '28', 521, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7353, '40', '11', '48', 522, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8200, '14', '24', '15', 523, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5726, '20', '17', '5', 524, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2120, '9', '3', '27', 525, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12436, '33', '25', '35', 526, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12760, '18', '16', '30', 527, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9822, '21', '20', '16', 528, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12693, '44', '21', '43', 529, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3190, '43', '14', '9', 530, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10883, '3', '27', '24', 531, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10139, '50', '10', '22', 532, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14900, '39', '12', '12', 533, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11623, '38', '23', '14', 534, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10458, '12', '18', '36', 535, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8438, '29', '1', '1', 536, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3577, '36', '13', '7', 537, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7574, '15', '2', '20', 538, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1603, '30', '15', '17', 539, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8397, '23', '4', '8', 540, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14986, '16', '25', '38', 541, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14554, '41', '5', '44', 542, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10076, '25', '1', '29', 543, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14746, '49', '12', '10', 544, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12000, '5', '9', '25', 545, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1680, '1', '3', '13', 546, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11785, '42', '13', '34', 547, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12410, '45', '4', '31', 548, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (688, '31', '22', '11', 549, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7031, '4', '15', '4', 550, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11509, '49', '16', '12', 551, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2867, '9', '23', '3', 552, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14809, '27', '26', '43', 553, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1167, '19', '10', '36', 554, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10144, '10', '27', '34', 555, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9600, '42', '24', '16', 556, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9163, '33', '18', '33', 557, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14335, '28', '17', '15', 558, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11658, '24', '6', '17', 559, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (526, '43', '19', '5', 560, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11659, '45', '14', '19', 561, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5932, '29', '20', '8', 562, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9039, '20', '2', '21', 563, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8208, '21', '11', '42', 564, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6656, '26', '8', '28', 565, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5407, '4', '21', '2', 566, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1939, '48', '7', '26', 567, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13833, '16', '5', '27', 568, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4204, '12', '23', '29', 569, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6430, '8', '22', '22', 570, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3540, '15', '8', '39', 571, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12056, '47', '26', '9', 572, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14974, '46', '25', '44', 573, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11892, '40', '14', '35', 574, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14594, '34', '3', '13', 575, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13058, '25', '15', '32', 576, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9129, '38', '27', '6', 577, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3024, '39', '1', '40', 578, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2965, '6', '24', '18', 579, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9142, '41', '11', '50', 580, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7951, '5', '21', '37', 581, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12379, '2', '12', '24', 582, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14843, '37', '7', '41', 583, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8260, '11', '6', '7', 584, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9486, '31', '17', '11', 585, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9712, '35', '19', '10', 586, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13598, '23', '4', '49', 587, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14688, '3', '13', '45', 588, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10799, '1', '20', '4', 589, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2071, '36', '10', '14', 590, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13823, '18', '18', '38', 591, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (914, '50', '9', '31', 592, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7531, '22', '16', '47', 593, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1944, '13', '2', '25', 594, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9897, '7', '4', '20', 595, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2362, '32', '8', '1', 596, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5826, '17', '10', '23', 597, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4569, '14', '15', '46', 598, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11651, '30', '2', '30', 599, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2176, '44', '3', '48', 600, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14824, '4', '20', '5', 601, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14228, '15', '18', '39', 602, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1438, '2', '7', '8', 603, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6516, '29', '19', '21', 604, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4378, '6', '24', '3', 605, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (649, '36', '27', '32', 606, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4153, '23', '12', '44', 607, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5449, '33', '14', '26', 608, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1085, '46', '21', '20', 609, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11715, '5', '26', '49', 610, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4400, '11', '5', '41', 611, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5287, '16', '13', '37', 612, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2379, '21', '1', '35', 613, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10041, '35', '22', '40', 614, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13651, '42', '6', '18', 615, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4080, '27', '17', '6', 616, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5065, '22', '23', '15', 617, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14065, '30', '16', '13', 618, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8779, '3', '11', '30', 619, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9999, '20', '25', '28', 620, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10481, '48', '9', '42', 621, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3435, '43', '17', '12', 622, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10861, '10', '4', '36', 623, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8369, '8', '7', '25', 624, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9707, '28', '12', '43', 625, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9583, '34', '23', '24', 626, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5370, '31', '18', '46', 627, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11836, '19', '6', '17', 628, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11940, '17', '24', '9', 629, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (829, '50', '16', '31', 630, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1914, '32', '14', '19', 631, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5913, '47', '20', '14', 632, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7319, '26', '15', '50', 633, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8623, '25', '1', '23', 634, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3223, '18', '13', '11', 635, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10215, '24', '8', '22', 636, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4219, '14', '10', '45', 637, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9708, '9', '22', '10', 638, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2938, '38', '11', '2', 639, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10361, '49', '27', '47', 640, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14427, '37', '5', '16', 641, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14458, '7', '19', '7', 642, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8894, '1', '3', '34', 643, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10547, '40', '26', '48', 644, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12925, '45', '25', '27', 645, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11701, '13', '9', '29', 646, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7464, '39', '2', '4', 647, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13963, '41', '21', '38', 648, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11156, '44', '12', '33', 649, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9690, '12', '5', '1', 650, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13035, '13', '27', '46', 651, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2144, '43', '6', '45', 652, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5873, '33', '18', '29', 653, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11508, '28', '16', '37', 654, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1250, '46', '3', '10', 655, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4108, '11', '10', '2', 656, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12168, '7', '9', '11', 657, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12042, '35', '19', '7', 658, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4474, '26', '13', '26', 659, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11865, '49', '17', '1', 660, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6134, '5', '15', '21', 661, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8713, '14', '26', '18', 662, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10526, '20', '7', '35', 663, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2345, '42', '23', '17', 664, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2815, '32', '2', '25', 665, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13343, '1', '20', '30', 666, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2526, '29', '1', '27', 667, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8072, '19', '4', '4', 669, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11178, '23', '8', '31', 670, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12030, '48', '25', '38', 671, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3721, '47', '21', '48', 672, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5363, '30', '22', '41', 673, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5545, '4', '14', '28', 674, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5284, '31', '24', '49', 675, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1516, '50', '9', '14', 676, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1172, '37', '2', '39', 677, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12545, '25', '24', '13', 678, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5604, '10', '16', '36', 679, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13935, '3', '12', '22', 680, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5059, '39', '20', '15', 681, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13405, '22', '10', '24', 682, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13770, '18', '1', '12', 683, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7851, '24', '14', '43', 684, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7999, '41', '17', '16', 685, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7154, '36', '11', '20', 686, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12188, '8', '21', '47', 687, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14209, '45', '15', '34', 688, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4607, '40', '18', '50', 689, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11532, '12', '7', '5', 690, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3026, '27', '4', '32', 691, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2069, '44', '13', '6', 692, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14680, '34', '27', '19', 693, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11278, '6', '5', '9', 694, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10858, '15', '25', '33', 695, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4433, '9', '3', '40', 696, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7348, '38', '6', '44', 697, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (916, '16', '22', '8', 698, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7061, '2', '23', '3', 699, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12468, '17', '19', '23', 700, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11791, '35', '26', '29', 701, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4240, '16', '8', '33', 702, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14422, '41', '23', '26', 703, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6431, '12', '21', '41', 704, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10793, '42', '7', '14', 705, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (741, '21', '27', '46', 706, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11497, '20', '9', '13', 707, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1545, '39', '16', '31', 708, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13399, '28', '12', '35', 709, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1098, '13', '22', '36', 710, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14224, '8', '20', '20', 711, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1434, '7', '10', '3', 712, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6172, '45', '11', '21', 713, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4904, '17', '6', '2', 714, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8641, '15', '19', '1', 715, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3899, '10', '2', '38', 716, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1436, '38', '25', '27', 717, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7241, '9', '26', '5', 718, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6226, '32', '15', '50', 719, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4717, '29', '13', '9', 720, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14628, '1', '3', '30', 721, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5677, '11', '8', '28', 722, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12881, '47', '24', '44', 723, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4373, '6', '17', '48', 724, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9248, '43', '18', '42', 725, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11277, '36', '14', '7', 726, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13091, '33', '5', '22', 727, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10578, '48', '1', '23', 728, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11807, '22', '4', '11', 729, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5283, '49', '5', '32', 730, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4264, '34', '24', '45', 731, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2014, '23', '23', '12', 732, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11568, '46', '1', '18', 733, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11118, '3', '27', '37', 734, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12093, '14', '26', '49', 735, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5580, '2', '4', '19', 736, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10746, '18', '17', '40', 737, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9962, '4', '7', '16', 738, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11624, '24', '11', '24', 739, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1312, '25', '19', '17', 740, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10803, '40', '8', '39', 741, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (543, '37', '25', '47', 742, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3248, '5', '10', '8', 743, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1825, '31', '14', '15', 744, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4160, '44', '2', '43', 745, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11094, '19', '16', '6', 746, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14623, '26', '3', '25', 747, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2315, '27', '22', '34', 748, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2681, '50', '20', '4', 749, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13651, '30', '12', '10', 750, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8602, '32', '21', '7', 751, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11788, '29', '15', '17', 752, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5317, '2', '18', '22', 753, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11252, '19', '13', '47', 754, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13847, '49', '9', '42', 755, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6235, '43', '6', '5', 756, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12062, '25', '3', '9', 757, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8757, '28', '2', '25', 758, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8104, '22', '27', '26', 759, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8601, '45', '25', '36', 760, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5275, '14', '26', '23', 761, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4031, '34', '20', '43', 762, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11484, '31', '7', '40', 763, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4827, '15', '11', '11', 764, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12241, '39', '13', '35', 765, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1920, '46', '17', '34', 766, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9645, '21', '23', '31', 767, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2255, '7', '18', '21', 768, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3860, '41', '10', '12', 769, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3981, '12', '19', '39', 770, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9245, '3', '9', '24', 771, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4824, '8', '16', '49', 772, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4532, '9', '24', '19', 773, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8430, '5', '14', '15', 774, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7703, '18', '5', '18', 775, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8834, '11', '15', '45', 776, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6335, '30', '1', '10', 777, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5382, '17', '6', '16', 778, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14271, '35', '12', '4', 779, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13996, '23', '4', '32', 780, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5219, '33', '8', '37', 781, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3413, '26', '21', '3', 782, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8564, '10', '22', '30', 783, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11152, '6', '25', '20', 784, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5422, '47', '20', '44', 785, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3580, '1', '23', '50', 786, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8628, '27', '17', '33', 787, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9589, '42', '14', '38', 788, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4418, '16', '3', '27', 789, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8777, '36', '16', '2', 790, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13166, '4', '4', '46', 791, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14993, '50', '10', '14', 792, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13112, '24', '5', '6', 793, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12244, '20', '11', '13', 794, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3541, '40', '9', '29', 795, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13968, '48', '26', '8', 796, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9273, '44', '8', '41', 797, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8265, '38', '15', '48', 798, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1360, '13', '27', '28', 799, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11939, '37', '7', '1', 800, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11936, '3', '12', '11', 801, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1905, '19', '6', '46', 802, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9183, '28', '2', '31', 803, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3985, '17', '1', '36', 804, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1102, '47', '22', '38', 805, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2708, '35', '24', '25', 806, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5785, '39', '19', '45', 807, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4672, '38', '21', '50', 808, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4744, '24', '18', '15', 809, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1519, '43', '13', '35', 810, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (620, '25', '25', '30', 811, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1320, '33', '20', '28', 812, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14308, '31', '9', '19', 813, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2216, '26', '18', '37', 814, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3687, '9', '19', '48', 815, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5902, '45', '10', '20', 816, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6372, '46', '12', '5', 817, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2815, '11', '7', '49', 818, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4999, '10', '6', '39', 819, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12380, '18', '24', '16', 820, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6572, '22', '14', '3', 821, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2510, '44', '13', '29', 822, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14980, '41', '17', '40', 823, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14023, '7', '21', '8', 824, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1539, '50', '22', '42', 825, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9726, '8', '4', '27', 826, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10079, '49', '27', '21', 827, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8969, '15', '26', '1', 828, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (975, '1', '8', '10', 829, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6647, '16', '23', '2', 830, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1681, '37', '3', '33', 831, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1350, '32', '5', '12', 832, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12437, '36', '15', '18', 833, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (874, '34', '16', '44', 834, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7548, '30', '2', '41', 835, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7628, '40', '1', '47', 836, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9260, '12', '11', '7', 837, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5321, '48', '26', '13', 838, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9675, '4', '23', '34', 839, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10625, '42', '7', '24', 840, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12121, '21', '8', '22', 841, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5488, '14', '1', '32', 842, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13192, '2', '3', '26', 843, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10729, '20', '11', '9', 844, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10428, '6', '16', '6', 845, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12141, '5', '25', '43', 846, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3303, '13', '18', '14', 847, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13754, '23', '17', '23', 848, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4281, '29', '10', '17', 849, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3275, '27', '19', '4', 850, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2503, '11', '24', '19', 851, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5333, '32', '15', '37', 852, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3258, '19', '2', '47', 853, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7955, '37', '14', '26', 854, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5498, '18', '13', '10', 855, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7572, '45', '20', '1', 856, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4177, '24', '9', '29', 857, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2698, '4', '21', '31', 858, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9616, '50', '12', '13', 859, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10171, '42', '22', '30', 860, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3828, '5', '5', '8', 861, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6031, '6', '4', '48', 862, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13284, '29', '27', '42', 863, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1092, '38', '6', '32', 864, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8175, '47', '18', '39', 865, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4076, '48', '11', '5', 866, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8437, '28', '10', '38', 867, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11397, '2', '7', '14', 868, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3301, '35', '8', '27', 869, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12682, '36', '23', '7', 870, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9929, '14', '4', '6', 871, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6692, '13', '13', '17', 872, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11936, '20', '20', '12', 873, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11292, '9', '2', '3', 874, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9223, '7', '12', '43', 875, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3878, '31', '15', '24', 876, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5342, '21', '5', '15', 877, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12648, '26', '27', '4', 878, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1384, '41', '25', '18', 879, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10482, '23', '24', '20', 880, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10613, '12', '21', '45', 881, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12506, '1', '17', '34', 882, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6764, '27', '26', '11', 883, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8641, '34', '9', '9', 884, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6478, '10', '16', '41', 885, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14242, '17', '19', '21', 886, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1735, '25', '22', '49', 887, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1018, '8', '6', '40', 888, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14268, '16', '14', '2', 889, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5406, '22', '3', '44', 890, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14326, '39', '1', '46', 891, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2051, '15', '18', '28', 892, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3444, '46', '19', '36', 893, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6940, '44', '15', '33', 894, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8879, '33', '21', '50', 895, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3067, '3', '17', '16', 896, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2692, '49', '27', '25', 897, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14968, '40', '22', '23', 898, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9653, '43', '11', '35', 899, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14286, '30', '4', '22', 900, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8729, '10', '9', '19', 901, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4538, '47', '5', '13', 902, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14533, '41', '10', '30', 903, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4835, '15', '16', '9', 904, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14224, '35', '26', '45', 905, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (997, '8', '12', '27', 906, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9041, '31', '23', '29', 907, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7041, '21', '25', '26', 908, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13979, '13', '7', '49', 909, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10538, '2', '6', '18', 910, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6760, '24', '14', '37', 911, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3175, '39', '3', '40', 912, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6225, '34', '2', '3', 913, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1366, '50', '24', '16', 914, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3438, '43', '8', '47', 915, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14383, '11', '1', '35', 916, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1838, '42', '20', '7', 917, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9254, '32', '13', '15', 918, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11443, '36', '9', '32', 919, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3862, '19', '19', '34', 920, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9688, '22', '16', '46', 921, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4417, '1', '6', '25', 922, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14774, '20', '11', '14', 923, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8647, '3', '18', '44', 924, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3693, '45', '15', '50', 925, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10534, '40', '14', '10', 926, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5734, '29', '25', '5', 927, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1023, '44', '20', '17', 928, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14235, '6', '13', '48', 929, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8202, '9', '24', '23', 930, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10549, '30', '2', '11', 931, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9046, '46', '4', '28', 932, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10137, '37', '7', '38', 933, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8182, '18', '8', '8', 934, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5197, '49', '3', '4', 935, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12297, '33', '1', '12', 936, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9486, '4', '23', '2', 937, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6288, '5', '10', '20', 938, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8088, '17', '27', '39', 939, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13547, '28', '22', '6', 940, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13460, '7', '21', '1', 941, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10145, '23', '12', '36', 942, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (921, '16', '5', '24', 943, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5402, '14', '26', '31', 944, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1059, '48', '17', '21', 945, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10988, '25', '18', '42', 946, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1198, '12', '27', '43', 947, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (758, '27', '2', '33', 948, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (730, '38', '15', '41', 949, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9337, '26', '8', '22', 950, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14305, '45', '14', '19', 951, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5692, '9', '6', '1', 952, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5765, '21', '13', '23', 953, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3016, '19', '3', '31', 954, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12285, '39', '7', '12', 955, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5074, '17', '12', '15', 956, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10989, '42', '24', '10', 957, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6989, '14', '1', '35', 958, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5283, '1', '19', '48', 959, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3391, '31', '23', '5', 960, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5721, '50', '17', '36', 961, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7896, '40', '11', '40', 962, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12879, '28', '4', '27', 963, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6222, '27', '16', '8', 964, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5812, '44', '9', '4', 965, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11824, '46', '20', '50', 966, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8174, '4', '26', '20', 967, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8986, '8', '25', '14', 968, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9406, '23', '22', '9', 969, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (4487, '30', '10', '18', 970, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11395, '13', '5', '33', 971, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6933, '36', '21', '37', 972, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6904, '34', '27', '47', 973, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (14340, '10', '15', '7', 974, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2472, '32', '9', '44', 975, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (7107, '2', '23', '21', 976, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (13496, '18', '7', '41', 977, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12619, '3', '18', '45', 978, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10269, '38', '6', '34', 979, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6793, '22', '22', '38', 980, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6037, '35', '17', '28', 981, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9762, '29', '13', '25', 982, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (624, '43', '24', '30', 983, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5864, '24', '11', '32', 984, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (2729, '20', '25', '24', 985, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6861, '25', '16', '13', 986, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1014, '47', '20', '22', 987, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10737, '6', '3', '39', 988, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (10764, '15', '1', '17', 989, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11062, '33', '8', '42', 990, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (5467, '5', '10', '43', 991, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (1206, '26', '19', '29', 992, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (8422, '37', '14', '16', 993, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6961, '48', '12', '49', 994, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (12370, '49', '5', '26', 995, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (6385, '11', '26', '2', 996, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9934, '12', '4', '46', 997, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (9348, '41', '21', '11', 998, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (3502, '16', '2', '6', 999, 'Full Household');
insert into routes (cost, fromStateID, toCountryID, moverID, id, moveLoad) values (11390, '7', '25', '3', 1000, 'Full Household');

insert into moverContacts (userID, moverID, dateContacted, routeID) values ('58', '9', '2023-10-14 22:43:41', '927');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('71', '2', '2023-02-25 01:58:12', '652');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('50', '5', '2024-04-08 13:53:20', '284');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('22', '20', '2023-05-09 08:41:39', '46');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('96', '41', '2023-10-19 07:42:01', '788');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('63', '12', '2023-06-09 01:32:19', '703');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('47', '42', '2023-04-10 18:56:55', '882');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('28', '21', '2023-08-18 10:56:41', '66');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('59', '26', '2023-12-20 05:14:00', '602');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('93', '13', '2024-01-10 20:29:03', '840');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('3', '19', '2023-03-19 19:00:21', '400');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('90', '8', '2023-11-11 13:37:30', '476');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('43', '30', '2023-02-22 07:59:27', '806');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('17', '25', '2023-11-29 17:06:45', '866');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('26', '29', '2023-02-05 21:24:27', '422');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('20', '22', '2023-08-15 05:35:17', '919');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('72', '1', '2023-01-10 06:31:40', '445');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('76', '37', '2023-04-13 01:05:11', '189');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('62', '31', '2023-07-11 09:53:23', '576');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('79', '3', '2023-06-17 09:52:32', '571');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('83', '28', '2023-02-13 19:21:39', '847');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('1', '16', '2023-05-03 19:53:53', '660');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('52', '39', '2023-10-27 02:58:21', '505');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('68', '45', '2023-12-02 04:47:30', '428');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('38', '24', '2023-09-08 09:03:02', '158');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('49', '44', '2023-11-24 13:19:40', '807');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('19', '43', '2023-06-14 01:17:21', '343');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('6', '7', '2024-04-20 16:29:51', '804');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('85', '38', '2023-09-25 00:32:39', '791');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('99', '33', '2023-04-11 16:12:23', '544');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('48', '17', '2024-04-25 07:55:41', '127');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('27', '27', '2023-10-13 15:52:54', '810');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('39', '40', '2024-01-30 07:46:58', '985');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('55', '49', '2023-09-14 23:39:14', '735');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('9', '18', '2023-01-18 21:42:59', '490');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('8', '11', '2023-12-12 15:08:04', '947');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('65', '32', '2023-03-01 12:54:15', '712');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('23', '50', '2023-11-13 11:51:18', '117');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('94', '48', '2023-03-16 04:37:43', '503');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('73', '6', '2024-01-16 05:36:23', '250');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('84', '47', '2023-07-24 04:01:05', '952');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('89', '14', '2024-04-21 12:14:08', '443');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('57', '23', '2024-05-06 15:27:11', '70');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('67', '4', '2024-05-06 21:46:46', '672');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('95', '35', '2023-05-15 05:34:41', '427');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('36', '34', '2024-03-31 09:54:22', '154');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('31', '36', '2024-05-07 07:19:56', '377');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('77', '15', '2023-06-06 17:08:52', '696');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('97', '10', '2023-09-27 08:40:14', '350');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('42', '46', '2023-06-30 02:29:25', '371');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('21', '6', '2024-05-11 05:18:06', '895');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('80', '18', '2023-10-05 09:23:12', '983');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('40', '48', '2023-03-11 02:38:08', '569');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('86', '34', '2023-11-09 18:05:36', '878');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('66', '26', '2023-01-14 17:54:31', '456');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('60', '45', '2023-03-12 02:58:16', '623');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('4', '43', '2024-02-17 02:26:16', '239');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('98', '39', '2024-05-14 00:46:02', '386');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('10', '31', '2024-04-28 12:41:58', '357');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('69', '14', '2023-04-22 05:20:00', '643');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('5', '30', '2024-05-06 19:00:42', '554');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('41', '17', '2023-04-02 01:41:25', '340');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('75', '44', '2023-12-22 18:53:45', '216');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('24', '20', '2024-04-13 18:48:35', '349');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('32', '24', '2024-04-11 16:14:41', '928');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('78', '10', '2023-02-20 03:50:25', '65');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('70', '25', '2024-02-20 18:11:37', '863');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('51', '15', '2022-12-27 16:44:48', '943');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('12', '23', '2023-09-25 20:39:23', '408');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('30', '5', '2024-05-26 03:21:57', '535');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('34', '41', '2024-05-19 03:16:12', '251');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('74', '1', '2023-03-31 02:55:11', '76');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('37', '32', '2023-02-04 17:42:38', '512');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('61', '36', '2024-01-20 23:55:38', '853');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('88', '19', '2024-02-27 19:20:30', '565');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('82', '49', '2023-12-28 19:12:53', '418');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('64', '37', '2024-02-08 14:47:44', '305');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('11', '27', '2024-03-01 21:29:06', '100');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('46', '46', '2023-05-16 18:45:59', '871');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('14', '47', '2023-05-17 19:54:41', '522');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('35', '22', '2023-06-30 18:25:41', '742');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('16', '13', '2023-01-18 06:20:08', '711');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('29', '42', '2023-10-25 02:03:36', '861');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('92', '33', '2023-10-30 14:26:58', '22');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('18', '11', '2024-01-23 06:01:25', '561');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('2', '2', '2024-01-11 21:30:02', '67');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('54', '50', '2023-03-25 02:08:32', '342');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('15', '4', '2023-11-20 10:14:13', '965');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('53', '21', '2023-04-07 03:56:00', '737');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('45', '29', '2023-09-10 11:45:12', '186');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('56', '7', '2023-02-13 19:02:45', '177');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('100', '40', '2023-08-13 03:42:31', '397');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('87', '38', '2023-07-01 10:44:56', '157');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('7', '3', '2023-02-09 02:22:30', '676');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('13', '16', '2023-02-06 19:58:52', '130');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('91', '12', '2023-05-29 04:33:51', '869');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('81', '8', '2024-05-28 14:00:18', '726');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('44', '28', '2024-04-12 18:54:09', '419');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('25', '9', '2023-03-25 20:38:41', '185');
insert into moverContacts (userID, moverID, dateContacted, routeID) values ('33', '35', '2023-07-21 08:52:47', '738');

insert into countryRankings (countryID, rankingNum, userID, id) values (1, 1, 15, 1);
insert into countryRankings (countryID, rankingNum, userID, id) values (2, 2, 15, 2);
insert into countryRankings (countryID, rankingNum, userID, id) values (3, 3, 15, 3);
insert into countryRankings (countryID, rankingNum, userID, id) values (4, 4, 15, 4);
insert into countryRankings (countryID, rankingNum, userID, id) values (5, 5, 15, 5);
insert into countryRankings (countryID, rankingNum, userID, id) values (6, 6, 15, 6);
insert into countryRankings (countryID, rankingNum, userID, id) values (7, 7, 15, 7);
insert into countryRankings (countryID, rankingNum, userID, id) values (8, 8, 15, 8);
insert into countryRankings (countryID, rankingNum, userID, id) values (9, 9, 15, 9);
insert into countryRankings (countryID, rankingNum, userID, id) values (10, 10, 15, 10);
insert into countryRankings (countryID, rankingNum, userID, id) values (11, 11, 15, 11);
insert into countryRankings (countryID, rankingNum, userID, id) values (12, 12, 15, 12);
insert into countryRankings (countryID, rankingNum, userID, id) values (13, 13, 15, 13);
insert into countryRankings (countryID, rankingNum, userID, id) values (14, 14, 15, 14);
insert into countryRankings (countryID, rankingNum, userID, id) values (15, 15, 15, 15);
insert into countryRankings (countryID, rankingNum, userID, id) values (16, 16, 15, 16);
insert into countryRankings (countryID, rankingNum, userID, id) values (17, 17, 15, 17);
insert into countryRankings (countryID, rankingNum, userID, id) values (18, 18, 15, 18);
insert into countryRankings (countryID, rankingNum, userID, id) values (19, 19, 15, 19);
insert into countryRankings (countryID, rankingNum, userID, id) values (20, 20, 15, 20);
insert into countryRankings (countryID, rankingNum, userID, id) values (21, 21, 15, 21);
insert into countryRankings (countryID, rankingNum, userID, id) values (22, 22, 15, 22);
insert into countryRankings (countryID, rankingNum, userID, id) values (23, 23, 15, 23);
insert into countryRankings (countryID, rankingNum, userID, id) values (24, 24, 15, 24);
insert into countryRankings (countryID, rankingNum, userID, id) values (25, 25, 15, 25);
insert into countryRankings (countryID, rankingNum, userID, id) values (26, 26, 15, 26);
insert into countryRankings (countryID, rankingNum, userID, id) values (27, 27, 15, 27);

-- REMOVE THIS
insert into sliders (weather, rail_density, education, crime_safety, pop_density, healthcare, leisure, cost_of_life, userID) values (50, 50, 50, 50, 50, 50, 50, 50, 15);