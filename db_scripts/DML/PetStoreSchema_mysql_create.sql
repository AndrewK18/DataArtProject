CREATE TABLE `User` (
	`username` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`phone_number` INT(255) NOT NULL,
	`address` VARCHAR(255) NOT NULL,
	`user_id` INT(255) NOT NULL,
	`role_id` INT(255) NOT NULL,
	PRIMARY KEY (`user_id`)
);

CREATE TABLE `Orders_Products` (
	`order_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`price` INT NOT NULL,
	`quantity` INT NOT NULL,
	PRIMARY KEY (`order_id`,`product_id`)
);

CREATE TABLE `Order` (
	`order_id` INT NOT NULL,
	`order_date` DATE NOT NULL,
	`ship_date` DATE NOT NULL,
	`status` VARCHAR(255) NOT NULL,
	`user_id` INT NOT NULL
);

CREATE TABLE `Products` (
	`product_id` INT NOT NULL,
	`product_name` VARCHAR(255) NOT NULL,
	`product_description` VARCHAR(255) NOT NULL,
	`in_stock` BOOLEAN NOT NULL,
	`price` INT NOT NULL,
	`product_category_id` BINARY NOT NULL
);

CREATE TABLE `Role` (
	`role_id` INT NOT NULL,
	`role_name` VARCHAR(255) NOT NULL
);

CREATE TABLE `Product_Category` (
	`product_category_id` INT NOT NULL AUTO_INCREMENT,
	`product-name` varchar(255) NOT NULL AUTO_INCREMENT,
	`product_cat_description` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`product_category_id`)
);

ALTER TABLE `User` ADD CONSTRAINT `User_fk0` FOREIGN KEY (`role_id`) REFERENCES `Role`(`role_id`);

ALTER TABLE `Orders_Products` ADD CONSTRAINT `Orders_Products_fk0` FOREIGN KEY (`order_id`) REFERENCES `Order`(`order_id`);

ALTER TABLE `Orders_Products` ADD CONSTRAINT `Orders_Products_fk1` FOREIGN KEY (`product_id`) REFERENCES `Products`(`product_id`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk0` FOREIGN KEY (`user_id`) REFERENCES `User`(`user_id`);

ALTER TABLE `Products` ADD CONSTRAINT `Products_fk0` FOREIGN KEY (`product_category_id`) REFERENCES `Product_Category`(`product_category_id`);

