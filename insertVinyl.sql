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
INSERT INTO Artist (artistNameLast, artistNameFirst, artistAlias)
VALUES 
('Barnett', 'Courtney', 'NULL'), --1
('Stevens', 'Sufjan', NULL), --2
('Smith', 'Gabrielle', 'Eskimeuax'), --3
('Kalb', 'Oliver', 'Eskimeuax'), --4
( 'Walworth', 'Felix', 'Eskimeuax'), --5
( 'Greenleaf', 'Jack', 'Eskimeuax'), --6
('Shelly', 'Joan', NULL), --7
( 'Scott', 'Mackenzie', 'Torres'), --8
( 'Guðmundsdóttir', 'Björk', 'Björk'), --9
( 'Monds-Watson', 'Bridie', 'SOAK'), --10
( 'Arnalds', 'Ólafur', NULL), --11
( 'Ott', 'Alice Sara', NULL), --12
( 'Tucker', 'Cleo', 'Girlpool'), --13
( 'Tividad', ' Harmony', 'Girlpool'), --14
( 'Diaz', 'Lisa-Kaindé', 'Ibeyi'), --15
( 'Diaz', 'Naomi', 'Ibeyi') --16

--genre look-up
INSERT INTO Genre (genreName)
VALUES
( 'Indie Rock'), --1
('Indie Folk'), --2
('Ethereal Pop'), --3
( 'Traditional Folk'), --4
( 'Rock'), --5
( 'Electronic'), --6
( 'Avant Garde'), --7
( 'Classical Crossover'), --8
( 'Ambient'), --9
( 'Dream Pop'), --10
( 'Classical'), --11
( 'Folk Punk'), --12
( 'Downtempo'), --13
( 'Soul'), --14
( 'R&B'), --15
( 'Experimental') --16

--speed look-up
--https://rateyourmusic.com/wiki/Music:Release+attributes#Speed
INSERT INTO Speed (speed)
VALUES
( '16 rpm'), --1
( '33 rpm'), --2
( '45 rpm'), --3
( '78 rpm'), --4
( '80 rpm'), --5
( '3¾ IPS'), --6
( '7½ IPS') --7

--size look-up
--http://xvinylx.com/wiki/Record_size
INSERT INTO Size (size)
VALUES
('7 inch'), --1
('10 inch'), --2
('12 inch') --3

--album test data
INSERT INTO Album (albumName, catalogNo, storeItemNo, speedKey, sizeKey)
VALUES 
( 'Sometimes I Sit and Think, And Sometimes I Just Sit', 'xxx', 'xxx', 2, 3), --1
( 'Carrie & Lowell', ), --2
( 'O.K.', ), --3
( 'Over And Even', ), --4
( 'Sprinter', ), --5
( 'Vulnicura', ), --6
( 'Before We Forgot How To Dream', ), --7
( 'The Chopin Project', ), --8
( 'Before The World Was Big', ), --9
( 'Ibeyi', ) --10

INSERT INTO releaseDate (releaseDate)
VALUES
('2006'), --1
('2007'), --2
('2008'), --3
('2009'), --4
('2010'), --5 
('2011'), --6
('2012'), --7
('2013'), --8
('2014'), --9
('2015'), --9
('2016')  --10


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

--AlbumYear
INSERT INTO AlbumYear (albumKey, releaseDateKey)
VALUES
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(9, 9),
(10, 9)

--Condition look-up

--AlbumCondition test data


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
INSERT INTO Customer (customerLastName, customerFirstName, customerAddress, customerCity, customerState, customerZip, customerPhone, customerEmail) 
VALUES 
('Doe', 'Jane', '123 Fake St', 'Tampa', 'FL', '33617', '813-998-2199', 'janed@gmail.com'), --1
('Doe', 'Joe', '123 Fake St', 'Tampa', 'FL', '33617', '813-998-2101', 'joedoe@gmail.com'), --2
('Brady', 'Marsha', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1000', 'marshamarshamarsha@gmail.com'), --3
('Brady', 'Bobby', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1001', 'bobbyb@gmail.com'), --4
('Brady', 'Greg', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1002', 'bradybunchrulz@gmail.com'), --5
('Brady', 'Tiger', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1003', 'tigerthedog@gmail.com'), --6
('Connor', 'Roseanne', '714 Delaware St', 'Landford', 'IL', '60290', '773-978-6669', 'yor@gmail.com'), --7
('Connor', 'Darlene', '714 Delaware St', 'Landford', 'IL', '60290', '773-918-2169', 'saragilbert@gmail.com'), --8
('Connor', 'Becky', '714 Delaware St', 'Landford', 'IL', '60290', '813-998-1239', 'whichbeckyami@gmail.com'), --9
('Simpson', 'Homer', '742 Evergreen Ter', 'Springfield', 'OR', '97477','541-123-4567', 'chunkylover53@aol.com'), --10
('Simpson', 'Lisa', '742 Evergreen Ter', 'Springfield', 'OR', '97477', '541-123-7654', 'smartgirl63@yahoo.com'), --11
('Simpson', 'Bart', '742 Evergreen Ter', 'Springfield', 'OR', '97477', '541-123-9999', 'bart.simpson@hotmail.com') --12

--Employee test data
INSERT INTO Employee (EmployeeNameLast, EmployeeNameFirst)
VALUES
('di Prima', 'Diane'), --1
('Joplin', 'Janis'), --2
('Garcia', 'Jerry') --3

--POS test data
INSERT INTO PointOfSale (posLocation, posDateTime, posID, customerKey, employeeKey)
VALUES
( 'SEAcpR1', '2016-02-14 14:23:56', 'AeFAdFXOkl', 1, 3), --1
( 'SEAcpR2', '2016-02-14 14:32:01', 'vKvKqi4uyW', 2, 2), --2
( 'SEAcpR2', '2016-02-14 15:14:13', 'si5v2Kz9LD', 3, 2), --3
( 'SEAcpR1', '2016-02-14 16:00:14', 'AWCfAU6BuE', 4, 3), --4
( 'SEAcpR3', '2016-02-14 16:37:22', 'TtGiEQEoTv', 5, 1), --5
( 'SEAcpR3', '2016-02-15 09:45:33', 'z2HrP7e9z5', 6, 1), --6 
( 'SEAcpR3', '2016-02-15 12:02:48', 'lJPDcqt0cD', 7, 1), --7
( 'SEAcpR1', '2016-02-15 12:12:41', 'kbE3JgnNIl', 8, 2), --8
( 'SEAcpR1', '2016-02-15 13:15:14', 'uUKb9vW57p', 9, 2), --9
( 'SEAcpR2', '2016-02-15 13:33:53', 'pjNpq3n10F', 10, 3) --10

--Sales test data
INSERT INTO SaleDetail (albumKey, salesQty, salesTax, salesPrice, posKey)
VALUES 
( 2, 1, 1.42, 14.99, 1), --1
( 4, 1, 1.61, 16.99, 2), --2
( 5, 2, 1.42, 14.99, 3), --3
( 8, 1, 2.28, 24.00, 4), --4
( 7, 1, 1.90, 19.99, 5), --5
( 9, 2, 1.90, 19.98, 6), --6
( 6, 1, 1.75, 18.41, 7), --7
( 3, 1, 1.95, 20.53, 8), --8
( 1, 1, 1.61, 16.99, 9), --9
(10,1, 1.90, 19.99, 10) --10
