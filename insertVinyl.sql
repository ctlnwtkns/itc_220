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


INSERT INTO Artist (ArtistKey, ArtistNameLast, ArtistNameFirst)
VALUES 
(DEFAULT, ‘Barnett’, ‘Courtney’), 
(DEFAULT, ‘Stevens’, ‘Sufjan’),
(DEFAULT, ‘Eskimeuax’, NULL),
(DEFAULT, ‘Shelly’, ‘Joan’),
(DEFAULT, ‘Torres’, NULL),
(DEFAULT, ‘Bjork’, NULL),
(DEFAULT, ‘SOAK’, NULL),
(DEFAULT, ‘Arnalds’, ‘Olafur’),
(DEFAULT, ‘Ott’, ‘AliceSara’),
(DEFAULT, ‘Girlpool’, NULL),
(DEFAULT, ‘Ibeyi’, NULL)

INSERT INTO Album (DEFAULT, AlbumName, catalogNo, storeItemNo)
VALUES 
(‘Sometimes I Sit and Think, And Sometimes I Just Sit’, ,), 
( 'Carrie & Lowell', ,),
( 'O.K.', ,),
( 'Over And Even', ,),
('Sprinter', ,),
( 'Vulnicura', ,),
('Before We Forgot How To Dream', ,),
('The Chopin Project’, ,),
('The Chopin Project’, ,),
( 'Before The World Was Big', ,),
('Ibeyi', ,)
