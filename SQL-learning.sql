-- إنشاء الجدول الشامل
CREATE TABLE SalesRecords (
    SaleID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Product VARCHAR(50) NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    Discount DECIMAL(4, 2) DEFAULT 0.00, -- نسبة الخصم مثل 0.10 تعني 10%
    SaleDate DATE NOT NULL
);
GO

-- إدخال بيانات واقعية ومتنوعة للتدريب
INSERT INTO SalesRecords (CustomerName, City, Category, Product, UnitPrice, Quantity, Discount, SaleDate)
VALUES 
('Ahmed Ibrahim', 'Alexandria', 'Electronics', 'Mechanical Keyboard', 120.00, 2, 0.05, '2026-01-15'),
('Sara Mansour', 'Cairo', 'Electronics', 'Wireless Mouse', 45.00, 1, 0.00, '2026-01-18'),
('Omar Hassan', 'Giza', 'Furniture', 'Ergonomic Chair', 250.00, 1, 0.15, '2026-01-22'),
('Habiba Nour', 'Alexandria', 'Electronics', 'USB-C Cable', 15.00, 4, 0.00, '2026-02-01'),
('Mohamed Tarek', 'Cairo', 'Furniture', 'Standing Desk', 400.00, 2, 0.10, '2026-02-05'),
('Yasmine Ali', 'Alexandria', 'Clothing', 'Hoodie', 60.00, 3, 0.00, '2026-02-10'),
('Khaled Mostafa', 'Cairo', 'Clothing', 'Running Shoes', 110.00, 1, 0.20, '2026-02-14'),
('Ahmed Ibrahim', 'Alexandria', 'Electronics', 'HD Webcam', 85.00, 1, 0.00, '2026-02-20'),
('Sara Mansour', 'Cairo', 'Clothing', 'Winter Jacket', 150.00, 2, 0.10, '2026-03-01'),
('Hassan Mahmoud', 'Giza', 'Electronics', 'USB-C Cable', 15.00, 6, 0.05, '2026-03-05');
GO







alter  table SalesRecords
add TotalBeforeDiscount  As (Quantity*UnitPrice) ;

alter table SalesRecords 
add FinalTotal as ((Quantity*UnitPrice)*(1-Discount))

select * from SalesRecords ;

select Discount, Quantity ,UnitPrice ,Product ,CustomerName ,FinalTotal ,TotalBeforeDiscount from SalesRecords


select distinct  City from SalesRecords;
select * from SalesRecords
where UnitPrice between 50 and 200;


select * from SalesRecords
where City in ('Alexandria','cairo') and Product like '%Desk%';






select Category,sum(Quantity) as'TotalQuantitySold' , sum(FinalTotal) as'TotalRevenue' from SalesRecords
group by Category 
having  sum(Quantity)>5

select * from SalesRecords



select top(2) CustomerName ,Product,FinalTotal from SalesRecords
order by FinalTotal desc;

select * from SalesRecords
where Discount is not null;

select City, CONCAT('Count',count(Product),' -','Unique',distinct Product) as 'UniqueProductsCount',
AVG(SUM(UnitPrice)/SUM(Quantity)) as 'AvgUnitPrice'

from SalesRecords 

group by City
having sum(AVG(SUM(UnitPrice)/SUM(Quantity)))>=50 
order by Quantity desc

