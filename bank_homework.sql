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
, amount INTEGER
, payer_name TEXT
--  recipient_name, and description with the appropriate datatypes
, recipient_name TEXT
, description TEXT
);

-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made
ALTER TABLE payments ADD zipcode;

-- Insert 20 rows into the payments table
-- The first of these payments should be deposits
-- try to keep the accounts positive and have at least three different payers.
INSERT INTO payments(created_at, amount, payer_name, recipient_name, description) VALUES
 ('2014-01-01', 10000, 'Eric', 'Ian', 'Repayment for car loan')
,('2014-05-19', 20000, 'Euan', 'Eric', 'Rental payment')
,('2014-01-01', 15000, 'Ian', 'Euan', 'Purchace of super banana')
,('2014-01-01', 500, 'Eric', 'Ian', 'Birthday present')
,('2014-01-01', 700, 'Euan', 'Eric', 'Borrow for fun')
,('2014-01-01', 10, 'Ian', 'Euan', 'Lunch')
,('2014-01-01', 350, 'Eric', 'Ian', 'Lost a bet')
,('2014-01-01', 400, 'Euan', 'Eric', 'Monthly allowance')
,('2014-01-01', 200, 'Ian', 'Euan', 'Payback for plane ticket')
,('2014-01-01', 100, 'Eric', 'Ian', 'Repayment for dinner bill')
,('2014-01-01', 50, 'Euan', 'Eric', 'Stole money')
,('2014-01-01', 75, 'Ian', 'Euan', 'Gave 1 dollar for every jumpingjack')
,('2014-01-01', 30, 'Eric', 'Ian', 'Running out of ideas so gave money')
,('2014-01-01', 120, 'Euan', 'Eric', 'Payback for new coffee maker')
,('2014-01-01', 15, 'Ian', 'Euan', 'Gas bill')
,('2014-01-01', 50, 'Eric', 'Ian', 'Payment for internet bill')
,('2014-01-01', 110, 'Euan', 'Eric', 'Found and gave for no reason')
,('2014-01-01', 700, 'Ian', 'Euan', 'Gave for hotel stay')
,('2014-01-01', 250, 'Eric', 'Ian', 'Rental payment')
,('2014-01-01', 70, 'Euan', 'Eric', 'Repayment for car loan');



-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected


-- Delete all payments with an amount under $2


-- Select all entries from the payments table


-- In a single query, output all payments ordered from the largest to the smallest


-- In a single query, output the names of all distinct recipients


-- In a single query, select all payments created in the past week


-- In a single query, select all payments with a blank description


-- In a single query, select all payments matching the name of one of the payers (choose any single one)
