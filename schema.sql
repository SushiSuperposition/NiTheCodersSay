DROP TABLE IF EXISTS `soundcloud_keys`;

CREATE TABLE IF NOT EXISTS `soundcloud_keys`(
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`));
  
DROP TABLE IF EXISTS `spotify_keys`;

CREATE TABLE IF NOT EXISTS `spotify_keys`(
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`));

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE IF NOT EXISTS `profiles`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `about_me` VARCHAR(140),
  `bio` VARCHAR(1000),
  `pic_path` VARCHAR(21844) CHARACTER SET utf8,
  `spotify_key` INT,
  `soundcloud_key` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`spotify_key`) REFERENCES spotify_keys(`id`),
  FOREIGN KEY (`soundcloud_key`) REFERENCES soundcloud_keys(`id`));

DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(30) NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  `profile_id` INT NOT NULL,
  `password` --?
  `location` --?
  `dob` DATE NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id`) REFERENCES profiles(`id`));
  