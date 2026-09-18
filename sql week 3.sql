USE BATA_SHOWROOM;

CREATE TABLE Seller
(
SellerID INT PRIMARY KEY,
SellerName VARCHAR(100),
ContactNo VARCHAR(15),
Email VARCHAR(100),
Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, 'BATA CHENNAI', '9876100001', '[batachennai@gmail.com](mailto:batachennai@gmail.com)', 'Chennai'),
(202, 'BATA MADURAI', '9876100002', '[batamadurai@gmail.com](mailto:batamadurai@gmail.com)', 'Madurai'),
(203, 'BATA COIMBATORE', '9876100003', '[batacoimbatore@gmail.com](mailto:batacoimbatore@gmail.com)', 'Coimbatore'),
(204, 'BATA SALEM', '9876100004', '[batasalem@gmail.com](mailto:batasalem@gmail.com)', 'Salem'),
(205, 'BATA TRICHY', '9876100005', '[batatrichy@gmail.com](mailto:batatrichy@gmail.com)', 'Trichy'),
(206, 'BATA TAMBARAM', '9876100006', '[batatambaram@gmail.com](mailto:batatambaram@gmail.com)', 'Tambaram'),
(207, 'BATA VELLORE', '9876100007', '[batavellore@gmail.com](mailto:batavellore@gmail.com)', 'Vellore'),
(208, 'BATA ERODE', '9876100008', '[bataerode@gmail.com](mailto:bataerode@gmail.com)', 'Erode'),
(209, 'BATA TIRUPUR', '9876100009', '[batatirupur@gmail.com](mailto:batatirupur@gmail.com)', 'Tirupur'),
(210, 'BATA THANJAVUR', '9876100010', '[batathanjavur@gmail.com](mailto:batathanjavur@gmail.com)', 'Thanjavur'),
(211, 'BATA CHENGALPATTU', '9876100011', '[batachengalpattu@gmail.com](mailto:batachengalpattu@gmail.com)', 'Chengalpattu'),
(212, 'BATA KANCHIPURAM', '9876100012', '[batakanchipuram@gmail.com](mailto:batakanchipuram@gmail.com)', 'Kanchipuram'),
(213, 'BATA DINDIGUL', '9876100013', '[batadindigul@gmail.com](mailto:batadindigul@gmail.com)', 'Dindigul'),
(214, 'BATA NAMAKKAL', '9876100014', '[batanamakkal@gmail.com](mailto:batanamakkal@gmail.com)', 'Namakkal'),
(215, 'BATA KARUR', '9876100015', '[batakarur@gmail.com](mailto:batakarur@gmail.com)', 'Karur'),
(216, 'BATA HOSUR', '9876100016', '[batahosur@gmail.com](mailto:batahosur@gmail.com)', 'Hosur'),
(217, 'BATA CUDDALORE', '9876100017', '[batacuddalore@gmail.com](mailto:batacuddalore@gmail.com)', 'Cuddalore'),
(218, 'BATA PUDUKKOTTAI', '9876100018', '[batapudukkottai@gmail.com](mailto:batapudukkottai@gmail.com)', 'Pudukkottai'),
(219, 'BATA NAGERCOIL', '9876100019', '[batanagercoil@gmail.com](mailto:batanagercoil@gmail.com)', 'Nagercoil'),
(220, 'BATA TIRUNELVELI', '9876100020', '[batatirunelveli@gmail.com](mailto:batatirunelveli@gmail.com)', 'Tirunelveli'),
(221, 'BATA TUTICORIN', '9876100021', '[batatuticorin@gmail.com](mailto:batatuticorin@gmail.com)', 'Thoothukudi'),
(222, 'BATA KRISHNAGIRI', '9876100022', '[batakrishnagiri@gmail.com](mailto:batakrishnagiri@gmail.com)', 'Krishnagiri'),
(223, 'BATA DHARMAPURI', '9876100023', '[batadharmapuri@gmail.com](mailto:batadharmapuri@gmail.com)', 'Dharmapuri'),
(224, 'BATA ARIYALUR', '9876100024', '[bataariyalur@gmail.com](mailto:bataariyalur@gmail.com)', 'Ariyalur'),
(225, 'BATA PERAMBALUR', '9876100025', '[bataperambalur@gmail.com](mailto:bataperambalur@gmail.com)', 'Perambalur'),
(226, 'BATA KUMBAKONAM', '9876100026', '[batakumbakonam@gmail.com](mailto:batakumbakonam@gmail.com)', 'Kumbakonam'),
(227, 'BATA MAYILADUTHURAI', '9876100027', '[batamayiladuthurai@gmail.com](mailto:batamayiladuthurai@gmail.com)', 'Mayiladuthurai'),
(228, 'BATA SIVAKASI', '9876100028', '[batasivakasi@gmail.com](mailto:batasivakasi@gmail.com)', 'Sivakasi'),
(229, 'BATA RAMANATHAPURAM', '9876100029', '[bataramanathapuram@gmail.com](mailto:bataramanathapuram@gmail.com)', 'Ramanathapuram'),
(230, 'BATA VIRUDHUNAGAR', '9876100030', '[batavirudhunagar@gmail.com](mailto:batavirudhunagar@gmail.com)', 'Virudhunagar');

SELECT * FROM Seller;

CREATE TABLE Inventory
(
InventoryID INT PRIMARY KEY,
ProductID INT,
SellerID INT,
AvailabilityStatus VARCHAR(20),
Stock INT,

FOREIGN KEY (ProductID)
REFERENCES Product(ProductID),

FOREIGN KEY (SellerID)
REFERENCES Seller(SellerID)


);

INSERT INTO Inventory VALUES
(301, 101, 201, 'AVAILABLE', 30),
(302, 102, 202, 'AVAILABLE', 25),
(303, 103, 203, 'AVAILABLE', 20),
(304, 104, 204, 'AVAILABLE', 18),
(305, 105, 205, 'AVAILABLE', 25),

(306, 106, 206, 'AVAILABLE', 20),
(307, 107, 207, 'AVAILABLE', 30),
(308, 108, 208, 'AVAILABLE', 15),
(309, 109, 209, 'AVAILABLE', 25),
(310, 110, 210, 'AVAILABLE', 20),

(311, 111, 211, 'AVAILABLE', 20),
(312, 112, 212, 'AVAILABLE', 30),
(313, 113, 213, 'AVAILABLE', 25),
(314, 114, 214, 'AVAILABLE', 15),
(315, 115, 215, 'AVAILABLE', 20),

(316, 116, 216, 'AVAILABLE', 20),
(317, 117, 217, 'AVAILABLE', 25),
(318, 118, 218, 'AVAILABLE', 18),
(319, 119, 219, 'AVAILABLE', 25),
(320, 120, 220, 'AVAILABLE', 15),

(321, 121, 221, 'AVAILABLE', 30),
(322, 122, 222, 'AVAILABLE', 25),
(323, 123, 223, 'AVAILABLE', 30),
(324, 124, 224, 'AVAILABLE', 20),
(325, 125, 225, 'AVAILABLE', 18),

(326, 126, 226, 'AVAILABLE', 40),
(327, 127, 227, 'AVAILABLE', 35),
(328, 128, 228, 'AVAILABLE', 30),
(329, 129, 229, 'AVAILABLE', 25),
(330, 130, 230, 'AVAILABLE', 20);

SELECT * FROM Inventory;

SELECT * FROM Seller;

SELECT * FROM Product;

UPDATE Inventory
SET Stock = 20,
AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;

UPDATE Inventory
SET Stock = 0,
AvailabilityStatus = 'UNAVAILABLE'
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;

UPDATE Inventory
SET Stock = 50,
AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;

UPDATE Seller
SET ContactNo = '9876543210'
WHERE SellerID = 215;

SELECT * FROM Seller
WHERE SellerID = 215;

DELETE FROM Inventory
WHERE InventoryID = 330;

SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';

SELECT * FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';

SELECT COUNT(*) AS AvailableProducts
FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';

SELECT COUNT(*) AS UnavailableProducts
FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;

SELECT * FROM Seller;

DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;
