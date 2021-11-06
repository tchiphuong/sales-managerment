CREATE DATABASE `sales` CHARACTER
SET utf8 COLLATE utf8_general_ci;



USE `sales`;



CREATE TABLE `ms_categories` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(10),
    `name_vn` VARCHAR(50),
    `name_en` VARCHAR(50),
    `status` INT,
    PRIMARY KEY (`id`)
);



INSERT INTO
    `ms_categories` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('CA001', 'Điện thoại', 'Phone', '1');



INSERT INTO
    `ms_categories` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('CA002', 'Máy tính bảng', 'Tablet', '1');



INSERT INTO
    `ms_categories` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('CA003', 'Laptop', 'Laptop', '1');



CREATE TABLE `ms_brands` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(10),
    `name_vn` VARCHAR(50),
    `name_en` VARCHAR(50),
    `status` INT,
    PRIMARY KEY (`id`)
);



INSERT INTO
    `ms_brands` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('BR001', 'Acer', 'Acer', '1');



INSERT INTO
    `ms_brands` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('BR002', 'HP', 'HP', '1');



INSERT INTO
    `ms_brands` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('BR003', 'Asus', 'Asus', '1');



INSERT INTO
    `ms_brands` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('BR004', 'Apple', 'Apple', '1');



INSERT INTO
    `ms_brands` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('BR005', 'Samsung', 'Samsung', '1');



INSERT INTO
    `ms_brands` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('BR006', 'Xiaomi', 'Xiaomi', '1');



INSERT INTO
    `ms_brands` (`code`, `name_vn`, `name_en`, `status`)
VALUES
    ('BR007', 'OPPO', 'OPPO', '1');



CREATE TABLE `ms_products` (
    `id` INT(10) NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(10),
    `name_vn` VARCHAR(50),
    `name_en` VARCHAR(50),
    `category` VARCHAR(10),
    `brand` VARCHAR(10),
    `price` VARCHAR(10),
    `warehouse` VARCHAR(10),
    `status` INT,
    PRIMARY KEY (`id`)
);



INSERT INTO
    `ms_products` (
        `code`,
        `name_vn`,
        `name_en`,
        `category`,
        `brand`,
        `price`,
        `warehouse`,
        `status`
    )
VALUES
    (
        'PR001',
        'Acer Nitro 5 2020',
        'Acer Nitro 5 2020',
        'CA003',
        'BR001',
        '20000000',
        'WA001',
        '1'
    );



INSERT INTO
    `ms_products` (
        `code`,
        `name_vn`,
        `name_en`,
        `category`,
        `brand`,
        `price`,
        `warehouse`,
        `status`
    )
VALUES
    (
        'PR002',
        'OPPO F1W',
        'OPPO F1W',
        'CA001',
        'BR007',
        '4000000',
        'WA001',
        '1'
    );



INSERT INTO
    `ms_products` (
        `code`,
        `name_vn`,
        `name_en`,
        `category`,
        `brand`,
        `price`,
        `warehouse`,
        `status`
    )
VALUES
    (
        'PR003',
        'iPhone 13',
        'iPhone 13',
        'CA001',
        'BR004',
        '23000000',
        'WA001',
        '1'
    );



CREATE TABLE `sales`.`hr_staffs` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(10),
    `name_vn` VARCHAR(50),
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `email` VARCHAR(50),
    `phone` VARCHAR(50),
    `sex` VARCHAR(50),
    `status` INT,
    PRIMARY KEY (`id`)
);



INSERT INTO
    `hr_staffs` (
        `code`,
        `name_vn`,
        `first_name`,
        `last_name`,
        `email`,
        `phone`,
        `sex`,
        `status`
    )
VALUES
    (
        'ST001',
        'Trần Chí Phương',
        'Tran',
        'Phuong',
        'cphuong219219@gmail.com',
        '0944615969',
        '1',
        '1'
    );



INSERT INTO
    `hr_staffs` (
        `code`,
        `name_vn`,
        `first_name`,
        `last_name`,
        `email`,
        `phone`,
        `sex`,
        `status`
    )
VALUES
    (
        'ST002',
        'Phương Trần',
        'Tran',
        'Chi Phuong',
        'chiphuong9299@hotmail.com',
        '0944615969',
        '1',
        '1'
    );



INSERT INTO
    `hr_staffs` (
        `code`,
        `name_vn`,
        `first_name`,
        `last_name`,
        `email`,
        `phone`,
        `sex`,
        `status`
    )
VALUES
    (
        'ST003',
        'Phương Chi',
        'Phuong',
        'Chi',
        'chiphuong201099@gmail.com',
        '0944615969',
        '0',
        '1'
    );



CREATE TABLE `sales`.`ms_images` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100),
    `staff` VARCHAR(10),
    `category` VARCHAR(10),
    `brand` VARCHAR(10),
    `product` VARCHAR(10),
    `menu` VARCHAR(10),
    PRIMARY KEY (`id`)
);



CREATE TABLE `sales`.`hr_users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50),
    `password` VARCHAR(50),
    `staff` VARCHAR(10),
    PRIMARY KEY (`id`)
);



INSERT INTO
    `hr_users` (`username`, `password`, `staff`)
VALUES
    ('tcphuong', MD5('123456'), 'ST001');



INSERT INTO
    `hr_users` (`username`, `password`, `staff`)
VALUES
    ('tcphuong2', MD5('123456'), 'ST002');