###Query for tenant leases for 6 and 12.
``sql
SELECT leaseType, tenantNameLast, tenantNameFirst
FROM TenantLease a
JOIN Lease b ON b.leaseKey = a.leaseKey
JOIN LeaseType c ON c. leaseTypeKey = b.leaseTypeKey
JOIN Tenant d ON d.tenantKey = a.tenantKey
ORDER BY tenantNameLast
``
  
###Query for past due rents: apt, lease, overdue time
``sql
SELECT
FROM
``

###Query for dollar amount of rent collected by month for 6 and 12 months
``sql
SELECT aptNo, leaseAmt, leaseType 
FROM Lease a
JOIN LeaseType b ON b.leaseTypeKey = a.leaseTypeKey
JOIN TenantLease c ON c.leaseKey = a.leaseKey
JOIN Apt d ON d.aptKey = c.aptKey
ORDER BY aptNo, leaseType
``
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
``sql
SELECT
FROM
``

###Query for apartment vacancies. List all apartments with no lease?
``sql
SELECT
FROM
``

###Query for apt number and lease end dates within one year
``sql
SELECT
FROM
``

