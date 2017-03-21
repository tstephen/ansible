CREATE DATABASE IF NOT EXISTS ol_db;

CREATE USER IF NOT EXISTS 'ol'@'localhost';
CREATE USER IF NOT EXISTS 'ol'@'localhost';
-- SET PASSWORD FOR 'ol'@'localhost' = 'TODO';
GRANT ALL ON ol_db.* TO 'ol'@'localhost'; 

