-- answers.sql
-- Normalization assignment: Question 1 (1NF) and Question 2 (2NF)

-- Create + use a dedicated database/schema for the assignment
CREATE DATABASE IF NOT EXISTS assignment_db;
USE assignment_db;

/*
Question 1: Achieving 1NF
We convert the multi-valued Products column into one row per product.
*/

CREATE TABLE IF NOT EXISTS ProductDetail_1NF (
    OrderID INT NOT NULL,
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    PRIMARY KEY (OrderID, Product)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

/*
Question 2: Achieving 2NF
Split the table to remove partial dependencies:
 - Orders (OrderID, CustomerName)
 - OrderProducts (OrderID, Product, Quantity)
*/

CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE IF NOT EXISTS OrderProducts (
    OrderID INT NOT NULL,
    Product VARCHAR(100) NOT NULL,
    Quantity INT DEFAULT 1,
    PRIMARY KEY (OrderID, Product),
    CONSTRAINT fk_orderproducts_orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- Quick verification queries (run these after executing the script):
-- SELECT * FROM ProductDetail_1NF;
-- SELECT * FROM Orders;
-- SELECT * FROM OrderProducts;
-- SELECT o.OrderID, o.CustomerName, p.Product, p.Quantity
