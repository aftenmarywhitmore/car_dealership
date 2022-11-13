CREATE TABLE `customer` (
  `customer_id` SERIAL,
  `first_name` VARCHAR(50),
  `last_name` VARCHAR(50),
  `email` VARCHAR(50),
  `address` VARCHAR(50),
  `phone_number` VARCHAR(12),
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `service` (
  `service_id` SERIAL,
  `serial_no_id` INTEGER,
  `part_id` VARCHAR(50),
  `price` NUMERIC(8,2),
  PRIMARY KEY (`service_id`),
  FOREIGN KEY (`serial_no_id`) REFERENCES `customer`(`first_name`)
);

CREATE TABLE `parts` (
  `part_id` SERIAL,
  `price` NUMERIC(8,2),
  `quantity` INTEGER,
  `part_type` VARCHAR(50),
  `service_ticket_id` INTEGER,
  PRIMARY KEY (`part_id`),
  FOREIGN KEY (`price`) REFERENCES `service`(`serial_no_id`)
);

CREATE TABLE `mechanic` (
  `mechanic_id` SERIAL,
  `first_name` VARCHAR(50),
  `last_name` VARCHAR(50),
  PRIMARY KEY (`mechanic_id`)
);

CREATE TABLE `service_ticket` (
  `service_ticket_id` SERIAL,
  `customer_id` INTEGER,
  `mechanic_id` INTEGER,
  `service_id` INTEGER,
  `serial_no_id` INTEGER,
  `date` VARCHAR(50),
  `total_cost` NUMERIC(8,2),
  PRIMARY KEY (`service_ticket_id`),
  FOREIGN KEY (`serial_no_id`) REFERENCES `mechanic`(`last_name`)
);

CREATE TABLE `service_history` (
  `service_history_id` SERIAL,
  `customer_id` INTEGER,
  `serial_no_id` INTEGER,
  `service_ticket_id` INTEGER,
  PRIMARY KEY (`service_history_id`),
  FOREIGN KEY (`service_ticket_id`) REFERENCES `service_ticket`(`service_ticket_id`)
);

CREATE TABLE `salesperson` (
  `salesman_id` SERIAL,
  `first_name` VARCHAR(50),
  `last_name` VARCHAR(50),
  `email` VARCHAR(50),
  `phone_number` VARCHAR(12),
  PRIMARY KEY (`salesman_id`)
);

CREATE TABLE `sale_invoice` (
  `sale_invoice_id` SERIAL,
  `serial_no_id` INTEGER,
  `customer_id` INTEGER,
  `payment_id` INTEGER,
  `total_cost` NUMERIC(8,2),
  PRIMARY KEY (`sale_invoice_id`),
  FOREIGN KEY (`payment_id`) REFERENCES `customer`(`address`)
);

CREATE TABLE `car` (
  `serial_no_id` SERIAL,
  `_condition` VARCHAR(50),
  `_year` INTEGER,
  `make` VARCHAR(50),
  `model` VARCHAR(50),
  `price` NUMERIC(8,2),
  `status` VARCHAR(50),
  PRIMARY KEY (`serial_no_id`)
);

CREATE TABLE `payment` (
  `payment_id` SERIAL,
  `bank` VARCHAR(50),
  `loan_amount` NUMERIC(8,2),
  `down_payment` NUMERIC(8,2),
  `payment_method` VARCHAR(50,
  PRIMARY KEY (`payment_id`),
  FOREIGN KEY (`bank`) REFERENCES `customer`(`phone_number`)
);

CREATE TABLE `dealership` (
  `dealership_id` SERIAL,
  `name` VARCHAR(50),
  `address` VARCHAR(50),
  `phone_number` VARCHAR(12),
  `email` VARCHAR(50),
  PRIMARY KEY (`dealership_id`)
);

CREATE TABLE `Entity` (
  `Field` Type,
  `Field` Type,
  `Field` Type,
  KEY `Key` (`Field`, `Field`, `Field`)
);

