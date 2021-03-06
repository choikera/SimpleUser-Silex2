CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  email VARCHAR(100) NOT NULL DEFAULT '' UNIQUE,
  password VARCHAR(255) DEFAULT NULL,
  salt VARCHAR(255) NOT NULL DEFAULT '',
  roles VARCHAR(255) NOT NULL DEFAULT '',
  name VARCHAR(100) NOT NULL DEFAULT '',
  time_created INT NOT NULL DEFAULT 0,
  username VARCHAR(100) UNIQUE,
  isEnabled INTEGER DEFAULT 1,
  confirmationToken VARCHAR(100),
  timePasswordResetRequested INT
);


CREATE TABLE user_custom_fields (
  user_id INT(11) NOT NULL,
  attribute VARCHAR(50) NOT NULL DEFAULT '',
  value VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (user_id, attribute)
);