-- 1. create table
create table orders (
    order_id serial primary key,
    customer_name varchar(50),
    product varchar(50),
    quantity int,
    price numeric(10,2),
    order_date date
);

-- insert sample data
insert into orders (customer_name, product, quantity, price, order_date) values
('Amit','Laptop',1,55000,'2024-01-10'),
('Riya','Mobile',2,30000,'2024-01-12'),
('Sameer','Laptop',1,60000,'2024-01-15'),
('Neha','Tablet',3,45000,'2024-01-18'),
('Rahul','Mobile',1,15000,'2024-01-20');
