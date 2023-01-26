CREATE TABLE dbo.Products (
    product_id INT NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY (product_id)
)

CREATE TABLE dbo.Categories (
    category_id INT NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY (category_id)
)

CREATE TABLE dbo.Prod_Cat (
    category_id INT NOT NULL,
    product_id INT NOT NULL
)

SELECT p.name,c.name
FROM products AS p
LEFT JOIN prod_cat AS pc ON p.product_id = pc.product_id
LEFT JOIN categories AS c ON pc.category_id = c.category_id