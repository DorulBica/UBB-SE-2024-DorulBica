CREATE TABLE ProductType (
    ProductTypeID INT PRIMARY KEY,
    TypeName VARCHAR(255) NOT NULL
);

CREATE TABLE EWallet (
    WalletID VARCHAR(255) PRIMARY KEY,
    Balance DECIMAL(10, 2) NOT NULL
    -- Include methods as stored procedures/functions
);

CREATE TABLE UserAccounts (
    Username VARCHAR(255) PRIMARY KEY,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    AccountType VARCHAR(255),
    WalletID VARCHAR(255),
   
);

SELECT * FROM UserAccounts

DROP TABLE UserAccounts

CREATE TABLE Product (
    DrugID INT PRIMARY KEY,
    DrugName VARCHAR(255) NOT NULL,
    Descr TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(255),
    Quantity INT NOT NULL,
    ProductTypeID INT,
    FOREIGN KEY (ProductTypeID) REFERENCES ProductType(ProductTypeID)
    -- Include other fields and constraints as necessary
);

DROP TABLE Product

SELECT * FROM Product

CREATE TABLE DrugListing (
    DrugListingID INT PRIMARY KEY,
    DealerUsername VARCHAR(255) NOT NULL,
    FOREIGN KEY (DealerUsername) REFERENCES UserAccounts(Username)
    -- Include CRUD operations as stored procedures
);

DROP TABLE DrugListing

CREATE TABLE DrugInDrugListing (
    DrugListingID INT,
    DrugID INT,
    FOREIGN KEY (DrugListingID) REFERENCES DrugListing(DrugListingID),
    FOREIGN KEY (DrugID) REFERENCES Product(DrugID),
    PRIMARY KEY (DrugListingID, DrugID)
);

DROP TABLE DrugInDrugListing

CREATE TABLE ShoppingCart (
    CartID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Username) REFERENCES UserAccounts(Username)
    -- productInCart assumed to be a join table for cart and products
);

DROP TABLE ShoppingCart

CREATE TABLE OrderStatus (
    StatusID INT PRIMARY KEY,
    Location VARCHAR(255),
    Status VARCHAR(255)
    -- Include getters and setters as necessary
);

 

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ShoppingCartID INT NOT NULL,
    OrderStatusID INT NOT NULL,
    Accepted BIT NOT NULL,
    FOREIGN KEY (ShoppingCartID) REFERENCES ShoppingCart(CartID),
    FOREIGN KEY (OrderStatusID) REFERENCES OrderStatus(StatusID)
);

DROP TABLE Orders

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    AdminsCut DECIMAL(10, 2),
    DeliveryGuysCut DECIMAL(10, 2),
    DealersCut DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
    -- Wallets assumed to be a reference to multiple EWallet entries
);

CREATE TABLE CartProduct (
    DrugID INT PRIMARY KEY,
    DrugName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(255),
    Quantity INT NOT NULL,
    ProductTypeID INT,
   
    -- Include other fields and constraints as necessary
);

DROP TABLE CartProduct
Select * from CartProduct
DROP TABLE Payment
INSERT INTO ProductType (ProductTypeID, TypeName) VALUES (1, 'Prescription');
INSERT INTO ProductType (ProductTypeID, TypeName) VALUES (2, 'Over-the-Counter');
INSERT INTO ProductType (ProductTypeID, TypeName) VALUES (3, 'Supplement');

INSERT INTO EWallet (WalletID, Balance) VALUES ('WALLET001', 100.00);
INSERT INTO EWallet (WalletID, Balance) VALUES ('WALLET002', 250.50);
INSERT INTO EWallet (WalletID, Balance) VALUES ('WALLET003', 75.75);

INSERT INTO UserAccounts (Username, Password, Email, AccountType, WalletID) VALUES ('john_doe', 'password123', 'john.doe@example.com', 'Customer', 'WALLET001');
INSERT INTO UserAccounts (Username, Password, Email, AccountType, WalletID) VALUES ('jane_doe', 'password456', 'jane.doe@example.com', 'Dealer', 'WALLET002');

INSERT INTO Product (DrugID, DrugName, Descr, Price, Category, Quantity, ProductTypeID) VALUES (1, 'Aspirin', 'Pain reliever', 5.99, 'Pain Management', 100, 2);
INSERT INTO Product (DrugID, DrugName, Descr, Price, Category, Quantity, ProductTypeID) VALUES (2, 'Multivitamin', 'Dietary Supplement', 15.49, 'Supplements', 50, 3);

INSERT INTO DrugListing (DrugListingID, DealerUsername) VALUES (1, 'jane_doe');

INSERT INTO DrugInDrugListing (DrugListingID, DrugID) VALUES (1, 1);
INSERT INTO DrugInDrugListing (DrugListingID, DrugID) VALUES (1, 2);

INSERT INTO ShoppingCart (CartID, Username, TotalPrice) VALUES (1, 'john_doe', 21.48);

INSERT INTO OrderStatus (StatusID, Location, Status) VALUES (1, 'Warehouse', 'Processing');
INSERT INTO OrderStatus (StatusID, Location, Status) VALUES (2, 'On the way', 'Shipped');

INSERT INTO Orders (OrderID, ShoppingCartID, OrderStatusID, Accepted) VALUES (1, 1, 1, 1);

INSERT INTO Payment (PaymentID, OrderID, AdminsCut, DeliveryGuysCut, DealersCut) VALUES (1, 1, 10.00, 5.00, 6.48);
