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


INSERT INTO Artist (artistKey, artistNameLast, artistNameFirst, artistAlias)
VALUES 
(DEFAULT, Barnett, 'Courtney', 'NULL'), 
(DEFAULT, Stevens, Sufjan),
(DEFAULT, Eskimeuax, NULL),
(DEFAULT, Shelly, 'Joan'),
(DEFAULT, 'Torres', NULL),
(DEFAULT, Bjork, NULL, NULL),
(DEFAULT, NULL, NULL, 'SOAK'),
(DEFAULT, 'Arnalds, Olafur'),
(DEFAULT, 'Ott', AliceSara', NULL),
(DEFAULT, NULL, NULL, 'Girlpool'),
(DEFAULT, 'Ibeyi', NULL)

INSERT INTO Album (DEFAULT, AlbumName, catalogNo, storeItemNo, sizeKey, speedKey)
VALUES 
('Sometimes I Sit and Think, And Sometimes I Just Sit', ,), 
('Carrie & Lowell', ,),
('O.K.', ,),
('Over And Even', ,),
('Sprinter', ,),
('Vulnicura', ,),
('Before We Forgot How To Dream', ,),
('The Chopin Project’, ,),
('The Chopin Project’, ,),
('Before The World Was Big', ,),
('Ibeyi', ,)

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
