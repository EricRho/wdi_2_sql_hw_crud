-- In case there is already a bank_homework database, drop it
DROP DATABASE IF EXISTS bank_homework;

-- Create a bank_homework database
CREATE DATABASE bank_homework;

-- Connect to the bank_homework databases
\c bank_homework

-- Create a payments table
CREATE TABLE payments(
--  The table should have columns of id, created_at, amount, payer_name,
id SERIAL PRIMARY KEY
, created_at TEXT
, amount NUMERIC
, payer_name TEXT
--  recipient_name, and description with the appropriate datatypes
, recipient_name TEXT
, description TEXT
);

-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made
ALTER TABLE payments ADD zipcode INTEGER;

-- Insert 20 rows into the payments table
-- The first of these payments should be deposits
-- try to keep the accounts positive and have at least three different payers.
INSERT INTO payments(created_at, amount, payer_name, recipient_name, description, zipcode) VALUES
 ('2014-01-01', 10000, 'Eric', 'Ian', 'Repayment for car loan', 10110)
,('2014-01-19', 20000, 'Euan', 'Eric', 'Rental payment', 10110)
,('2014-01-21', 15000, 'Ian', 'Euan', 'Purchace of super banana', 10110)
,('2014-02-06', 500, 'Eric', 'Ian', 'Birthday present', 90210)
,('2014-02-12', 700, 'Euan', 'Eric', 'Borrow for fun', 90210)
,('2014-02-16', 10, 'Ian', 'Euan', 'Lunch', 10110)
,('2014-02-27', 350, 'Eric', 'Ian', 'Lost a bet', 10110)
,('2014-03-11', 400, 'Euan', 'Eric', 'Monthly allowance', 10110)
,('2014-03-15', 200, 'Ian', 'Euan', 'Payback for plane ticket', 90210)
,('2014-04-22', 100, 'Eric', 'Ian', 'Repayment for dinner bill', 90210)
,('2014-04-29', 50, 'Euan', 'Eric', 'Stole money', 10110)
,('2014-05-03', 75, 'Ian', 'Euan', 'Gave 1 dollar for every jumpingjack', 90210)
,('2014-05-19', 30, 'Eric', 'Ian', 'Running out of ideas so gave money', 10110)
,('2014-05-20', 120, 'Euan', 'Eric', 'Payback for new coffee maker', 10110)
,('2014-06-01', 15, 'Ian', 'Euan', 'Gas bill', 10110)
,('2014-06-13', 50, 'Eric', 'Ian', 'Payment for internet bill', 90210)
,('2014-06-16', 110, 'Euan', 'Eric', 'Found and gave for no reason', 10110)
,('2014-06-16', 700, 'Ian', 'Euan', 'Gave for hotel stay', 90210)
,('2014-06-17', 250, 'Eric', 'Ian', 'Rental payment', 90210)
,('2014-06-18', 70, 'Euan', 'Eric', 'Repayment for car loan', 90210);



-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected
UPDATE payments SET amount = amount + 10 WHERE id = 9;

-- Delete all payments with an amount under $2
DELETE FROM payments WHERE amount < 2;

-- Select all entries from the payments table
SELECT * FROM payments;

-- In a single query, output all payments ordered from the largest to the smallest
SELECT * FROM payments ORDER BY amount DESC;

-- In a single query, output the names of all distinct recipients
SELECT DISTINCT recipient_name FROM payments;

-- In a single query, select all payments created in the past week
SELECT * FROM payments WHERE created_at > '2014-06-11';

-- In a single query, select all payments with a blank description
SELECT * FROM payments WHERE description = ' ';

-- In a single query, select all payments matching the name of one of the payers (choose any single one)
SELECT * FROM payments WHERE payer_name = 'Ian';
