CREATE TABLE users ( 
    id SERIAL NOT NULL, 
    email VARCHAR(100), 
    password VARCHAR(100), 
    name VARCHAR(1000), 
    PRIMARY KEY (id), 
    UNIQUE (email) );

CREATE TABLE blog_posts ( 
    id SERIAL NOT NULL, 
    author_id INTEGER, 
    title VARCHAR(250) NOT NULL, 
    subtitle VARCHAR(250) NOT NULL, 
    date VARCHAR(250) NOT NULL, body TEXT NOT NULL, 
    img_url VARCHAR(250) NOT NULL, 
    PRIMARY KEY (id), 
    FOREIGN KEY(author_id) 
    REFERENCES users (id), 
    UNIQUE (title) );

CREATE TABLE comments ( 
    id SERIAL NOT NULL, 
    text TEXT NOT NULL, 
    author_id INTEGER, 
    post_id INTEGER, 
    PRIMARY KEY (id), 
    FOREIGN KEY(author_id) 
    REFERENCES users (id), 
    FOREIGN KEY(post_id) REFERENCES blog_posts (id) );

