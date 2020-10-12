CREATE TABLE `User` (
	`username` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`phone_number` INT(255) NOT NULL,
	`address` VARCHAR(255) NOT NULL,
	`user_id` INT(255) NOT NULL,
	`role_id` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`user_id`)
);

CREATE TABLE `Orders Products` (
	`order_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`price` INT NOT NULL,
	`quantity` INT NOT NULL,
	PRIMARY KEY (`order_id`,`product_id`)
);

CREATE TABLE `Order` (
	`order_id` INT NOT NULL,
	`order_date` VARCHAR(255) NOT NULL,
	`ship_date` VARCHAR(255) NOT NULL,
	`status` VARCHAR(255) NOT NULL,
	`user_id` BINARY NOT NULL
);

CREATE TABLE `Products` (
	`product_id` INT NOT NULL,
	`product_name` VARCHAR(255) NOT NULL,
	`product_description` VARCHAR(255) NOT NULL,
	`in_stock` BOOLEAN NOT NULL,
	`price` INT NOT NULL,
	`product_catagory_id` BINARY NOT NULL
);

CREATE TABLE `Role` (
	`role_id` BINARY NOT NULL,
	`role_name` BINARY NOT NULL
);

CREATE TABLE `Product_Catagory` (
	`product_catagory_id` BINARY NOT NULL AUTO_INCREMENT,
	`product-name` BINARY NOT NULL AUTO_INCREMENT,
	`product_cat_description` BINARY NOT NULL AUTO_INCREMENT,
	`product_cat_description` BINARY NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`product_catagory_id`)
);

ALTER TABLE `User` ADD CONSTRAINT `User_fk0` FOREIGN KEY (`role_id`) REFERENCES `Role`(`role_id`);

ALTER TABLE `Orders Products` ADD CONSTRAINT `Orders Products_fk0` FOREIGN KEY (`order_id`) REFERENCES `Order`(`order_id`);

ALTER TABLE `Orders Products` ADD CONSTRAINT `Orders Products_fk1` FOREIGN KEY (`product_id`) REFERENCES `Products`(`product_id`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk0` FOREIGN KEY (`user_id`) REFERENCES `User`(`user_id`);

ALTER TABLE `Products` ADD CONSTRAINT `Products_fk0` FOREIGN KEY (`product_catagory_id`) REFERENCES `Product_Catagory`(`product_catagory_id`);

