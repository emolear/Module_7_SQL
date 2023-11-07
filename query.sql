-- Query all records from the card_holder table
SELECT *
FROM card_holder;

-- Query all records from the credit_card table
SELECT *
FROM credit_card;

-- Query all records from the merchant_category table
SELECT *
FROM merchant_category;

-- Query all records from the merchant table
SELECT *
FROM merchant;

-- Query all records from the transaction table
SELECT *
FROM transaction;

-- Perform an INNER JOIN on the five tables
SELECT
    card_holder.name AS card_holder_name,
    card_holder.id AS card_holder_id,
    credit_card.card AS credit_card_number,
    credit_card.cardholder_id AS cardholder_id,
    merchant_category.name AS category_name,
    merchant_category.id AS category_id,
    merchant.name AS merchant_name,
    merchant.merchant_category AS merchant_category
FROM card_holder
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.id_merchant_category = merchant_category.id;

-- Perform INNER JOIN on the five tables and return all columns
SELECT *
FROM card_holder
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.merchant_category = merchant_category.id;

-- Perform a LEFT JOIN on the five tables and return all columns
SELECT *
FROM card_holder
LEFT JOIN credit_card ON card_holder.id = credit_card.cardholder_id
LEFT JOIN transaction ON credit_card.card = transaction.card
LEFT JOIN merchant ON transaction.id_merchant = merchant.id
LEFT JOIN merchant_category ON merchant.merchant_category = merchant_category.id;

-- Perform a RIGHT JOIN on the five tables and return all columns
SELECT *
FROM card_holder
RIGHT JOIN credit_card ON card_holder.id = credit_card.cardholder_id
RIGHT JOIN transaction ON credit_card.card = transaction.card
RIGHT JOIN merchant ON transaction.id_merchant = merchant.id
RIGHT JOIN merchant_category ON merchant.merchant_category = merchant_category.id;

-- Perform a FULL OUTER JOIN on the five tables and return all columns
SELECT *
FROM card_holder
FULL OUTER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
FULL OUTER JOIN transaction ON credit_card.card = transaction.card
FULL OUTER JOIN merchant ON transaction.id_merchant = merchant.id
FULL OUTER JOIN merchant_category ON merchant.merchant_category = merchant_category.id;

-- Perform a CROSS JOIN on the five tables and return all columns
SELECT *
FROM card_holder
CROSS JOIN credit_card
CROSS JOIN transaction
CROSS JOIN merchant





















-- -- Query all records from card_holder table
-- select *
-- from name,
-- from id;

-- -- Query all records from credit_card table
-- select *
-- from card,
-- from cardholder_id;

-- -- Query all records from merchant_category table
-- select *
-- from name,
-- from id;

-- -- Query all records from merchant table
-- select *
-- from name,
-- from merchant_category;

-- -- Query all records from transaction table
-- select *
-- from card,
-- from id_merchant,
-- from date,
-- from amount;



-- -- Perform an INNER JOIN on the five tables
-- SELECT card_holder.name,
--        card_holder.id,
--        credit_card.card,
--        credit_card.cardholder_id,
--        merchant_category.name,
--        merchant_category.id,
--        merchant.name,
--        merchant.merchant_category,
--        transaction.card,
--        transaction.id_merchant,
--        transaction.date,
--        transaction.amount, 
-- FROM card_holder
-- INNER JOIN transaction ON credit_card.card = transaction.card;

-- -- Perform an INNER JOIN on the two tables with aliasing
-- SELECT a.sales_id,
--        a.payment_id,
--        a.mortgage_id,
--        a.loan_amount,
--        a.loan_date,
--        b.mortgage_id,
--        b.mortgage_name,
--        b.mortgage_rate
-- FROM sales as a
-- INNER JOIN mortgage as b ON a.mortgage_id = b.mortgage_id;

-- -- Perform an INNER JOIN and return all columns
-- SELECT *
-- FROM sales
-- INNER JOIN mortgage ON sales.mortgage_id = mortgage.mortgage_id;

-- -- Perform a LEFT JOIN and return all columns
-- SELECT *
-- FROM sales
-- LEFT JOIN mortgage ON sales.mortgage_id = mortgage.mortgage_id;

-- -- Perform a RIGHT JOIN and return all columns
-- SELECT *
-- FROM sales
-- RIGHT JOIN mortgage ON sales.mortgage_id = mortgage.mortgage_id;

-- -- Perform a FULL OUTER JOIN and return all columns
-- SELECT *
-- FROM sales
-- FULL OUTER JOIN mortgage ON sales.mortgage_id = mortgage.mortgage_id;

-- -- Perform a CROSS JOIN and return all columns
-- SELECT *
-- FROM sales
-- CROSS JOIN mortgage;




-- sql_query = id IN (2,18);
-- SELECT id(*)
-- FROM card_holder
-- WHERE id IN (2, 18);
-- # """