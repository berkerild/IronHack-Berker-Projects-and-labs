-- Google Play Store Project — Database Schema
-- Creating the database and all 3 tables with primary/foreign keys.

CREATE DATABASE IF NOT EXISTS GoogleApps
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
USE GoogleApps;

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS apps;
DROP TABLE IF EXISTS categories;

-- TABLE 1: categories


CREATE TABLE categories (
    category_id   INT PRIMARY KEY,
    category_name VARCHAR(50)
);


-- TABLE 2: apps

CREATE TABLE apps (
    app_id           INT PRIMARY KEY,
    app_name         VARCHAR(200),
    category_id      INT,
    rating           FLOAT,
    reviews_count    INT,
    size             VARCHAR(20),
    installs         INT,
    type             VARCHAR(10),
    price            FLOAT,
    content_rating   VARCHAR(20),
    last_updated     VARCHAR(20),
    current_version  VARCHAR(100),
    android_version  VARCHAR(20),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


-- TABLE 3: reviews (references apps)

CREATE TABLE reviews (
    review_id               INT AUTO_INCREMENT PRIMARY KEY,
    app_id                  INT NOT NULL,
    translated_review       TEXT,
    sentiment               VARCHAR(10),
    sentiment_polarity      FLOAT,
    sentiment_subjectivity  FLOAT,
    FOREIGN KEY (app_id) REFERENCES apps(app_id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
