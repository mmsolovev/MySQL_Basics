
UPDATE users SET created_at = STR_TO_DATE(created_at, "%d.%m.%Y %k:%i");
ALTER TABLE users MODIFY created_at DATETIME;
UPDATE users SET updated_at = STR_TO_DATE(updated_at, "%d.%m.%Y %k:%i");
ALTER TABLE users MODIFY updated_at DATETIME;