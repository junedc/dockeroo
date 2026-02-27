-- Create 2 databases
-- CREATE DATABASE IF NOT EXISTS docker_starline;
CREATE DATABASE IF NOT EXISTS docker_dev;
CREATE DATABASE IF NOT EXISTS docker_uat;

-- Make sure the app user exists and can access both DBs
CREATE USER IF NOT EXISTS 'starline'@'%' IDENTIFIED BY 'starline123';
ALTER USER 'starline'@'%' IDENTIFIED BY 'starline123';

-- GRANT ALL PRIVILEGES ON docker_starline.* TO 'starline'@'%';
GRANT ALL PRIVILEGES ON docker_dev.* TO 'starline'@'%';
GRANT ALL PRIVILEGES ON docker_uat.* TO 'starline'@'%';

FLUSH PRIVILEGES;