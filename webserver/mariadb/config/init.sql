CREATE TABLE Guests (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    guest_pass VARCHAR(200) NOT NULL,
    email VARCHAR(50),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Chatbot (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(200) NOT NULL UNIQUE,
    answer VARCHAR(200) NOT NULL,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE BullyReports (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    victim VARCHAR(50), 
    bully VARCHAR(50), 
    relationship VARCHAR(50), 
    witnesses VARCHAR(50), 
    details VARCHAR(50), 
    email VARCHAR(50), 
    phone VARCHAR(20),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO Chatbot (question, answer)
VALUES 
    ('Hi', 'Good day :) How may I help you?'),
    ('Hello', 'Hello, how are you?'),
    ('I need help', 'Of course! How may I help?')
;