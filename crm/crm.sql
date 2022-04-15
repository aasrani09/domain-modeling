-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salesforce;
DROP TABLE IF EXISTS industries;

-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    title TEXT,
    phone TEXT,
    company_id INTEGER);

CREATE TABLE activity (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
   contact_id INTEGER,
   salesforce_id INTEGER,
    comm_type TEXT,
    time TEXT,
    notes TEXT);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    company_name TEXT,
    industry_id INTEGER); 

CREATE TABLE salesforce (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name TEXT,
    last_name TEXT, 
    email TEXT);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT,
    company_id INTEGER);
