SELECT * FROM tbl_Customers; 
SELECT * FROM tbl_Customers WHERE Customer_ID = 6; 
INSERT INTO tbl_Customers(Customer_FNAME, Customer_LNAME, Customer_DOB, Customer_EMAIL) VALUES ("Joe", "Bloggs", '1994-5-5', "1@1.com");
UPDATE tbl_Customers
	SET 
		Customer_FNAME = "Joseph",
		Customer_LNAME = "Blogg",
		Customer_DOB = '1994-5-5',
		Customer_EMAIL = "1@1.com"
	WHERE Customer_ID = 6;
	
DELETE FROM tbl_Customers WHERE Customer_ID = 6;
SELECT * FROM tbl_Items; 
SELECT * FROM tbl_Items WHERE Item_ID = 1; 
INSERT INTO tbl_Items(Item_Name, Item_Desc, Item_Price) VALUES ("Picture Frame", "4 Foot by 4 Foot Oak Frame", 99.50);
UPDATE tbl_Items
	SET 
		Item_Name = "Wooden Picture Frame",
		Item_Desc = "4 Foot by 4 Foot Oak Frame",
		Item_Price = 99.50
	WHERE Item_ID = 1;
	
DELETE FROM tbl_Items WHERE Item_ID = 1;
SELECT * FROM tbl_Order; 
SELECT tbl_Order.Order_ID, tbl_Order.Customer_ID, tbl_Customers.Customer_FNAME, tbl_Customers.Customer_LNAME, tbl_Customers.Customer_DOB, tbl_Customers.Customer_EMAIL
FROM tbl_Order INNER JOIN tbl_Customers ON tbl_Order.Customer_ID = tbl_Customers.Customer_ID;
SELECT * FROM tbl_Order WHERE Order_ID = 1; 
INSERT INTO tbl_Order(Customer_ID) VALUES (7);
UPDATE tbl_Order
	SET 
		Customer_ID = 7
	WHERE Order_ID = 1;
	
DELETE FROM tbl_Order WHERE Order_ID = 1;
SELECT * FROM tbl_OrderItems; 
SELECT * FROM tbl_OrderItems WHERE Order_ID = 1; 
SELECT tbl_OrderItems.Order_ID, tbl_OrderItems.Item_ID, tbl_OrderItems.Quantity, tbl_Items.Item_Name, tbl_Items.Item_Desc, tbl_Items.Item_Price, tbl_Items.Item_Price*tbl_OrderItems.Quantity AS TOTAL_PRICE
FROM tbl_OrderItems INNER JOIN tbl_Items ON tbl_OrderItems.Item_ID = tbl_Items.Item_ID;
INSERT INTO tbl_OrderItems(Order_ID,Item_ID,Quantity) VALUES (2,2,3);
UPDATE tbl_OrderItems
	SET 
		Item_ID = 2,
		Quantity = 10
	WHERE Order_ID = 2;
	
DELETE FROM tbl_OrderItems WHERE Order_ID = 2;