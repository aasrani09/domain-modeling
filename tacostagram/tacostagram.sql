
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS followers;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS likes;


CREATE TABLE posts (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
image_file TEXT,
user_id INTEGER,
time TEXT);

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    username TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT);

CREATE TABLE followers (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    user_id_followed INTEGER,
    user_id_follower INTEGER);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    post_id INTEGER,
    user_id INTEGER,
    comment TEXT); 

CREATE TABLE likes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER);