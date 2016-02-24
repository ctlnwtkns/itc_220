--Each album will be identified uniquely.

```sql
SELECT albumKey, albumName, catalogNo, storeItemNo 
FROM Album
ORDER BY albumName, storeItemNo
```

--Display condition of most valuable album in stock
```sql
SELECT AlbumName, catalogNo, storeItemNo, size, speed, cc.description AS CoverCondition, ac.description AS AlbumCondition
FROM AlbumCoverCondition aac
JOIN Album a ON a.albumKey = aac.albumKey
JOIN speed sp ON sp.speedKey = a.speedKey 
JOIN size sz ON sz.sizeKey = a.sizeKey
JOIN coverCondition cc ON cc.coverconditionKey = aac.CoverConditionKey
JOIN albumCondition ac ON ac.albumConditionKey = aac.albumConditionKey
WHERE cc.rating = 5 AND ac.rating = 'Mint'
```

--In addition to storing purchase price, the database will record the date/time and from whence/whom each album was acquired. 
```sql
SELECT salesQty, salesPrice, posDateTime
FROM SalesDetail sd
JOIN PointOfSale pos ON pos.posKey = sd.posKey
WHERE sd.albumKey IN 
  (
    SELECT aac.albumkey
    FROM AlbumCoverCondition aac
    JOIN Album a ON a.albumKey = aac.albumKey
    JOIN coverCondition cc ON cc.coverconditionKey = aac.CoverConditionKey
    JOIN albumCondition ac ON ac.albumConditionKey = aac.albumConditionKey
    WHERE cc.rating = 5 AND ac.rating = 'Mint'
    )
```sql

--The values for determining condition will be stored in lookup tables 


--The database will track how many of what type of album in which condition(s) have been bought and sold within a given time frame. 
--(SalesDetail, PointofSale)






