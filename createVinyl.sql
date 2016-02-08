Use Vinyl;

create table Artist
	(
	artistKey int IDENTITY(1,1) PRIMARY KEY,
	artistNameLast varchar(255),
	artistNameFirst varchar(255),
	artistAlias varchar(255)
  )

create table Genre
	(
	genreKey int IDENTITY(1,1) PRIMARY KEY,
	genreName varchar(255) NOT NULL
	)

create table ReleaseDate
	(
	releaseDateKey int IDENTITY(1,1) PRIMARY KEY,
	releaseDate DATE NOT NULL
	)

Create table Speed
	(
	speedKey int IDENTITY(1,1) PRIMARY KEY,
	speed varchar(255) NOT NULL
	)

Create table Size
	(
	sizeKey int IDENTITY(1,1) PRIMARY KEY,
	size varchar(255) NOT NULL
	)

Create table Album
	(
	albumKey int IDENTITY(1,1) PRIMARY KEY,
	albumName varchar(255) NOT NULL,
	catalogNo varchar(255) NOT NULL,
	storeItemNo varchar(255) NOT NULL,
	sizeKey varchar(255) REFERENCES Size(sizeKey)
	speedKey varchar(255) REFERENCES Speed(speedKey)
	)

Create table ArtistAlbum
	(
	artistKey int REFERENCES Artist(artistKey),
	albumKey int REFERENCES Album(albumKey),
	PRIMARY KEY(artistKey , albumKey)
	)

Create table ArtistGenre
	(
	artistKey int REFERENCES Artist(artistKey),
	genreKey int REFERENCES Genre(genreKey),
	PRIMARY KEY(artistKey , genreKey)
	)

Create table Quality
  (
	qualityKey int IDENTITY(1,1) PRIMARY KEY,
	qualityMeasure varchar(255) NOT NULL,
	qualityDescription varchar(255) NOT NULL,    
  )
Ccreate table AlbumQuality
	(
	albumKey int REFERENCES Album(albumKey),
	qualityKey int REFERENCES Quality(qualityKey),
	PRIMARY KEY(albumKey , qualityKey)
	)

Create table CoverCondition
  (
	albumKey int REFERENCES Album(albumKey),
	qualityKey int REFERENCES Quality(qualityKey),
  sizeKey varchar REFERENCES Size(sizeKey),
	PRIMARY KEY(albumKey , qualityKey , sizeKey)
  )

Create table AlbumYear
  (
	albumKey int REFERENCES Album(albumKey),
	releaseDateKey int REFERENCES ReleaseDate(releaseDateKey),
	PRIMARY KEY(albumKey , releaseDateKey )
  )


Create table Customer
	(
	customerKey int IDENTITY(1,1) PRIMARY KEY,
	customerLastName varchar(255) NOT NULL,
	customerFirstName varchar(255) NOT NULL,
	customerAddress varchar(255),
  customerCity varchar(255),
  customerState varchar(255),
  customerZip varchar(255),
  customerPhone varchar(255),
  customerEmail varchar(255) 
	)

Create table Employee
  (
  employeeKey int IDENTITY(1,1) PRIMARY KEY,
	employeeNameFirst varchar(255) NOT NULL,
	employeeNameLast varchar(255) NOT NULL
  )


Create table PointOfSale
	(
	pointofsaleKey int IDENTITY(1,1) PRIMARY KEY,
	posLocation varchar(255) NOT NULL,
	posDateTime varchar(255) NOT NULL,
	posID varchar(255) NOT NULL,
  customerKey int REFERENCES Customer(customerKey),
	employeeKey int REFERENCES Employee(employeeKey),
	)	

Create table SalesDetail
	(
	salesKey int IDENTITY(1,1) PRIMARY KEY,
	albumKey int REFERENCES Album(albumKey),
	salesQty int NOT NULL,
	salesTax decimal NOT NULL,
  salesPrice decimal NOT NULL,
	pointofsaleKey int REFERENCES PointOfSale(pointofsaleKey)
	)
