-- Create Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY, 
    customer_name VARCHAR(100) NOT NULL,     
    customer_email VARCHAR(100) UNIQUE NOT NULL, 
    customer_phone_number VARCHAR(15),       
    customer_street VARCHAR(255),    
    customer_city VARCHAR(100),     
    customer_state VARCHAR(100),    
    customer_postal_code VARCHAR(20) 
);

-- Create Products Table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,  
    product_name VARCHAR(150) NOT NULL, 
    product_category VARCHAR(100),          
    product_price DECIMAL(10, 2) NOT NULL,  
    product_stock_quantity INT DEFAULT 0  
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,    
    customer_id INT NOT NULL,       
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    total_amount DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);


CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,        
    order_id INT NOT NULL REFERENCES Orders(order_id) ON DELETE CASCADE, 
    product_id INT NOT NULL REFERENCES Products(product_id) ON DELETE CASCADE, 
    quantity INT NOT NULL CHECK (quantity > 0), 
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0) 
);

--Populating Customers table
INSERT INTO Customers (customer_name, customer_email, customer_phone_number, customer_street, customer_city, customer_state, customer_postal_code)
VALUES ('Alice Johnson', 'alice@example.com', '1234567890', '123 Main St', 'Springfield', 'IL', '62701'),
('Bob Smith', 'bob@example.com', '9876543210', '456 Elm St', 'Chicago', 'IL', '60601'),
('Charlie Brown', 'charlie@example.com', '456123790', '789 Oak St', 'Naperville', 'IL', '60540'),
('Diana Prince', 'diana@example.com', '7894561230', '321 Pine St', 'Peoria', 'IL', '61602'),
('Eve Adams', 'eve@example.com', '6547891230', '654 Cedar St', 'Evanston', 'IL', '60201'),
('Frank Castle', 'frank@example.com', '3216549870', '987 Maple St', 'Rockford', 'IL', '61101'),
('Grace Lee', 'grace@example.com', '1237894560', '123 Birch St', 'Champaign', 'IL', '61820'),
('Hank Pym', 'hank@example.com', '9873216540', '456 Spruce St', 'Decatur', 'IL', '62522'),
('Ivy Green', 'ivy@example.com', '4569871230', '789 Willow St', 'Bloomington', 'IL', '61701'),
('Jack White', 'jack@example.com', '6543217890', '321 Ash St', 'Aurora', 'IL', '60505');

Select * from Order_Items;

--Populating Products table
INSERT INTO Products (product_name, product_category, product_price, product_stock_quantity)
VALUES
('Laptop', 'Electronics', 999.99, 50),
('Smartphone', 'Electronics', 699.99, 100),
('Tablet', 'Electronics', 399.99, 80),
('Headphones', 'Accessories', 49.99, 200),
('Smartwatch', 'Accessories', 199.99, 150),
('Keyboard', 'Accessories', 29.99, 300),
('Mouse', 'Accessories', 19.99, 350),
('Monitor', 'Electronics', 149.99, 75),
('Speaker', 'Accessories', 99.99, 120),
('External Hard Drive', 'Storage', 79.99, 90);

--Populating Orders table
INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES
    (1, '2024-12-01', 250.00),
    (2, '2024-12-02', 150.00),
    (3, '2024-12-03', 300.00),
    (4, '2024-12-04', 200.00),
    (5, '2024-12-05', 450.00),
    (6, '2024-12-06', 100.00),
    (7, '2024-12-07', 350.00),
    (8, '2024-12-08', 500.00),
    (9, '2024-12-09', 150.00),
    (10, '2024-12-10', 600.00),
    (1, '2024-12-11', 200.00),
    (2, '2024-12-12', 300.00),
    (3, '2024-12-13', 400.00),
    (4, '2024-12-14', 250.00),
    (5, '2024-12-15', 350.00),
    (6, '2024-12-16', 150.00),
    (7, '2024-12-17', 500.00),
    (8, '2024-12-18', 600.00),
    (9, '2024-12-19', 700.00),
    (10, '2024-12-20', 800.00);

--Populating Order_items table
INSERT INTO Order_Items (order_id, product_id, quantity, price)
VALUES
    (1, 1, 1, 999.99),
    (1, 2, 1, 699.99),
    (2, 3, 2, 399.99),
    (3, 4, 3, 49.99),
    (4, 5, 1, 199.99),
    (5, 6, 4, 29.99),
    (6, 7, 5, 19.99),
    (7, 8, 2, 149.99),
    (8, 9, 1, 99.99),
    (9, 10, 3, 79.99),
    (10, 1, 1, 999.99),
    (11, 2, 1, 699.99),
    (12, 3, 2, 399.99),
    (13, 4, 3, 49.99),
    (14, 5, 1, 199.99),
    (15, 6, 4, 29.99),
    (16, 7, 5, 19.99),
    (17, 8, 2, 149.99),
    (18, 9, 1, 99.99),
    (19, 10, 3, 79.99),
    (20, 1, 1, 999.99),
    (20, 2, 1, 699.99),
    (20, 3, 2, 399.99),
    (20, 4, 3, 49.99),
    (20, 5, 1, 199.99),
    (20, 6, 4, 29.99),
    (20, 7, 5, 19.99),
    (20, 8, 2, 149.99),
    (20, 9, 1, 99.99),
    (20, 10, 3, 79.99);
