Each album will be identified uniquely.

```sql
SELECT albumKey, albumName, catalogNo, storeItemNo 
FROM Album
ORDER BY albumName, storeItemNo
```
|albumKey|albumName|catalogNo|storeItemNo|
|---|---|---|---
|9	|Before The World Was Big	|WEBB450LP	|466447
|7	|Before We Forgot How To Dream	|RTRADLP743	|287455
|2	|Carrie & Lowell	|AKR099	|490788
|10	|Ibeyi	|XLCD665	|306586
|3	|O.K.	|DDW027	|208605
|4	|Over And Even	|NOQ-047	|231890
|1	|Sometimes I Sit and Think, And Sometimes I Just Sit	|HA0036LPX	|293001
|5	|Sprinter	|PODCD0809	|449739
|8	|The Chopin Project	|28948114863	|495563
|6	|Vulnicura	|tplp1231dl	|350262

Display specs of most valuable album in stock
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

|AlbumName|catalogNo|storeItemNo|size|speed|CoverCondition|albumCondition|
|---|---|---|---|---|---|---|
|Over And Even	|NOQ-047	|231890	|12 inch	|33 rpm	|New	|perfect or near perfect
|Before The World Was Big	|WEBB450LP	|466447	|12 inch	|33 rpm	|New	|perfect or near perfect

In addition to storing purchase price, the database will record the date/time and from whence/whom each album was acquired. 
```sql
SELECT AlbumName, salesQty, salesPrice, posDateTime, customerLastName, customerFirstName
FROM SalesDetail sd
JOIN PointOfSale pos ON pos.posKey = sd.posKey
JOIN Album a ON a.albumKey = sd.albumkey
JOIN Customer c ON c.customerKey = pos.customerKey
WHERE sd.albumKey IN 
  (
    SELECT aac.albumkey
    FROM AlbumCoverCondition aac
    JOIN Album a ON a.albumKey = aac.albumKey
    JOIN coverCondition cc ON cc.coverconditionKey = aac.CoverConditionKey
    JOIN albumCondition ac ON ac.albumConditionKey = aac.albumConditionKey
    WHERE cc.rating = 5 AND ac.rating = 'Mint'
    )
```
|AlbumName|salesQty|salesPrice|posDateTime|customerLastName|customerFirstName
|---|---|---|---|---|---|
|Over And Even	|1	|17	|2016-02-14 14:32:00 |Doe	|Joe
|Before The World Was Big	|2	|20	|2016-02-15 09:46:00 |Brady	|Tiger




The values for determining condition will be stored in lookup tables 


The database will track how many of what type of album in which condition(s) have been bought and sold within a given time frame. 







