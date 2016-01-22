DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users
(
id serial PRIMARY KEY NOT NULL,
username character varying(90) NOT NULL,
first_name character varying(90) NULL DEFAULT NULL,
last_name character varying(90) NULL DEFAULT NULL,
created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

DROP TABLE IF EXISTS posts;

CREATE TABLE IF NOT EXISTS posts
(
id serial PRIMARY KEY NOT NUll,
title character varying(180) NULL DEFAULT NULL,
url character varying(510) NULL DEFAULT NULL,
content text NULL DEFAULT NULL,
created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
user_id integer REFERENCES users (id)
);

DROP TABLE IF EXISTS comments;

CREATE TABLE IF NOT EXISTS comments
(
id serial PRIMARY KEY NOT NULL,
body character varying(510) NULL DEFAULT NULL,
created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
user_id integer REFERENCES users (id),
post_id integer REFERENCES posts (id)
);

\i scripts/blog_data.sql


