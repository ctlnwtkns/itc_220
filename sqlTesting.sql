--Each album will be identified uniquely.
SELECT albumKey, albumName, catalogNo, storeItemNo 
FROM Album
ORDER BY albumName, storeItemNo

--Records of both the Purchase and Retail price will be stored. 
--(Add these attributes to Album Table?)

--In addition to storing purchase price, the database will record the date/time and from whence/whom each album was acquired. 
--(Add these attributes to Album table?)

--The values for determining condition will be stored in lookup tables 
  --(AlbumCondition, CoverCondition, Speed, Size). 
--One table per value comprising a range of markers indicating condition. 
  --(rating, description)

--Each unique album must be related to a list of those attributes that are used to determine the album’s market value 
--(AlbumCoverCondition). 

--Only the store owners will have access to the array of values that determine each album’s worth, while the customers will only see the retail price and description of its condition.
--(This would is beyond scope for database design)

--The database will track how many of what type of album in which condition(s) have been bought and sold within a given time frame. 
--(SalesDetail, PointofSale)



