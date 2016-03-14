###Query for tenant leases for 6 and 12.
```sql
SELECT leaseType, tenantNameLast, tenantNameFirst
FROM TenantLease a
JOIN Lease b ON b.leaseKey = a.leaseKey
JOIN LeaseType c ON c. leaseTypeKey = b.leaseTypeKey
JOIN Tenant d ON d.tenantKey = a.tenantKey
ORDER BY tenantNameLast
```

|leaseType| tenantNameLast| tenantNameFirst|
| --- | --- | --- |
|6 months	|Brady	|Jan
|12 months	|Brady	|Greg
|6 months	|Brady	|Marsha
|6 months	|Brady	|Bobby
|6 months	|Brady	|Mike
|6 months	|Connor	|Roseanne
|12 months	|Connor	|Becky
|6 months	|Connor	|Darlene
|6 months	|Connor	|DJ
|12 months	|Connor	|Dan
|6 months	|Simpson	|Bart
|6 months	|Simpson	|Lisa
|6 months	|Simpson	|Marge
|6 months	|Simpson	|Homer
|12 months	|Simpson	|Maggie
  
###Query for past due rents: apt, lease, overdue time
```sql
SELECT
FROM
```

###Query for dollar amount of rent collected by month for 6 and 12 months
```sql
SELECT aptNo, leaseAmt, leaseType 
FROM Lease a
JOIN LeaseType b ON b.leaseTypeKey = a.leaseTypeKey
JOIN TenantLease c ON c.leaseKey = a.leaseKey
JOIN Apt d ON d.aptKey = c.aptKey
ORDER BY aptNo, leaseType
```

|aptNo| leaseAmt| leaseType|
| --- | --- | --- |
|101	|1000.00	|6 months
|102	|1400.00	|6 months
|103	|1200.00	|6 months
|201	|1300.00	|6 months
|202	|1400.00	|12 months
|203	|1400.00	|6 months
|301	|1400.00	|12 months
|302	|1400.00	|6 months
|303	|1400.00	|6 months
|401	|1200.00	|12 months
|402	|1300.00	|6 months
|403	|1000.00	|12 months
|501	|1100.00	|6 months
|502	|1000.00	|6 months
|503	|1100.00	|6 months

###Query for tenant name, apt number and rent paid to date
```sql
SELECT tenantNameLast, tenantNameFirst, aptNo, rentDateReceived, leaseAmt
FROM TenantLease a
JOIN Lease b ON b.leaseKey = a.leaseKey
JOIN Apt c ON c.aptKey = a.aptKey
JOIN RentPaid d ON d.tenantLeaseKey = a.tenantLeaseKey
JOIN Tenant e ON e.tenantKey = a.tenantKey
ORDER BY tenantNameLast
```

|tenantLastName| tenantFirstName| aptNo| rentDateReceived| leaseAmt|
| --- | --- | --- | ---| ---|
|Brady	|Jan	|402	|2016-03-14	|1300.00
|Brady	|Greg	|403	|2016-03-14	|1000.00
|Brady	|Marsha	|501	|2016-03-14	|1100.00
|Brady	|Bobby	|502	|2016-03-14	|1000.00
|Brady	|Mike	|503	|2016-03-14	|1100.00
|Connor	|Roseanne	|203	|2016-03-14	|1400.00
|Connor	|Becky	|301	|2016-03-14	|1400.00
|Connor	|Darlene	|302	|2016-03-14	|1400.00
|Connor	|DJ	|303	|2016-03-14	|1400.00
|Connor	|Dan	|401	|2016-03-14	|1200.00
|Simpson	|Bart	|101	|2016-03-14	|1000.00
|Simpson	|Lisa	|102	|2016-03-14	|1400.00
|Simpson	|Marge	|103	|2016-03-14	|1200.00
|Simpson	|Homer	|201	|2016-03-14	|1300.00
|Simpson	|Maggie	|202	|2016-03-14	|1400.00

###Query for apartment vacancies. List all apartments with no lease?
```sql
SELECT
FROM
```

###Query for apt number and lease end dates within one year
```sql
SELECT
FROM
```

