DROP DATABASE IF EXISTS has_many_blogs;

DROP USER IF EXISTS has_many_user;

CREATE USER has_many_user;

CREATE DATABASE has_many_blogs;

\c has_many_blogs;

ALTER DATABASE has_many_blogs OWNER TO has_many_user;

\i has_many_blogs.sql;

SELECT * FROM users;

SELECT * FROM posts WHERE user_id= 100;

SELECT posts.*, users.first_name, users.last_name
FROM posts
INNER JOIN users ON posts.user_id= users.id
WHERE users.id= 200;

SELECT posts.*, users.username
FROM posts
INNER JOIN users on posts.user_id = users.id
WHERE users.first_name= 'Norene' AND users.last_name= 'Schmitt';

SELECT users.username, posts.created_at
FROM users
INNER JOIN posts on posts.user_id= users.id
WHERE posts.created_at> '2015_01-01';

SELECT posts.title, posts.content, users.username, users.created_at
FROM posts
INNER JOIN users on posts.user_id= users.id
WHERE users.created_at< '2015_01_01';

SELECT comments.*, posts.title AS "Post Title"
FROM comments
INNER JOIN posts on comments.post_id= posts.id;