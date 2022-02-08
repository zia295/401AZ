DELIMITER //
CREATE PROCEDURE sp_getItems() 
BEGIN
	SELECT * FROM tbl_Items; 
END// 
DELIMITER ;
CALL sp_getItems();
DELIMITER // 
CREATE PROCEDURE sp_getItem(ID INT)
BEGIN 
	SELECT * FROM tbl_Items WHERE Item_ID = ID; 
END // 
DELIMITER ;
CALL sp_getItem(2);
DELIMITER //
CREATE PROCEDURE sp_getOrderItems()
BEGIN
	SELECT tbl_OrderItems.Order_ID, tbl_OrderItems.Item_ID, tbl_OrderItems.Quantity, tbl_Items.Item_Name, tbl_Items.Item_Desc, tbl_Items.Item_Price, tbl_Items.Item_Price*tbl_OrderItems.Quantity AS TOTAL_PRICE
	FROM tbl_OrderItems INNER JOIN tbl_Items ON tbl_OrderItems.Item_ID = tbl_Items.Item_ID;
END //
DELIMITER ;
CALL sp_getOrderItems();
DELIMITER // 
CREATE PROCEDURE sp_deleteItem(ID INT)
BEGIN 
	DELETE FROM tbl_Items WHERE Item_ID = ID; 
END // 
DELIMITER ;
CALL sp_deleteItem(3);
DELIMITER // 
CREATE PROCEDURE sp_InsertItem(IName VARCHAR(20), IDesc VARCHAR(60), IPrice DOUBLE)
BEGIN 
	INSERT INTO tbl_Items(Item_Name, Item_Desc, Item_Price) VALUES (IName,IDesc,IPrice);
END//
DELIMITER ;
CALL sp_InsertItem("Stainless Steel Frame","6 x 10 Foot Frame", 200.50);
DELIMITER // 
CREATE PROCEDURE sp_UpdateItem(ID INT,IName VARCHAR(20), IDesc VARCHAR(60), IPrice DOUBLE)
BEGIN 
	UPDATE tbl_Items
		SET 
			Item_Name = IName,
			Item_Desc = IDesc,
			Item_Price = IPrice
		WHERE Item_ID = ID;
END//
DELIMITER ;
CALL sp_UpdateItem(2, "Wood Frame", "4 x 4 Foot Frame", 54.60)