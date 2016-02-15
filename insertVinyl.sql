--INSERT statements:
--Data From Bob Boilen's Top 10 Albums Of 2015

--1. Courtney Barnett, 'Sometimes I Sit and Think, And Sometimes I Just Sit'
--2. Sufjan Stevens, 'Carrie & Lowell'
--3. Eskimeaux, 'O.K.'
--4. Joan Shelley, 'Over And Even'
--5. Torres, 'Sprinter'
--6. Björk, 'Vulnicura'
--7. SOAK, 'Before We Forgot How To Dream'
--8. Ólafur Arnalds & Alice Sara Ott, 'The Chopin Project
--9. Girlpool, 'Before The World Was Big'
--10. Ibeyi, 'Ibeyi'

--artist test data
INSERT INTO Artist (artistKey, artistNameLast, artistNameFirst, artistAlias)
VALUES 
(DEFAULT, 'Barnett', 'Courtney', 'NULL'), 
(DEFAULT, 'Stevens', 'Sufjan', NULL),
(DEFAULT, 'Smith', 'Gabrielle', 'Eskimeuax'),
(DEFAULT, 'Kalb', 'Oliver', 'Eskimeuax'),
(DEFAULT, 'Walworth', 'Felix', 'Eskimeuax'),
(DEFAULT, 'Greenleaf', 'Jack', 'Eskimeuax'),
(DEFAULT, 'Shelly', 'Joan', NULL),
(DEFAULT, 'Scott', 'Mackenzie', 'Torres'),
(DEFAULT, 'Guðmundsdóttir', 'Björk', 'Björk'),
(DEFAULT, 'Monds-Watson', 'Bridie', 'SOAK'),
(DEFAULT, 'Arnalds', 'Ólafur', NULL),
(DEFAULT, 'Ott', 'Alice Sara', NULL),
(DEFAULT, 'Tucker', 'Cleo', 'Girlpool'),
(DEFAULT, 'Tividad', ' Harmony', 'Girlpool'),
(DEFAULT, 'Diaz', 'Lisa-Kaindé', 'Ibeyi'),
(DEFAULT, 'Diaz', 'Naomi', 'Ibeyi')

--speed look-up
--https://rateyourmusic.com/wiki/Music:Release+attributes#Speed
INSERT INTO Speed (speedKey, speed)
VALUES
(DEFAULT, '16 rpm'),
(DEFAULT, '33 rpm'), 
(DEFAULT, '45 rpm'), 
(DEFAULT, '78 rpm'), 
(DEFAULT, '80 rpm'), 
(DEFAULT, '3¾ IPS'), 
(DEFAULT, '7½ IPS') 



--size look-up
--http://xvinylx.com/wiki/Record_size
INSERT INTO Size (sizeKey, size)
VALUES
(DEFAULT, '7 inch'),
(DEFAULT, '10 inch'),
(DEFAULT, '12 inch')

--quality look-up
--https://rateyourmusic.com/wiki/Music:Release+attributes#Quality
INSERT INTO Quality (qualityKey, weight)
VALUES
(DEFAULT, '120 gram'),
(DEFAULT, '140 gram'),
(DEFAULT, '150 gram'),
(DEFAULT,' 160 gram'),
(DEFAULT, '180 gram'),
(DEFAULT, '200 gram'),
(DEFAULT, '220 gram')


--album test data
INSERT INTO Album (albumKey, albumName, catalogNo, storeItemNo, speedKey, sizeKey)
VALUES 
(DEFAULT, 'Sometimes I Sit and Think, And Sometimes I Just Sit', ),
(DEFAULT, 'Carrie & Lowell', ),
(DEFAULT, 'O.K.', ),
(DEFAULT, 'Over And Even', ),
(DEFAULT, 'Sprinter', ),
(DEFAULT, 'Vulnicura', ),
(DEFAULT, 'Before We Forgot How To Dream', ),
(DEFAULT, 'The Chopin Project', ),
(DEFAULT, 'Before The World Was Big', ),
(DEFAULT, 'Ibeyi', )

--Customer test data
INSERT INTO Customer (CustomerKey,customerLastName, customerFirstName, customerAddress, customerCity, customerState, customerZip, customerPhone, customerEmail) 
VALUES 
(DEFAULT, 'Doe', 'Jane', '123 Fake St', 'Tampa', 'FL', '33617', '813-998-2199', 'janed@gmail.com', 
(DEFAULT, 'Doe', 'Joe', '123 Fake St', 'Tampa', 'FL', '33617', '813-998-2101', 'joedoe@gmail.com'),
(DEFAULT, 'Brady', 'Marsha', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1000', 'marshamarshamarsha@gmail.com'),
(DEFAULT, 'Brady', 'Bobby', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1001', 'bobbyb@gmail.com'),
(DEFAULT, 'Brady', 'Greg', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1002', 'bradybunchrulz@gmail.com'),
(DEFAULT, 'Brady', 'Tiger', '12568 Real St', 'Seattle', 'WA', '98101', '206-397-1003', 'tigerthedog@gmail.com'),
(DEFAULT, 'Connor', 'Roseanne', '714 Delaware St', 'Landford', 'IL', '60290', '773-978-2159', 'roseanneconway@gmail.com'),
(DEFAULT, 'Connor', 'Dan', '714 Delaware St', 'Landford', 'IL', '60290', '773-978-6669', 'yor@gmail.com'),
(DEFAULT, 'Connor', 'Darlene', '714 Delaware St', 'Landford', 'IL', '60290', '773-918-2169', 'saragilbert@gmail.com'),
(DEFAULT, 'Connor', 'Becky', '714 Delaware St', 'Landford', 'IL', '60290', '813-998-1239', 'whichbeckyami@gmail.com'),
(DEFAULT, 'Simpson', 'Homer', '742 Evergreen Ter', 'Springfield', 'OR', '97477''541-123-4567', 'chunkylover53@aol.com'),
(DEFAULT, 'Simpson', 'Lisa', '742 Evergreen Ter', 'Springfield', 'OR', '97477', '541-123-7654', 'smartgirl63@yahoo.com'),
(DEFAULT, 'Simpson', 'Bart', '742 Evergreen Ter', 'Springfield', 'OR', '97477', '541-123-9999', 'bart.simpson@hotmail.com')

--Employee test data
INSERT INTO Employee (Employeekey, EmployeeNameLast, EmployeeNameFirst)
VALUES
(DEFAULT, 'di Prima', 'Diane'),
(DEFAULT, 'Joplin', 'Janis'),
(DEFAULT, 'Garcia', 'Jerry')

--Sales test data
INSERT INTO SaleDetail (salesKey, albumKey, salesQty, salesTax, salesPrice, posKey)
VALUES 
(DEFAULT, 2, 1, 1.42, 14.99, ),
(DEFAULT, 4, 1, , 1.61, 16.99 ),
(DEFAULT, 5, 2, 1.42, 14.99, ),
(DEFAULT, 8, 1, 2.28, 24.00, ),
(DEFAULT, 7, 1, 1.90, 19.99, ),
(DEFAULT, 9, 2, , , ),
(DEFAULT, 6, 1, , , ),
(DEFAULT, 3, 1, , , ),
(DEFAULT, 1, 1, , , ),
(DEFAULT, 10, 1 , , , )
