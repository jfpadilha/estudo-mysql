-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema exe_secao03
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema exe_secao03
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `exe_secao03` ;
USE `exe_secao03` ;

-- -----------------------------------------------------
-- Table `exe_secao03`.`tipos_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_secao03`.`tipos_produto` (
  `idTipoProduto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipoProduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exe_secao03`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_secao03`.`produtos` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `produto` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(8,2) NULL,
  `idTipoProduto` INT NOT NULL,
  PRIMARY KEY (`idProduto`),
  INDEX `fk_produto_tipos_produto_idx` (`idTipoProduto` ASC) VISIBLE,
  CONSTRAINT `fk_produto_tipos_produto`
    FOREIGN KEY (`idTipoProduto`)
    REFERENCES `exe_secao03`.`tipos_produto` (`idTipoProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exe_secao03`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_secao03`.`pacientes` (
  `idPaciente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(40) NOT NULL,
  `cidade` VARCHAR(40) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  PRIMARY KEY (`idPaciente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exe_secao03`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_secao03`.`professores` (
  `idProfessor` INT NOT NULL AUTO_INCREMENT,
  `telefone` INT NOT NULL,
  `nome` VARCHAR(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`idProfessor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exe_secao03`.`turmas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_secao03`.`turmas` (
  `idTurma` INT NOT NULL AUTO_INCREMENT,
  `capacidade` INT NOT NULL,
  `idProfessor` INT NOT NULL,
  PRIMARY KEY (`idTurma`),
  INDEX `fk_turmas_professores1_idx` (`idProfessor` ASC) VISIBLE,
  CONSTRAINT `fk_turmas_professores1`
    FOREIGN KEY (`idProfessor`)
    REFERENCES `exe_secao03`.`professores` (`idProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
