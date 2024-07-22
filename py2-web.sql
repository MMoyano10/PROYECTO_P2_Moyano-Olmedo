-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema proyectotiendamvc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyectotiendamvc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyectotiendamvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `proyectotiendamvc` ;

-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`aspnetroles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`aspnetroles` (
  `Id` VARCHAR(128) NOT NULL,
  `Name` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`aspnetusers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`aspnetusers` (
  `Id` VARCHAR(128) NOT NULL,
  `Email` VARCHAR(256) NULL DEFAULT NULL,
  `EmailConfirmed` BIT(1) NOT NULL,
  `PasswordHash` TEXT NULL DEFAULT NULL,
  `SecurityStamp` TEXT NULL DEFAULT NULL,
  `PhoneNumber` TEXT NULL DEFAULT NULL,
  `PhoneNumberConfirmed` BIT(1) NOT NULL,
  `TwoFactorEnabled` BIT(1) NOT NULL,
  `LockoutEndDateUtc` DATETIME NULL DEFAULT NULL,
  `LockoutEnabled` BIT(1) NOT NULL,
  `AccessFailedCount` INT NOT NULL,
  `UserName` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`aspnetuserclaims`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`aspnetuserclaims` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `UserId` VARCHAR(128) NOT NULL,
  `ClaimType` TEXT NULL DEFAULT NULL,
  `ClaimValue` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `FK_AspNetUserClaims_AspNetUsers` (`UserId` ASC) VISIBLE,
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers`
    FOREIGN KEY (`UserId`)
    REFERENCES `proyectotiendamvc`.`aspnetusers` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`aspnetuserlogins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`aspnetuserlogins` (
  `LoginProvider` VARCHAR(128) NOT NULL,
  `ProviderKey` VARCHAR(128) NOT NULL,
  `UserId` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`LoginProvider`, `ProviderKey`, `UserId`),
  INDEX `FK_AspNetUserLogins_AspNetUsers` (`UserId` ASC) VISIBLE,
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers`
    FOREIGN KEY (`UserId`)
    REFERENCES `proyectotiendamvc`.`aspnetusers` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`aspnetuserroles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`aspnetuserroles` (
  `UserId` VARCHAR(128) NOT NULL,
  `RoleId` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`UserId`, `RoleId`),
  INDEX `FK_AspNetUserRoles_AspNetRoles` (`RoleId` ASC) VISIBLE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles`
    FOREIGN KEY (`RoleId`)
    REFERENCES `proyectotiendamvc`.`aspnetroles` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers`
    FOREIGN KEY (`UserId`)
    REFERENCES `proyectotiendamvc`.`aspnetusers` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`clientes` (
  `ClienteID` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NULL DEFAULT NULL,
  `Direccion` VARCHAR(100) NULL DEFAULT NULL,
  `Ciudad` VARCHAR(50) NULL DEFAULT NULL,
  `Provincia` VARCHAR(50) NULL DEFAULT NULL,
  `Telefono` VARCHAR(10) NULL DEFAULT NULL,
  `Cedula` VARCHAR(15) NOT NULL,
  `Pais` VARCHAR(50) NULL DEFAULT NULL,
  `Foto` VARCHAR(50) NULL DEFAULT NULL,
  `Id_Identity` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`ClienteID`),
  UNIQUE INDEX `UQ_Clientes_Id_Identity` (`Id_Identity` ASC) VISIBLE,
  CONSTRAINT `clientes_ibfk_1`
    FOREIGN KEY (`Id_Identity`)
    REFERENCES `proyectotiendamvc`.`aspnetusers` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`pedidos` (
  `PedidoID` INT NOT NULL AUTO_INCREMENT,
  `ClienteID` INT NOT NULL,
  `FechaPedido` DATETIME NOT NULL,
  PRIMARY KEY (`PedidoID`),
  INDEX `FK_Pedidos_Clientes` (`ClienteID` ASC) VISIBLE,
  CONSTRAINT `FK_Pedidos_Clientes`
    FOREIGN KEY (`ClienteID`)
    REFERENCES `proyectotiendamvc`.`clientes` (`ClienteID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`proveedor` (
  `codigo_proveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` VARCHAR(32) NOT NULL,
  `ciudad` VARCHAR(32) NOT NULL,
  `provincia` VARCHAR(32) NULL DEFAULT NULL,
  `Email` VARCHAR(256) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_proveedor`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`productos` (
  `ProductoID` INT NOT NULL AUTO_INCREMENT,
  `NombreProducto` VARCHAR(50) NOT NULL,
  `Descripcion` TEXT NULL DEFAULT NULL,
  `Precio` DECIMAL(18,2) NOT NULL,
  `Imagen` LONGTEXT NULL DEFAULT NULL,
  `Stock` INT NOT NULL,
  `codigo_proveedor` INT NOT NULL,
  PRIMARY KEY (`ProductoID`),
  INDEX `FK_Productos_Proveedor` (`codigo_proveedor` ASC) VISIBLE,
  CONSTRAINT `FK_Productos_Proveedor`
    FOREIGN KEY (`codigo_proveedor`)
    REFERENCES `proyectotiendamvc`.`proveedor` (`codigo_proveedor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyectotiendamvc`.`pedidositems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyectotiendamvc`.`pedidositems` (
  `PedidoItemID` INT NOT NULL AUTO_INCREMENT,
  `PedidoID` INT NOT NULL,
  `ProductoID` INT NOT NULL,
  `Cantidad` INT NOT NULL,
  PRIMARY KEY (`PedidoItemID`),
  INDEX `FK_PedidosItems_Pedidos` (`PedidoID` ASC) VISIBLE,
  INDEX `FK_PedidosItems_Productos` (`ProductoID` ASC) VISIBLE,
  CONSTRAINT `FK_PedidosItems_Pedidos`
    FOREIGN KEY (`PedidoID`)
    REFERENCES `proyectotiendamvc`.`pedidos` (`PedidoID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_PedidosItems_Productos`
    FOREIGN KEY (`ProductoID`)
    REFERENCES `proyectotiendamvc`.`productos` (`ProductoID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
