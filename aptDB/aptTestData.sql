--Apt
INSERT INTO Apt (aptNo)
VALUES  (101),
        (102),
        (103),
        (201),
        (202),
        (203),
        (301),
        (302),
        (303),
        (401),
        (402),
        (403),
        (501),
        (502),
        (503)
        


--TenantLease
INSERT INTO TenantLease (aptKey, tenantKey, leaseKey) 
VALUES  (1, 1, 1),
        (2, 2, 2),
        (3, 3, 3),
        (4, 4, 4),
        ( 5, 5, 5),
        (6, 6, 6),
        ( 7, 7, 7),
        (8, 8, 8),
        ( 9, 9, 9),
        (10, 10, 10),
        (11, 11, 11),
        (12, 12, 12),
        ( 13, 13, 13),
        (14, 14, 14),
        (15, 15, 15)

--        Query to get rentDateDue from Lease
--        SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
--        FROM Lease b
--        WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
--        AND tenantLeaseKey = (SELECT tenantLeaseKey FROM tenantLease a WHERE a.leaseKey = b.leaseKey) --for whatever lease matches the tenantLeaseKey stored as current value

--RentPaid
INSERT INTO RentPaid (tenantLeaseKey, rentDateDue, rentDateReceived) 
VALUES  (  
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          12
        ),
        (  
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          2
        ),
        (  
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          8
        ),
        (
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          4
        ),
        (
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          7
        ),
        (
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          13
        ),
        (
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          10
        ),
        ( 
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          5
        ),
        (
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          15
        ),
        ( 
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          6
        ),
        ( 
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          3
        ),
        ( 
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          7
        ),
        ( 
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          14
        ),
        ( 
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          11
        ),
        (  
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          1
        ),
        (  
          ( SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
            FROM Lease b
            WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
            AND tenantLeaseKey = (
                      SELECT tenantLeaseKey 
                      FROM tenantLease a 
                      WHERE a.leaseKey = b.leaseKey)
          ),
          DATEPART(YYYY-MM-DD, GETDATE()), 
          9
        )


--AptMaint
INSERT INTO AptMaint (maintCostKey, aptKey) 
VALUES  (1,10),
        (2,12),
        (3,1),
        (4,3),
        (5,2),
        (6,8),
        (7,9),
        (8,13),
        (9,5),
        (10,14),
        (11,4),
        (12,6),
        (13,11),
        (14,7),
        (15,15)

--Tenant        
INSERT INTO Tenant(tenantNameLast, tenantNameFirst, tenantDOB, tenantSSN)
VALUES

('Simpson', 'Bart', '1988-01-02', '555-12-4769'),
('Simpson', 'Lisa', '1990-02-02', '555-18-6669'),
('Simpson', 'Marge', '1945-01-02', '555-12-5559'),
('Simpson', 'Homer', '1942-08-02', '555-12-9999'),
('Simpson', 'Maggie', '1999-12-31', '554-12-2269'),
('Connor', 'Roseanne', '1950-01-22', '123-12-1119'),
('Connor', 'Becky', '1980-11-22', '123-12-2229'),
('Connor', 'Darlene', '1985-01-02', '123-12-5559'),
('Connor', 'DJ', '1991-11-02', '123-12-9999'),
('Connor', 'Dan', '1949-01-03', '653-12-5419'),
('Brady', 'Jan', '1960-01-22', '123-12-5819'),
('Brady', 'Greg', '1959-01-12', '123-12-6619'),
('Brady', 'Marsha', '1958-01-02', '123-12-6519'),
('Brady', 'Bobby', '1965-01-22', '123-12-2519'),
('Brady', 'Mike', '1940-01-31', '123-12-6319')
