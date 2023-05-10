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
-- -----------------------------------------------------
-- Schema tienda_virtual
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tienda_virtual
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tienda_virtual` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `tienda_virtual`.`proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_virtual`.`proveedor` (
  `id_provee` INT NOT NULL AUTO_INCREMENT,
  `nombre_provee` VARCHAR(45) NOT NULL,
  `telefono_provee` VARCHAR(45) NOT NULL,
  `direccion_provee` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_provee`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`inventario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tienda_virtual`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_virtual`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre_categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tienda_virtual`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_virtual`.`productos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` VARCHAR(45) NOT NULL,
  `inventario_id` INT NOT NULL,
  `categorias_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_productos_inventario_idx` (`inventario_id` ASC) VISIBLE,
  INDEX `fk_productos_categorias1_idx` (`categorias_id` ASC) VISIBLE,
  CONSTRAINT `fk_productos_inventario`
    FOREIGN KEY (`inventario_id`)
    REFERENCES `mydb`.`inventario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_categorias1`
    FOREIGN KEY (`categorias_id`)
    REFERENCES `tienda_virtual`.`categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`provee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`provee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `proveedor_id_provee` INT NOT NULL,
  `productos_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_provee_proveedor_idx` (`proveedor_id_provee` ASC) VISIBLE,
  INDEX `fk_provee_productos1_idx` (`productos_id` ASC) VISIBLE,
  CONSTRAINT `fk_provee_proveedor`
    FOREIGN KEY (`proveedor_id_provee`)
    REFERENCES `tienda_virtual`.`proveedor` (`id_provee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_provee_productos1`
    FOREIGN KEY (`productos_id`)
    REFERENCES `tienda_virtual`.`productos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `tienda_virtual` ;

-- -----------------------------------------------------
-- Table `tienda_virtual`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_virtual`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tienda_virtual`.`factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_virtual`.`factura` (
  `numero_factura` INT NOT NULL AUTO_INCREMENT,
  `cantidad_articulos` VARCHAR(45) NOT NULL,
  `fecha` VARCHAR(45) NOT NULL,
  `total` VARCHAR(45) NOT NULL,
  `productos_id` INT NOT NULL,
  `usuarios_id` INT NOT NULL,
  PRIMARY KEY (`numero_factura`),
  INDEX `fk_factura_productos1_idx` (`productos_id` ASC) VISIBLE,
  INDEX `fk_factura_usuarios1_idx` (`usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_factura_productos1`
    FOREIGN KEY (`productos_id`)
    REFERENCES `tienda_virtual`.`productos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_factura_usuarios1`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `tienda_virtual`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
