-- Create Categories Table
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create SubCategories Table
CREATE TABLE subcategories (
    subcategory_id SERIAL PRIMARY KEY,
    category_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

-- Create Questions Table
CREATE TABLE questions (
    question_id SERIAL PRIMARY KEY,
    subcategory_id INT NOT NULL,
    text TEXT NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategories (subcategory_id)
);

-- Create Answers Table
CREATE TABLE answers (
    answer_id SERIAL PRIMARY KEY,
    question_id INT NOT NULL,
    text TEXT NOT NULL,
    is_correct BOOLEAN NOT NULL,
    FOREIGN KEY (question_id) REFERENCES questions (question_id)
);