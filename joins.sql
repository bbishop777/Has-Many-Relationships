DROP DATABASE IF EXISTS has_many_blogs;

DROP USER IF EXISTS has_many_user;

CREATE USER has_many_user;

CREATE DATABASE has_many_blogs;

\c has_many_blogs;

ALTER DATABASE has_many_blogs OWNER TO has_many_user;

\i has_many_blogs.sql;

SELECT * FROM users;