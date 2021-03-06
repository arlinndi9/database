-- MySQL Script generated by MySQL Workbench
-- Fri Jan  8 15:24:49 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `kanalet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `kanalet` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `kanalet` (
  `idkanalet` INT NOT NULL AUTO_INCREMENT,
  `emriikanalit` VARCHAR(45) NULL,
  `kanaldescription` VARCHAR(45) NULL,
  PRIMARY KEY (`idkanalet`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `kategoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `kategoria` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `kategoria` (
  `idkategoria` INT NOT NULL AUTO_INCREMENT,
  `kategoridescriptin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idkategoria`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `orari`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `orari` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `orari` (
  `orariID` INT NOT NULL AUTO_INCREMENT,
  `kanaliID` INT NOT NULL,
  `programiID` INT NOT NULL,
  `oraefillimit` DATE NOT NULL,
  `oraembarimit` DATE NULL,
  PRIMARY KEY (`orariID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `produceret`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `produceret` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `produceret` (
  `producerID` INT NOT NULL AUTO_INCREMENT,
  `producingcompamyID` INT NOT NULL,
  `emri` VARCHAR(255) NOT NULL,
  `mbiemri` VARCHAR(255) NOT NULL,
  `adresa` VARCHAR(255) NOT NULL,
  `kontakti` INT NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`producerID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `producing company`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `producing company` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `producing company` (
  `idproducing company` INT NOT NULL AUTO_INCREMENT,
  `namecompany` VARCHAR(45) NOT NULL,
  `adresacomapny` VARCHAR(45) NULL,
  `` DATE NULL,
  PRIMARY KEY (`idproducing company`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `programi`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `programi` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `programi` (
  `programID` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `programdescription` VARCHAR(45) NOT NULL,
  `programtitle` VARCHAR(45) NOT NULL,
  `kategorID` INT NOT NULL,
  `producerID` INT NOT NULL,
  PRIMARY KEY (`programID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`));

SHOW WARNINGS;
USE `mydb`;

DELIMITER $$

USE `mydb`$$
DROP TRIGGER IF EXISTS `programi_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`programi_BEFORE_INSERT` BEFORE INSERT ON `programi` FOR EACH ROW
BEGIN

END
$$

SHOW WARNINGS$$

USE `mydb`$$
DROP TRIGGER IF EXISTS `programi_AFTER_INSERT` $$
SHOW WARNINGS$$
USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`programi_AFTER_INSERT` AFTER INSERT ON `programi` FOR EACH ROW
BEGIN

END
$$

SHOW WARNINGS$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `kategoria`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `kategoria` (`idkategoria`, `kategoridescriptin`) VALUES (1, 'sport');
INSERT INTO `kategoria` (`idkategoria`, `kategoridescriptin`) VALUES (2, 'filma');

COMMIT;


-- -----------------------------------------------------
-- Data for table `orari`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `orari` (`orariID`, `kanaliID`, `programiID`, `oraefillimit`, `oraembarimit`) VALUES (1, 1, 1, '25/12/2020', '25/12/2020');
INSERT INTO `orari` (`orariID`, `kanaliID`, `programiID`, `oraefillimit`, `oraembarimit`) VALUES (2, 2, 2, '1/1/2021', '1/1/2021');

COMMIT;


-- -----------------------------------------------------
-- Data for table `produceret`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `produceret` (`producerID`, `producingcompamyID`, `emri`, `mbiemri`, `adresa`, `kontakti`, `email`) VALUES (12, klan, 'ar', 'krasniqi', 'prishtine', 045859556, 'ARLIND@gmail.com');
INSERT INTO `produceret` (`producerID`, `producingcompamyID`, `emri`, `mbiemri`, `adresa`, `kontakti`, `email`) VALUES (25, aaa, 'bekim', 'berisha', 'gjilan', 01454545, 'b@gmail.com');
INSERT INTO `produceret` (`producerID`, `producingcompamyID`, `emri`, `mbiemri`, `adresa`, `kontakti`, `email`) VALUES (26, vvbq, 'sddd', 'sdsdrrrg', 'mitrovic', 0121212, 'a@gmail.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `producing company`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `producing company` (`idproducing company`, `namecompany`, `adresacomapny`, ``) VALUES (1, 'k11', 'prishtine', NULL);
INSERT INTO `producing company` (`idproducing company`, `namecompany`, `adresacomapny`, ``) VALUES (2, 'prishtine', 'prishtine', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `programi`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `programi` (`programID`, `programdescription`, `programtitle`, `kategorID`, `producerID`) VALUES (1, 'KOMEDI', 'HAHAHA', 1, 12);
INSERT INTO `programi` (`programID`, `programdescription`, `programtitle`, `kategorID`, `producerID`) VALUES (2, 'SPORT', 'FUTBOLL', 2, 25);
INSERT INTO `programi` (`programID`, `programdescription`, `programtitle`, `kategorID`, `producerID`) VALUES (3, 'kuzhina', 'ushqimi', 3, 26);
INSERT INTO `programi` (`programID`, `programdescription`, `programtitle`, `kategorID`, `producerID`) VALUES (, '', '', , DEFAULT);

COMMIT;

