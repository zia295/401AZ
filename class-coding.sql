
CREATE TABLE tbl_Customers (
	Customer_ID INT AUTO_INCREMENT,
	Customer_Fname VARCHAR(20) NOT NULL,
	Customer_Lname VARCHAR(20) NOT NULL,
	Customer_DOB DATETIME NOT NULL,
	Customer_Email VARCHAR(20),
	CONSTRAINT pk_Customer PRIMARY KEY (Customer_ID)
);





CREATE TABLE tbl_Items (
	Item_ID INT AUTO_INCREMENT,
	Item_NAME VARCHAR(20) NOT NULL,
	Item_Desc VARCHAR(20) NOT NULL,
	Item_Price DOUBLE NOT NULL,
	Customer_Email VARCHAR(20) NOT NULL,
	CONSTRAINT pk_Items PRIMARY KEY (Item_ID)
);



CREATE TABLE tbl_Order (
	Order_ID INT AUTO_INCREMENT,
	Customer_ID INT,
	CONSTRAINT pk_Order PRIMARY KEY (Order_ID),
	CONSTRAINT fk_ORDERCustomer FOREIGN KEY (Customer_ID) REFERENCES tbl_Customers (Customer_ID) ON UPDATE CASCADE ON DELETE NO ACTION
);



CREATE TABLE tbl_OrderItems (
	Order_ID INT,
	Item_ID INT,
	Quantity INT NOT NULL,
	CONSTRAINT pk_OrderItems PRIMARY KEY (Order_ID,Item_ID),
	CONSTRAINT FK_OrderItem FOREIGN KEY (Order_ID) REFERENCES tbl_Order(Order_ID) ON UPDATE CASCADE ON DELETE NO ACTION,
	CONSTRAINT fk_ItemOrder FOREIGN KEY (Item_ID) REFERENCES tbl_Items(Item_ID) ON UPDATE CASCADE ON DELETE NO ACTION
);

