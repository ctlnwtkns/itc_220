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

--RentPaid
INSERT INTO RentPaid (tenantLeaseKey, rentDateDue, rentDateReceived)
VALUES (13, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 13)),
        GETDATE()
        ),
        (11, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 11)),
        GETDATE()
        ),
         (2, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 2)),
        GETDATE()
        ),
         (7, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 7)),
        GETDATE()
        ),
         (8, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 8)),
        GETDATE()
        ),
         (15, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 15)),
        GETDATE()
        ),
         (3, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 3)),
        GETDATE()
        ),
         (5, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 5)),
        GETDATE()
        ),
         (14, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 14)),
        GETDATE()
        ),
        (9, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 9)),
        GETDATE()
        ),
        (10, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 10)),
        GETDATE()
        ),
        (12, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 12)),
        GETDATE()
        ),
        (4, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 4)),
        GETDATE()
        ),
        (6, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 6)),
        GETDATE()
        ),
        (1, 
        (SELECT CONCAT(YEAR(GETDATE()), '-', MONTH(GETDATE()), '-', DAY(leaseDateStart)) AS rentDateDue 
         FROM Lease b
         WHERE GETDATE() BETWEEN leaseDateStart AND leaseDateEnd 
         AND leaseKey = (SELECT leaseKey FROM tenantLease a WHERE a.tenantleaseKey = 1)),
        GETDATE()
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

--Lease
INSERT INTO Lease(leaseDateStart ,leaseDateEnd, leaseAmt)
VALUES
('2015-10-01', '2016-09-30', '1400.00'),
('2013-10-01', '2016-09-30', '1200.00'),
('2012-10-01', '2016-09-30', '1300.00'),
('2015-10-01', '2016-09-30', '1400.00'),
('2015-10-01', '2016-09-30', '1400.00'),
('2015-10-01', '2016-09-30', '1400.00'),
('2015-10-01', '2016-09-30', '1400.00'),
('2015-10-01', '2016-09-30', '1400.00'),
('2013-10-01', '2016-09-30', '1200.00'),
('2014-10-01', '2016-09-30', '1300.00'),
('2010-10-01', '2016-09-30', '1000.00'),
('2011-10-01', '2016-09-30', '1100.00'),
('2010-10-01', '2016-09-30', '1000.00'),
('2011-10-01', '2016-09-30', '1100.00'),
('2010-10-01', '2016-09-30', '1000.00'),
('2011-10-01', '2016-09-30', '1100.00')

--Lease Type
INSERT INTO LeaseType(leaseType)
VALUES
('6 months'),
('12 months')
INSERT INTO MaintType(maintType)
VALUES
('Normal'),
('Damaged')

INSERT INTO MaintCost(MaintCostTotal,maintDateAssessed,maintDatePaid)
VALUES
('5900.00','2015-05-22', '2015-06-01'),
('180.00','2015-06-03', '2015-06-15'),
('20.30','2015-06-15', '2015-07-01'),
('45.00','2015-06-30', '2015-08-01'),
('1310.00','2015-07-15', '2015-08-10'),
('1103.00','2015-07-21', '2015-08-13'),
('12.00','2015-08-12', '2015-09-02'),
('130.00','2015-08-29', '2015-09-30'),
('239.01','2015-10-14', '2015-11-15'),
('103190.10','2015-12-10', '2016-01-16'),
('104.00','2016-01-20', '2016-02-05'),
('10.00','2016-02-15', '2015-03-03'),
('130.00','2016-02-26', '2015-03-03'),
('190.00','2016-02-27', 'NULL'),
('9.67','2016-03-01', 'NULL')

