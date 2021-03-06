-- MySQL Script generated by MySQL Workbench
-- Sat Aug 10 11:19:04 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`artists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`artists` (
  `idartist` INT(11) NOT NULL AUTO_INCREMENT,
  `artist_name` VARCHAR(45) NOT NULL,
  `total_songs` INT(11) NOT NULL,
  `total-albums` INT(11) NOT NULL,
  PRIMARY KEY (`idartist`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`genres` (
  `genre_id` INT(11) NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`genre_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`albums` (
  `album_id` INT(11) NOT NULL AUTO_INCREMENT,
  `album_name` VARCHAR(45) NOT NULL,
  `release_date` DATE NOT NULL,
  `price` DECIMAL(10,0) NOT NULL,
  `genre_genre_id` INT(11) NOT NULL,
  `artist_idartist` INT(11) NOT NULL,
  PRIMARY KEY (`album_id`),
  INDEX `fk_albums_genre1_idx` (`genre_genre_id` ASC) VISIBLE,
  INDEX `fk_albums_artist1_idx` (`artist_idartist` ASC) VISIBLE,
  CONSTRAINT `fk_albums_artist1`
    FOREIGN KEY (`artist_idartist`)
    REFERENCES `mydb`.`artists` (`idartist`),
  CONSTRAINT `fk_albums_genre1`
    FOREIGN KEY (`genre_genre_id`)
    REFERENCES `mydb`.`genres` (`genre_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`addresses` (
  `address_id` INT NOT NULL,
  `house_no` VARCHAR(45) NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `province` VARCHAR(45) NOT NULL,
  `postal_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE INDEX `address_id_UNIQUE` (`address_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`subscriptions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`subscriptions` (
  `subscription_id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL,
  `cost` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`subscription_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `addresses_address_id` INT NOT NULL,
  `subscriptions_subscription_id` INT(11) NOT NULL,
  PRIMARY KEY (`customer_id`, `subscriptions_subscription_id`),
  UNIQUE INDEX `password_UNIQUE` (`password` ASC) VISIBLE,
  INDEX `fk_customers_addresses1_idx` (`addresses_address_id` ASC) VISIBLE,
  INDEX `fk_customers_subscriptions1_idx` (`subscriptions_subscription_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_addresses1`
    FOREIGN KEY (`addresses_address_id`)
    REFERENCES `mydb`.`addresses` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_subscriptions1`
    FOREIGN KEY (`subscriptions_subscription_id`)
    REFERENCES `mydb`.`subscriptions` (`subscription_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`playlists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`playlists` (
  `playlist_id` INT(11) NOT NULL AUTO_INCREMENT,
  `playlist_name` VARCHAR(45) NOT NULL,
  `customer_customer_id` INT(11) NOT NULL,
  PRIMARY KEY (`playlist_id`),
  INDEX `fk_playlist_customer_idx` (`customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_playlist_customer`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`songs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`songs` (
  `song_id` INT(11) NOT NULL AUTO_INCREMENT,
  `song_name` VARCHAR(45) NOT NULL,
  `song_description` VARCHAR(45) NULL DEFAULT NULL,
  `albums_album_id1` INT(11) NOT NULL,
  `artist_idartist` INT(11) NOT NULL,
  PRIMARY KEY (`song_id`),
  INDEX `fk_song_albums1_idx` (`albums_album_id1` ASC) VISIBLE,
  INDEX `fk_song_artist1_idx` (`artist_idartist` ASC) VISIBLE,
  CONSTRAINT `fk_song_albums1`
    FOREIGN KEY (`albums_album_id1`)
    REFERENCES `mydb`.`albums` (`album_id`),
  CONSTRAINT `fk_song_artist1`
    FOREIGN KEY (`artist_idartist`)
    REFERENCES `mydb`.`artists` (`idartist`))
ENGINE = InnoDB
AUTO_INCREMENT = 33
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`playlist_has_song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`playlist_has_song` (
  `song_albums_album_id` INT(11) NOT NULL AUTO_INCREMENT,
  `playlist_playlist_id` INT(11) NOT NULL,
  `song_song_id` INT(11) NOT NULL,
  PRIMARY KEY (`song_albums_album_id`, `playlist_playlist_id`, `song_song_id`),
  INDEX `fk_playlist_has_song_song1_idx` (`song_song_id` ASC, `song_albums_album_id` ASC) VISIBLE,
  INDEX `fk_playlist_has_song_playlist1_idx` (`playlist_playlist_id` ASC) VISIBLE,
  CONSTRAINT `fk_playlist_has_song_playlist1`
    FOREIGN KEY (`playlist_playlist_id`)
    REFERENCES `mydb`.`playlists` (`playlist_id`),
  CONSTRAINT `fk_playlist_has_song_song1`
    FOREIGN KEY (`song_song_id`)
    REFERENCES `mydb`.`songs` (`song_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`repetitions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`repetitions` (
  `customer_customer_id` INT(11) NOT NULL,
  `song_song_id` INT(11) NOT NULL,
  `count` INT(11) NOT NULL,
  PRIMARY KEY (`customer_customer_id`, `song_song_id`),
  INDEX `fk_customer_has_song_song1_idx` (`song_song_id` ASC) VISIBLE,
  INDEX `fk_customer_has_song_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_has_song_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`),
  CONSTRAINT `fk_customer_has_song_song1`
    FOREIGN KEY (`song_song_id`)
    REFERENCES `mydb`.`songs` (`song_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`payments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`payments` (
  `payments_id` INT NOT NULL,
  `card_number` VARCHAR(45) NOT NULL,
  `customers_customer_id` INT(11) NOT NULL,
  `customers_subscriptions_subscription_id` INT(11) NOT NULL,
  PRIMARY KEY (`payments_id`),
  INDEX `fk_payments_customers1_idx` (`customers_customer_id` ASC, `customers_subscriptions_subscription_id` ASC) VISIBLE,
  CONSTRAINT `fk_payments_customers1`
    FOREIGN KEY (`customers_customer_id` , `customers_subscriptions_subscription_id`)
    REFERENCES `mydb`.`customers` (`customer_id` , `subscriptions_subscription_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
