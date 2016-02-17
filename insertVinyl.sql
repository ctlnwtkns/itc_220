--INSERT statements:
--Data From Bob Boilen's Top 10 Albums Of 2015

--1. Courtney Barnett, 'Sometimes I Sit and Think, And Sometimes I Just Sit', Indie Rock
--2. Sufjan Stevens, 'Carrie & Lowell', Indie Rock, Indie Folk
--3. Eskimeaux, 'O.K.', Ethereal Pop, Indie Folk
--4. Joan Shelley, 'Over And Even', Traditional Folk
--5. Torres, 'Sprinter', Rock
--6. Björk, 'Vulnicura', Electronic, Avant Garde, Classical Crossover, 
--7. SOAK, 'Before We Forgot How To Dream', Indie Folk, Dream Pop
--8. Ólafur Arnalds & Alice Sara Ott, 'The Chopin Project, Classical
--9. Girlpool, 'Before The World Was Big', Folk Punk
--10. Ibeyi, 'Ibeyi', Downtempo, Soul, R&B, Experimental

--artist test data
INSERT INTO Artist (artistKey, artistNameLast, artistNameFirst, artistAlias)
VALUES 
(DEFAULT, 'Barnett', 'Courtney', 'NULL'), --1
(DEFAULT, 'Stevens', 'Sufjan', NULL), --2
(DEFAULT, 'Smith', 'Gabrielle', 'Eskimeuax'), --3
(DEFAULT, 'Kalb', 'Oliver', 'Eskimeuax'), --4
(DEFAULT, 'Walworth', 'Felix', 'Eskimeuax'), --5
(DEFAULT, 'Greenleaf', 'Jack', 'Eskimeuax'), --6
(DEFAULT, 'Shelly', 'Joan', NULL), --7
(DEFAULT, 'Scott', 'Mackenzie', 'Torres'), --8
(DEFAULT, 'Guðmundsdóttir', 'Björk', 'Björk'), --9
(DEFAULT, 'Monds-Watson', 'Bridie', 'SOAK'), --10
(DEFAULT, 'Arnalds', 'Ólafur', NULL), --11
(DEFAULT, 'Ott', 'Alice Sara', NULL), --12
(DEFAULT, 'Tucker', 'Cleo', 'Girlpool'), --13
(DEFAULT, 'Tividad', ' Harmony', 'Girlpool'), --14
(DEFAULT, 'Diaz', 'Lisa-Kaindé', 'Ibeyi'), --15
(DEFAULT, 'Diaz', 'Naomi', 'Ibeyi') --16

--genre look-up
INSERT INTO Genre (genreKey, genreName)
VALUES
(DEFAULT, 'Indie Rock'), --1
(DEFAULT, 'Indie Folk'), --2
(DEFAULT, 'Ethereal Pop'), --3
(DEFAULT, 'Traditional Folk'), --4
(DEFAULT, 'Rock'), --5
(DEFAULT, 'Electronic'), --6
(DEFAULT, 'Avant Garde'), --7
(DEFAULT, 'Classical Crossover'), --8
(DEFAULT, 'Ambient'), --9
(DEFAULT, 'Dream Pop'), --10
(DEFAULT, 'Classical'), --11
(DEFAULT, 'Folk Punk'), --12
(DEFAULT, 'Downtempo'), --13
(DEFAULT, 'Soul'), --14
(DEFAULT, 'R&B'), --15
(DEFAULT), 'Experimental') --16

--speed look-up
--https://rateyourmusic.com/wiki/Music:Release+attributes#Speed
INSERT INTO Speed (speedKey, speed)
VALUES
(DEFAULT, '16 rpm'), --1
(DEFAULT, '33 rpm'), --2
(DEFAULT, '45 rpm'), --3
(DEFAULT, '78 rpm'), --4
(DEFAULT, '80 rpm'), --5
(DEFAULT, '3¾ IPS'), --6
(DEFAULT, '7½ IPS') --7

--size look-up
--http://xvinylx.com/wiki/Record_size
INSERT INTO Size (sizeKey, size)
VALUES
(DEFAULT, '7 inch'), --1
(DEFAULT, '10 inch'), --2
(DEFAULT, '12 inch') --3

--quality look-up
--https://rateyourmusic.com/wiki/Music:Release+attributes#Quality
INSERT INTO Quality (qualityKey, weight)
VALUES
(DEFAULT, '120 gram'), --1
(DEFAULT, '140 gram'), --2
(DEFAULT, '150 gram'), --3
(DEFAULT,' 160 gram'), --4
(DEFAULT, '180 gram'), --5
(DEFAULT, '200 gram'), --6
(DEFAULT, '220 gram')  --7

--album test data
INSERT INTO Album (albumKey, albumName, catalogNo, storeItemNo, speedKey, sizeKey)
VALUES 
(DEFAULT, 'Sometimes I Sit and Think, And Sometimes I Just Sit', ), --1
(DEFAULT, 'Carrie & Lowell', ), --2
(DEFAULT, 'O.K.', ), --3
(DEFAULT, 'Over And Even', ), --4
(DEFAULT, 'Sprinter', ), --5
(DEFAULT, 'Vulnicura', ), --6
(DEFAULT, 'Before We Forgot How To Dream', ), --7
(DEFAULT, 'The Chopin Project', ), --8
(DEFAULT, 'Before The World Was Big', ), --9
(DEFAULT, 'Ibeyi', ) --10

--releaseDate test data
INSERT INTO releaseDate (releaseDateKey, releaseDate)
VALUES
(DEFALUT, 2006), --1
(DEFAUT,  2007), --2
(DEFAULT, 2008), --3
(DEFAULT, 2009), --4
(DEFAULT, 2010), --5 
(DEFAULT, 2011), --6
(DEFAULT, 2012), --7
(DEFAULT, 2013), --8
(DEFAULT, 2014), --9
(DEFAULT, 2015), --9
(DEFAULT, 2016)  --10


--artistAlbum
INSERT INTO artistAlbum (artistKey, albumKey)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 6),
(10, 7),
(11, 8),
(12, 8),
(13, 9),
(14, 9),
(15, 10),
(16, 10)

--artistGenre test data
INSERT INTO artistGenre (artistKey, genreKey)
VALUES
(1, 1), 
(2, 1), 
(2, 2),
(3, 2),
(3, 3),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(6, 2),
(6, 3),
(7, 4), 
(8, 5), 
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(10, 1),
(10, 10),
(11, 11), 
(12, 11), 
(13, 12), 
(14, 12), 
(15, 13), 
(15, 14),
(15, 15),
(15, 16),
(16, 13), 
(16, 14), 
(16, 15),
(16, 16)

--Customer test data
INSERT INTO Customer (CustomerKey,customerLastName, customerFirstName, customerAddress, customerCity, customerState, customerZip, customerPhone, customerEmail) 
VALUES 
(DEFAULT, 'Doe', 'Jane', '123 Fake St', 'Tampa', 'FL', '33617', '813-998-2199', 'janed@gmail.com', --1
(DEFAULT, 'Doe', 'Joe', '123 Fake St', 'Tampa', 'FL', '33617', '813-998-2101', 'joedoe@gmail.com'), --2
(DEFAULT, 'Brady', 'Marsha', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1000', 'marshamarshamarsha@gmail.com'), --3
(DEFAULT, 'Brady', 'Bobby', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1001', 'bobbyb@gmail.com'), --4
(DEFAULT, 'Brady', 'Greg', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1002', 'bradybunchrulz@gmail.com'), --5
(DEFAULT, 'Brady', 'Tiger', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1003', 'tigerthedog@gmail.com'), --6
(DEFAULT, 'Connor', 'Roseanne', '714 Delaware St', 'Landford', 'IL', '60, '773-978-6669', 'yor@gmail.com'), --7
(DEFAULT, 'Connor', 'Darlene', '714 Delaware St', 'Landford', 'IL', '60290', '773-918-2169', 'saragilbert@gmail.com'), --8
(DEFAULT, 'Connor', 'Becky', '714 Delaware St', 'Landford', 'IL', '60290', '813-998-1239', 'whichbeckyami@gmail.com'), --9
(DEFAULT, 'Simpson', 'Homer', '742 Evergreen Ter', 'Springfield', 'OR', '97477''541-123-4567', 'chunkylover53@aol.com'), --10
(DEFAULT, 'Simpson', 'Lisa', '742 Evergreen Ter', 'Springfield', 'OR', '97477', '541-123-7654', 'smartgirl63@yahoo.com'), --11
(DEFAULT, 'Simpson', 'Bart', '742 Evergreen Ter', 'Springfield', 'OR', '97477', '541-123-9999', 'bart.simpson@hotmail.com') --12

--Employee test data
INSERT INTO Employee (Employeekey, EmployeeNameLast, EmployeeNameFirst)
VALUES
(DEFAULT, 'di Prima', 'Diane'), --1
(DEFAULT, 'Joplin', 'Janis'), --2
(DEFAULT, 'Garcia', 'Jerry') --3

--POS test data
INSERT INTO PointOfSale (posKey, posLocation, posDateTime, posID, customerKey, employeeKey)
VALUES
(DEFAULT, 'SEAcpR1', 2016-02-14 14:23:56, 'AeFAdFXOkl', 1, 3), --1
(DEFAULT, 'SEAcpR2', 2016-02-14 14:32:01, 'vKvKqi4uyW', 2, 2), --2
(DEFAULT, 'SEAcpR2', 2016-02-14 15:14:13, 'si5v2Kz9LD', 3, 2), --3
(DEFAULT, 'SEAcpR1', 2016-02-14 16:00:14, 'AWCfAU6BuE', 4, 3), --4
(DEFAULT, 'SEAcpR3', 2016-02-14 16:37:22, 'TtGiEQEoTv', 5, 1), --5
(DEFAULT, 'SEAcpR3', 2016-02-15 09:45:33, 'z2HrP7e9z5', 6, 1), --6 
(DEFAULT, 'SEAcpR3', 2016-02-15 12:02:48, 'lJPDcqt0cD', 7, 1), --7
(DEFAULT, 'SEAcpR1', 2016-02-15 12:12:41, 'kbE3JgnNIl', 8, 2), --8
(DEFAULT, 'SEAcpR1', 2016-02-15 13:15:14, 'uUKb9vW57p', 9, 2), --9
(DEFAULT, 'SEAcpR2', 2016-02-15 13:33:53, 'pjNpq3n10F', 10, 3) --10

--Sales test data
INSERT INTO SaleDetail (salesKey, albumKey, salesQty, salesTax, salesPrice, posKey)
VALUES 
(DEFAULT, 2, 1, 1.42, 14.99, 1), --1
(DEFAULT, 4, 1, 1.61, 16.99, 2), --2
(DEFAULT, 5, 2, 1.42, 14.99, 3), --3
(DEFAULT, 8, 1, 2.28, 24.00, 4), --4
(DEFAULT, 7, 1, 1.90, 19.99, 5), --5
(DEFAULT, 9, 2, 1.90, 19.98, 6), --6
(DEFAULT, 6, 1, 1.75, 18.41, 7), --7
(DEFAULT, 3, 1, 1.95, 20.53, 8), --8
(DEFAULT, 1, 1, 1.61, 16.99, 9), --9
(DEFAULT, 10,1, 1.90, 19.99, 10) --10
