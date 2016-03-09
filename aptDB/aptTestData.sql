--Apt
INSERT INTO Apt (aptKey, aptNo)
VALUES  (DEFAULT, 101),
        (DEFAULT, 102),
        (DEFAULT, 103),
        (DEFAULT, 201),
        (DEFAULT, 202),
        (DEFAULT, 203),
        (DEFAULT, 301),
        (DEFAULT, 302),
        (DEFAULT, 303),
        (DEFAULT, 401),
        (DEFAULT, 402),
        (DEFAULT, 403),
        (DEFAULT, 501),
        (DEFAULT, 502),
        (DEFAULT, 503)
        


--TenantLease
INSERT INTO TenantLease (tenantLeaseKey, aptKey, tenantKey, leaseKey) 
VALUES  (DEFAULT, 1, 1, 1),
        (DEFAULT, 2, 2, 2),
        (DEFAULT, 3, 3, 3),
        (DEFAULT, 4, 4, 4),
        (DEFAULT, 5, 5, 5),
        (DEFAULT, 6, 6, 6),
        (DEFAULT, 7, 7, 7),
        (DEFAULT, 8, 8, 8),
        (DEFAULT, 9, 9, 9),
        (DEFAULT, 10, 10, 10),
        (DEFAULT, 11, 11, 11),
        (DEFAULT, 12, 12, 12),
        (DEFAULT, 13, 13, 13),
        (DEFAULT, 14, 14, 14),
        (DEFAULT, 15, 15, 15)

--        Query to get rentDateDue from Lease
--        SELECT (DATEPART(YYYY-MM, CURDATE()) + '-' + DATEPART(DD, leaseDateStart)) AS rentDateDue --the same day of whatever current month as the least start date
--        FROM Lease b
--        WHERE CURDATE() BETWEEN leaseDateStart AND leaseDateEnd
--        AND tenantLeaseKey = (SELECT tenantLeaseKey FROM tenantLease a WHERE a.leaseKey = b.leaseKey) --for whatever lease matches the tenantLeaseKey stored as current value

--RentPaid
INSERT INTO RentPaid (rentPaidKey, tenantLeaseKey, rentDateDue, rentDateReceived) 
VALUES  ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
        ( DEFAULT, 
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
INSERT INTO AptMaint (aptMaintKey, maintCostKey, aptKey) 
VALUES  (DEFAULT, 1,10),
        (DEFAULT, 2,12),
        (DEFAULT, 3,1),
        (DEFAULT, 4,3),
        (DEFAULT, 5,2),
        (DEFAULT, 6,8),
        (DEFAULT, 7,9),
        (DEFAULT, 8,13),
        (DEFAULT, 9,5),
        (DEFAULT, 10,14),
        (DEFAULT, 11,4),
        (DEFAULT, 12,6),
        (DEFAULT, 13,11),
        (DEFAULT, 14,7),
        (DEFAULT, 15,15)
