-- Start writing code here
DROP TABLE IF EXISTS users, products, categories,product_categories CASCADE;

CREATE TABLE users (
  user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username varchar(255) unique not null,
  email varchar(255) unique not null,
  password varchar(255) not null,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP unique NOT NULL 
);

CREATE TABLE products (
  product_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name varchar(255) not null,
  description TEXT,
  price Numeric(10,2) not null,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP unique NOT NULL
);

CREATE TABLE categories (
  categories_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name varchar(255) not null,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP unique NOT NULL
);

CREATE TABLE product_categories (
  product_category_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
  category_id INT REFERENCES categories(categories_id) ON DELETE CASCADE
);
