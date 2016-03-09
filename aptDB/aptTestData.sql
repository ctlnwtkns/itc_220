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
