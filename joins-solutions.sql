-- 1. Get all customers and their addresses.
   SELECT * FROM "customers"
  JOIN "addresses" ON "addresses"."customer_id"="customers"."id";
 
-- 2. Get all orders and their line items (orders, quantity and product).
    SELECT "line_items"."order_id", "line_items"."quantity", "line_items"."product_id"
    FROM "line_items" JOIN "orders" ON "orders"."id"="line_items"."order_id";
    
-- 3. Which warehouses have cheetos?
SELECT * FROM "warehouse" 
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
WHERE "products"."description"='cheetos';

--4. 
SELECT * FROM "warehouse" 
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
WHERE "products"."description"='diet pepsi';

5.SELECT "customers"."id" AS "customer_id", count (*) AS "ordercount" FROM "customers"
JOIN "addresses" ON "addresses"."customer_id"="customers"."id"
JOIN "orders" ON "orders"."address_id"="addresses"."id"
GROUP BY "customers"."id";

6.How many customers do we have?
SELECT (*) FROM "customers";

7. How many products do we have?
SELECT count (*) FROM "products";

8.SELECT SUM ("on_hand) FROM "products"
JOIN "warehouse_product" ON "warehouse_product"."product_id"="products"."id"
WHERE "products"."description"='diet pepsi';
