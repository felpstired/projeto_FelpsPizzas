-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dbescola
--

CREATE DATABASE IF NOT EXISTS dbescola;
USE dbescola;

--
-- Definition of table `filho`
--

DROP TABLE IF EXISTS `filho`;
CREATE TABLE `filho` (
  `idfilho` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpai` int(10) unsigned NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'a',
  PRIMARY KEY (`idfilho`,`idpai`),
  KEY `fk_idpai` (`idpai`),
  CONSTRAINT `fk_idpai` FOREIGN KEY (`idpai`) REFERENCES `pai` (`idpai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filho`
--

/*!40000 ALTER TABLE `filho` DISABLE KEYS */;
INSERT INTO `filho` (`idfilho`,`idpai`,`nome`,`nascimento`,`ativo`) VALUES 
 (7,7,'tathi','2002-05-13','a'),
 (8,8,'gege','2002-05-13','a'),
 (9,9,'rafa','2002-05-13','a'),
 (10,10,'hot','2002-05-13','a'),
 (11,11,'diogo','2002-05-13','a'),
 (12,12,'luca','2002-05-13','a'),
 (13,13,'sara','2002-05-13','a'),
 (14,14,'luana','2002-05-13','a'),
 (15,15,'alessa','2002-05-13','a'),
 (16,16,'migel','2002-05-13','a'),
 (17,17,'gabs','2002-05-13','a'),
 (18,18,'vito','2002-05-13','a'),
 (19,19,'felps','2002-05-13','a'),
 (20,20,'cellbit','2002-05-13','a'),
 (21,21,'alan','2002-05-13','a'),
 (23,21,'felca','2002-05-13','a');
/*!40000 ALTER TABLE `filho` ENABLE KEYS */;


--
-- Definition of table `idade`
--

DROP TABLE IF EXISTS `idade`;
CREATE TABLE `idade` (
  `ididade` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpai` int(10) unsigned NOT NULL,
  `idade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ididade`,`idpai`),
  KEY `fk_idpai_ididade` (`idpai`),
  CONSTRAINT `fk_idpai_ididade` FOREIGN KEY (`idpai`) REFERENCES `pai` (`idpai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `idade`
--

/*!40000 ALTER TABLE `idade` DISABLE KEYS */;
INSERT INTO `idade` (`ididade`,`idpai`,`idade`) VALUES 
 (2,4,40),
 (3,5,25);
/*!40000 ALTER TABLE `idade` ENABLE KEYS */;


--
-- Definition of table `pai`
--

DROP TABLE IF EXISTS `pai`;
CREATE TABLE `pai` (
  `idpai` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'a',
  `sobrenome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpai`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pai`
--

/*!40000 ALTER TABLE `pai` DISABLE KEYS */;
INSERT INTO `pai` (`idpai`,`nome`,`ativo`,`sobrenome`) VALUES 
 (4,'roberto','a',NULL),
 (5,'paulo','a',NULL),
 (7,'felipe','a',NULL),
 (8,'rafael','a',NULL),
 (9,'alan','a',NULL),
 (10,'davi','a',NULL),
 (11,'luciano','a',NULL),
 (12,'maria','a',NULL),
 (13,'carlos','a',NULL),
 (14,'robson','a',NULL),
 (15,'renato','a',NULL),
 (16,'lucas','a',NULL),
 (17,'thiago','a',NULL),
 (18,'omar','a',NULL),
 (19,'raquel','a',NULL),
 (20,'pedro','a',NULL),
 (21,'joão','a',NULL);
/*!40000 ALTER TABLE `pai` ENABLE KEYS */;


--
-- Definition of table `portaria`
--

DROP TABLE IF EXISTS `portaria`;
CREATE TABLE `portaria` (
  `idportaria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ididade` int(10) unsigned NOT NULL,
  `entrada` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`idportaria`,`ididade`),
  KEY `fk_ididade_idportaria` (`ididade`),
  CONSTRAINT `fk_ididade_idportaria` FOREIGN KEY (`ididade`) REFERENCES `idade` (`ididade`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portaria`
--

/*!40000 ALTER TABLE `portaria` DISABLE KEYS */;
INSERT INTO `portaria` (`idportaria`,`ididade`,`entrada`) VALUES 
 (1,3,'s'),
 (3,2,'n');
/*!40000 ALTER TABLE `portaria` ENABLE KEYS */;

--
-- Create schema dbhapparty
--

CREATE DATABASE IF NOT EXISTS dbhapparty;
USE dbhapparty;

--
-- Definition of table `tbadmissao`
--

DROP TABLE IF EXISTS `tbadmissao`;
CREATE TABLE `tbadmissao` (
  `idadmissao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfuncionario` int(10) unsigned NOT NULL,
  `admissao` date NOT NULL,
  `demissao` date DEFAULT NULL,
  PRIMARY KEY (`idadmissao`,`idfuncionario`),
  KEY `fk_idadmissao_idfuncionario` (`idfuncionario`),
  CONSTRAINT `fk_idadmissao_idfuncionario` FOREIGN KEY (`idfuncionario`) REFERENCES `tbfuncionario` (`idfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbadmissao`
--

/*!40000 ALTER TABLE `tbadmissao` DISABLE KEYS */;
INSERT INTO `tbadmissao` (`idadmissao`,`idfuncionario`,`admissao`,`demissao`) VALUES 
 (1,1,'2022-05-13',NULL),
 (2,2,'2022-05-13',NULL),
 (3,3,'2022-05-14',NULL),
 (4,4,'2022-05-15',NULL),
 (5,5,'2022-07-28',NULL),
 (6,6,'2022-09-03',NULL),
 (7,7,'2023-01-02',NULL),
 (8,8,'2023-02-13',NULL),
 (9,9,'2023-02-15',NULL),
 (10,10,'2023-03-24',NULL),
 (11,11,'2023-04-28',NULL);
/*!40000 ALTER TABLE `tbadmissao` ENABLE KEYS */;


--
-- Definition of table `tbbaixaestoque`
--

DROP TABLE IF EXISTS `tbbaixaestoque`;
CREATE TABLE `tbbaixaestoque` (
  `idbaixaestoque` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idestoque` int(10) unsigned NOT NULL,
  `idfestadeco` int(10) unsigned NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idbaixaestoque`,`idestoque`,`idfestadeco`),
  KEY `fk_idestoque_idbaixaestoque` (`idestoque`),
  KEY `fk_idfestadeco_idbaixaestoque` (`idfestadeco`),
  CONSTRAINT `fk_idestoque_idbaixaestoque` FOREIGN KEY (`idestoque`) REFERENCES `tbestoque` (`idestoque`),
  CONSTRAINT `fk_idfestadeco_idbaixaestoque` FOREIGN KEY (`idfestadeco`) REFERENCES `tbfestadeco` (`idfestadeco`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbaixaestoque`
--

/*!40000 ALTER TABLE `tbbaixaestoque` DISABLE KEYS */;
INSERT INTO `tbbaixaestoque` (`idbaixaestoque`,`idestoque`,`idfestadeco`,`quantidade`) VALUES 
 (1,1,1,20),
 (2,2,2,20),
 (3,3,3,20),
 (4,5,4,20),
 (5,2,5,20),
 (6,7,6,20),
 (7,1,7,20),
 (8,3,8,20),
 (9,6,9,20),
 (10,4,10,20),
 (11,1,11,20);
/*!40000 ALTER TABLE `tbbaixaestoque` ENABLE KEYS */;


--
-- Definition of table `tbcargo`
--

DROP TABLE IF EXISTS `tbcargo`;
CREATE TABLE `tbcargo` (
  `idcargo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcargo`
--

/*!40000 ALTER TABLE `tbcargo` DISABLE KEYS */;
INSERT INTO `tbcargo` (`idcargo`,`cargo`) VALUES 
 (1,'CEO'),
 (2,'Auxiliar de Decoração'),
 (3,'Gestor de Fornecedores'),
 (4,'Atendimento ao Cliente'),
 (5,'Gerenciador de Estoques'),
 (6,'Programador'),
 (7,'Planejador de Cardápio');
/*!40000 ALTER TABLE `tbcargo` ENABLE KEYS */;


--
-- Definition of table `tbcontato`
--

DROP TABLE IF EXISTS `tbcontato`;
CREATE TABLE `tbcontato` (
  `idcontato` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoas` int(10) unsigned NOT NULL,
  `contato` varchar(16) NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idcontato`,`idpessoas`),
  KEY `fk_idpessoas_idcontato` (`idpessoas`),
  CONSTRAINT `fk_idpessoas_idcontato` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcontato`
--

/*!40000 ALTER TABLE `tbcontato` DISABLE KEYS */;
INSERT INTO `tbcontato` (`idcontato`,`idpessoas`,`contato`,`ativo`) VALUES 
 (1,173,'(11) 9 1234-5678','A'),
 (2,184,'(22) 9 9876-5432','A'),
 (3,4,'(33) 9 4567-8901','A'),
 (4,30,'(44) 9 6789-0123','A'),
 (5,41,'(55) 9 3210-9876','A'),
 (6,52,'(11) 9 5678-1234','A'),
 (7,63,'(22) 9 5432-9876','A'),
 (8,74,'(33) 9 8901-4567','A'),
 (9,85,'(44) 9 0123-6789','A'),
 (10,96,'(55) 9 9876-3210','A'),
 (11,107,'(11) 9 8765-4321','A'),
 (12,118,'(22) 9 2345-6789','A'),
 (13,2,'(33) 9 5678-9012','A'),
 (14,140,'(44) 9 9012-3456','A'),
 (15,151,'(55) 9 3456-7890','A'),
 (16,162,'(11) 9 7890-1234','A'),
 (17,173,'(22) 9 1234-5678','A'),
 (18,184,'(33) 9 5678-9012','A'),
 (19,19,'(44) 9 9012-3456','A'),
 (20,30,'(55) 9 3456-7890','A'),
 (21,41,'(11) 9 7890-1234','A'),
 (22,52,'(22) 9 1234-5678','A'),
 (23,63,'(33) 9 5678-9012','A'),
 (24,74,'(44) 9 9012-3456','A'),
 (25,85,'(55) 9 3456-7890','A'),
 (26,96,'(11) 9 7890-1234','A'),
 (27,107,'(22) 9 1234-5678','A'),
 (28,118,'(33) 9 5678-9012','A'),
 (29,129,'(44) 9 9012-3456','A'),
 (30,140,'(55) 9 3456-7890','A'),
 (31,151,'(11) 9 7890-1234','A'),
 (32,162,'(22) 9 1234-5678','A'),
 (33,2,'(33) 9 5678-9012','A'),
 (34,184,'(44) 9 9012-3456','A'),
 (35,19,'(55) 9 3456-7890','A'),
 (36,30,'(11) 9 7890-1234','A'),
 (37,41,'(22) 9 1234-5678','A'),
 (38,52,'(33) 9 5678-9012','A'),
 (39,8,'(44) 9 9012-3456','A'),
 (40,9,'(55) 9 3456-7890','A'),
 (41,85,'(11) 9 7890-1234','A'),
 (42,96,'(22) 9 1234-5678','A'),
 (43,107,'(33) 9 5678-9012','A'),
 (44,118,'(44) 9 9012-3456','A'),
 (45,129,'(55) 9 3456-7890','A'),
 (46,140,'(11) 9 7890-1234','A'),
 (47,151,'(22) 9 1234-5678','A'),
 (48,162,'(33) 9 5678-9012','A'),
 (49,173,'(44) 9 9012-3456','A'),
 (50,184,'(55) 9 3456-7890','A'),
 (51,19,'(11) 9 7890-1234','A'),
 (52,30,'(22) 9 1234-5678','A'),
 (53,1,'(33) 9 5678-9012','A'),
 (54,52,'(44) 9 9012-3456','A'),
 (55,63,'(55) 9 3456-7890','A'),
 (56,74,'(11) 9 7890-1234','A'),
 (57,85,'(22) 9 1234-5678','A'),
 (58,96,'(33) 9 5678-9012','A'),
 (59,107,'(44) 9 9012-3456','A'),
 (60,118,'(55) 9 3456-7890','A'),
 (61,129,'(11) 9 7890-1234','A'),
 (62,140,'(22) 9 1234-5678','A'),
 (63,151,'(33) 9 5678-9012','A'),
 (64,162,'(44) 9 9012-3456','A'),
 (65,173,'(55) 9 3456-7890','A'),
 (66,184,'(11) 9 7890-1234','A'),
 (67,19,'(22) 9 1234-5678','A'),
 (68,200,'(33) 9 5678-9012','A'),
 (69,41,'(44) 9 9012-3456','A'),
 (70,52,'(55) 9 3456-7890','A');
/*!40000 ALTER TABLE `tbcontato` ENABLE KEYS */;


--
-- Definition of table `tbcurri`
--

DROP TABLE IF EXISTS `tbcurri`;
CREATE TABLE `tbcurri` (
  `idcurri` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtrab` int(10) unsigned NOT NULL,
  `curriculo` longblob NOT NULL,
  PRIMARY KEY (`idcurri`,`idtrab`),
  KEY `fk_idtrab_idcurri` (`idtrab`),
  CONSTRAINT `fk_idtrab_idcurri` FOREIGN KEY (`idtrab`) REFERENCES `tbtrab` (`idtrab`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcurri`
--

/*!40000 ALTER TABLE `tbcurri` DISABLE KEYS */;
INSERT INTO `tbcurri` (`idcurri`,`idtrab`,`curriculo`) VALUES 
 (1,1,0x43757272C3AD63756C6F202D20524F424552534F4E2E706466),
 (2,2,0x637572726963756C6F5F68617070617274792E706466),
 (3,3,0x43757272C3AD63756C6F2E706466),
 (4,4,0x63757272C3AD63756C6F2E706E67),
 (5,5,0x637572726963756C6F2E706466);
/*!40000 ALTER TABLE `tbcurri` ENABLE KEYS */;


--
-- Definition of table `tbdeco`
--

DROP TABLE IF EXISTS `tbdeco`;
CREATE TABLE `tbdeco` (
  `iddeco` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfornecedor` int(10) unsigned NOT NULL,
  `deco` varchar(12) NOT NULL,
  `preco` double unsigned NOT NULL,
  PRIMARY KEY (`iddeco`,`idfornecedor`),
  KEY `fk_idfornecedor_iddeco` (`idfornecedor`),
  CONSTRAINT `fk_idfornecedor_iddeco` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbdeco`
--

/*!40000 ALTER TABLE `tbdeco` DISABLE KEYS */;
INSERT INTO `tbdeco` (`iddeco`,`idfornecedor`,`deco`,`preco`) VALUES 
 (1,2,'Balão Pratea',12.59),
 (2,2,'Balão Dourad',12.59),
 (3,2,'Balão Azul',9.49),
 (4,3,'Arco de balõ',16.56),
 (5,3,'Arranjo de F',23.89),
 (6,3,'Estatuetas d',43.29),
 (7,4,'Aranhas de P',7.5),
 (8,5,'Fogos de Art',20.49),
 (9,6,'Chapéu de Pa',10.59);
/*!40000 ALTER TABLE `tbdeco` ENABLE KEYS */;


--
-- Definition of table `tbendereco`
--

DROP TABLE IF EXISTS `tbendereco`;
CREATE TABLE `tbendereco` (
  `idendereco` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfornecedor` int(10) unsigned NOT NULL,
  `rua` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `numero` int(4) unsigned NOT NULL,
  `cep` varchar(9) NOT NULL,
  `complemento` varchar(15) DEFAULT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idendereco`,`idfornecedor`),
  KEY `fk_idfornecedor_idendereco` (`idfornecedor`),
  CONSTRAINT `fk_idfornecedor_idendereco` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbendereco`
--

/*!40000 ALTER TABLE `tbendereco` DISABLE KEYS */;
INSERT INTO `tbendereco` (`idendereco`,`idfornecedor`,`rua`,`bairro`,`numero`,`cep`,`complemento`,`ativo`) VALUES 
 (1,1,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (2,1,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (3,13,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (4,9,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (5,9,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (6,1,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (7,1,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (8,13,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A'),
 (9,13,'Rua Ivo de Tassis','Nova JK',120,'35045-570','Instituição','A');
/*!40000 ALTER TABLE `tbendereco` ENABLE KEYS */;


--
-- Definition of table `tbestoque`
--

DROP TABLE IF EXISTS `tbestoque`;
CREATE TABLE `tbestoque` (
  `idestoque` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iddeco` int(10) unsigned NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  `datadeco` date NOT NULL,
  PRIMARY KEY (`idestoque`,`iddeco`),
  KEY `fk_iddeco_idestoque` (`iddeco`),
  CONSTRAINT `fk_iddeco_idestoque` FOREIGN KEY (`iddeco`) REFERENCES `tbdeco` (`iddeco`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbestoque`
--

/*!40000 ALTER TABLE `tbestoque` DISABLE KEYS */;
INSERT INTO `tbestoque` (`idestoque`,`iddeco`,`categoria`,`quantidade`,`datadeco`) VALUES 
 (1,1,'Diversos',50,'2023-01-05'),
 (2,3,'Diversos',50,'2023-01-09'),
 (3,2,'Diversos',50,'2023-01-13'),
 (4,1,'Diversos',70,'2023-01-16'),
 (5,1,'Diversos',45,'2023-01-28'),
 (6,4,'Diversos',15,'2023-02-04'),
 (7,5,'Diversos',20,'2023-02-17'),
 (8,5,'Diversos',25,'2023-02-19'),
 (9,5,'Diversos',25,'2023-02-19'),
 (10,6,'Diversos',5,'2023-03-12'),
 (11,7,'Diversos',30,'2023-03-16'),
 (12,1,'Diversos',40,'2023-04-24'),
 (13,1,'Diversos',50,'2023-05-20');
/*!40000 ALTER TABLE `tbestoque` ENABLE KEYS */;


--
-- Definition of table `tbfesta`
--

DROP TABLE IF EXISTS `tbfesta`;
CREATE TABLE `tbfesta` (
  `idfesta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoas` int(10) unsigned NOT NULL,
  `idtipofesta` int(10) unsigned NOT NULL,
  `idpagamento` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idfesta`,`idpessoas`,`idtipofesta`,`idpagamento`),
  KEY `fk_idpessoas_idfesta` (`idpessoas`),
  KEY `fk_idtipofesta_idfesta` (`idtipofesta`),
  KEY `fk_idpagamento_idfesta` (`idpagamento`),
  CONSTRAINT `fk_idpagamento_idfesta` FOREIGN KEY (`idpagamento`) REFERENCES `tbpagamento` (`idpagamento`),
  CONSTRAINT `fk_idpessoas_idfesta` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idtipofesta_idfesta` FOREIGN KEY (`idtipofesta`) REFERENCES `tbtipofesta` (`idtipofesta`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfesta`
--

/*!40000 ALTER TABLE `tbfesta` DISABLE KEYS */;
INSERT INTO `tbfesta` (`idfesta`,`idpessoas`,`idtipofesta`,`idpagamento`) VALUES 
 (1,23,1,1),
 (2,35,1,4),
 (3,12,3,2),
 (4,156,2,3);
/*!40000 ALTER TABLE `tbfesta` ENABLE KEYS */;


--
-- Definition of table `tbfestadeco`
--

DROP TABLE IF EXISTS `tbfestadeco`;
CREATE TABLE `tbfestadeco` (
  `idfestadeco` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfesta` int(10) unsigned NOT NULL,
  `idestoque` int(10) unsigned NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idfestadeco`,`idfesta`,`idestoque`),
  KEY `fk_idfesta_idfestadeco` (`idfesta`),
  KEY `fk_idestoque_idfestadeco` (`idestoque`),
  CONSTRAINT `fk_idestoque_idfestadeco` FOREIGN KEY (`idestoque`) REFERENCES `tbestoque` (`idestoque`),
  CONSTRAINT `fk_idfesta_idfestadeco` FOREIGN KEY (`idfesta`) REFERENCES `tbfesta` (`idfesta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfestadeco`
--

/*!40000 ALTER TABLE `tbfestadeco` DISABLE KEYS */;
INSERT INTO `tbfestadeco` (`idfestadeco`,`idfesta`,`idestoque`,`quantidade`) VALUES 
 (1,1,1,25),
 (2,1,2,20),
 (3,1,3,26),
 (4,2,5,40),
 (5,3,2,34),
 (6,3,7,10),
 (7,1,1,45),
 (8,4,3,22),
 (9,4,6,25),
 (10,4,4,20),
 (11,3,1,25);
/*!40000 ALTER TABLE `tbfestadeco` ENABLE KEYS */;


--
-- Definition of table `tbfornecedor`
--

DROP TABLE IF EXISTS `tbfornecedor`;
CREATE TABLE `tbfornecedor` (
  `idfornecedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoas` int(10) unsigned NOT NULL,
  `tipodefornecedor` varchar(50) NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idfornecedor`,`idpessoas`),
  KEY `fk_idpessoas_idfornecedor` (`idpessoas`),
  CONSTRAINT `fk_idpessoas_idfornecedor` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfornecedor`
--

/*!40000 ALTER TABLE `tbfornecedor` DISABLE KEYS */;
INSERT INTO `tbfornecedor` (`idfornecedor`,`idpessoas`,`tipodefornecedor`,`ativo`) VALUES 
 (1,45,'Local','A'),
 (2,34,'Decorações','A'),
 (3,67,'Decorações','A'),
 (4,149,'Cardápio','A'),
 (5,14,'Marketing','A'),
 (6,136,'Cardápio','A'),
 (7,193,'Decorações','A'),
 (8,174,'Decorações','A'),
 (9,23,'Local','A'),
 (10,19,'Cardápio','A'),
 (11,6,'Decorações','A'),
 (12,165,'Marketing','A'),
 (13,78,'Local','A');
/*!40000 ALTER TABLE `tbfornecedor` ENABLE KEYS */;


--
-- Definition of table `tbfuncionario`
--

DROP TABLE IF EXISTS `tbfuncionario`;
CREATE TABLE `tbfuncionario` (
  `idfuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoas` int(10) unsigned NOT NULL,
  `idcargo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idfuncionario`,`idpessoas`,`idcargo`),
  KEY `fk_idpessoas_idfuncionario` (`idpessoas`),
  KEY `fk_idcargo_idfuncionario` (`idcargo`),
  CONSTRAINT `fk_idcargo_idfuncionario` FOREIGN KEY (`idcargo`) REFERENCES `tbcargo` (`idcargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idpessoas_idfuncionario` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfuncionario`
--

/*!40000 ALTER TABLE `tbfuncionario` DISABLE KEYS */;
INSERT INTO `tbfuncionario` (`idfuncionario`,`idpessoas`,`idcargo`) VALUES 
 (1,1,1),
 (2,200,6),
 (3,2,2),
 (4,3,4),
 (5,12,5),
 (6,35,3),
 (7,56,2),
 (8,12,7),
 (9,67,4),
 (10,34,3),
 (11,168,4);
/*!40000 ALTER TABLE `tbfuncionario` ENABLE KEYS */;


--
-- Definition of table `tbgenero`
--

DROP TABLE IF EXISTS `tbgenero`;
CREATE TABLE `tbgenero` (
  `idgenero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genero` varchar(12) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbgenero`
--

/*!40000 ALTER TABLE `tbgenero` DISABLE KEYS */;
INSERT INTO `tbgenero` (`idgenero`,`genero`) VALUES 
 (1,'Masculino'),
 (2,'Feminino'),
 (3,'Neutro');
/*!40000 ALTER TABLE `tbgenero` ENABLE KEYS */;


--
-- Definition of table `tblocal`
--

DROP TABLE IF EXISTS `tblocal`;
CREATE TABLE `tblocal` (
  `idlocal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfornecedor` int(10) unsigned NOT NULL,
  `nomelocal` varchar(45) NOT NULL,
  PRIMARY KEY (`idlocal`,`idfornecedor`),
  KEY `fk_idfornecedor_idlocal` (`idfornecedor`),
  CONSTRAINT `fk_idfornecedor_idlocal` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblocal`
--

/*!40000 ALTER TABLE `tblocal` DISABLE KEYS */;
INSERT INTO `tblocal` (`idlocal`,`idfornecedor`,`nomelocal`) VALUES 
 (1,1,'SENAI FIEMG'),
 (2,1,'SENAI FIEMG'),
 (3,13,'SENAI FIEMG'),
 (4,9,'SENAI FIEMG'),
 (5,9,'SENAI FIEMG'),
 (6,1,'SENAI FIEMG'),
 (7,1,'SENAI FIEMG'),
 (8,13,'SENAI FIEMG'),
 (9,13,'SENAI FIEMG');
/*!40000 ALTER TABLE `tblocal` ENABLE KEYS */;


--
-- Definition of table `tbpagamento`
--

DROP TABLE IF EXISTS `tbpagamento`;
CREATE TABLE `tbpagamento` (
  `idpagamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipopag` int(10) unsigned NOT NULL,
  `valor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpagamento`,`idtipopag`),
  KEY `fk_idpagamento_idtipopag` (`idtipopag`),
  CONSTRAINT `fk_idpagamento_idtipopag` FOREIGN KEY (`idtipopag`) REFERENCES `tbtipopag` (`idtipopag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpagamento`
--

/*!40000 ALTER TABLE `tbpagamento` DISABLE KEYS */;
INSERT INTO `tbpagamento` (`idpagamento`,`idtipopag`,`valor`) VALUES 
 (1,1,''),
 (2,2,''),
 (3,3,''),
 (4,4,''),
 (5,5,''),
 (6,6,'');
/*!40000 ALTER TABLE `tbpagamento` ENABLE KEYS */;


--
-- Definition of table `tbpessoas`
--

DROP TABLE IF EXISTS `tbpessoas`;
CREATE TABLE `tbpessoas` (
  `idpessoas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idgenero` int(10) unsigned NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `email` varchar(70) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idpessoas`,`idgenero`),
  KEY `fk_idgenero` (`idgenero`),
  CONSTRAINT `fk_idgenero` FOREIGN KEY (`idgenero`) REFERENCES `tbgenero` (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpessoas`
--

/*!40000 ALTER TABLE `tbpessoas` DISABLE KEYS */;
INSERT INTO `tbpessoas` (`idpessoas`,`idgenero`,`nome`,`sobrenome`,`email`,`senha`,`ativo`) VALUES 
 (1,2,'Geísa','Martins','geisa.martins@gmail.com','1234','A'),
 (2,1,'Igor Rafael','Santos','igor.alves@gmail.com','1234','A'),
 (3,1,'Widerson','Alves','widerson.alves@gmail.com','1234','A'),
 (4,1,'João','Silva','joao.silva@gmail.com','1234','A'),
 (5,2,'Maria','Santos','maria.santos@gmail.com','1234','A'),
 (6,3,'Alex','Garcia','alex.garcia@gmail.com','1234','A'),
 (7,1,'Pedro','Ferreira','pedro.ferreira@gmail.com','1234','A'),
 (8,2,'Carla','Gonçalves','carla.goncalves@gmail.com','1234','A'),
 (9,3,'Lucas','Rodrigues','lucas.rodrigues@gmail.com','1234','A'),
 (10,1,'Ana','Lima','ana.lima@gmail.com','1234','A'),
 (11,2,'Rafaela','Almeida','rafaela.almeida@gmail.com','1234','A'),
 (12,3,'Gustavo','Mendes','gustavo.mendes@gmail.com','1234','A'),
 (13,1,'Paulo','Costa','paulo.costa@gmail.com','1234','A'),
 (14,2,'Beatriz','Oliveira','beatriz.oliveira@gmail.com','1234','A'),
 (15,3,'Thiago','Sousa','thiago.sousa@gmail.com','1234','A'),
 (16,1,'Camila','Ribeiro','camila.ribeiro@gmail.com','1234','A'),
 (17,2,'André','Fernandes','andre.fernandes@gmail.com','1234','A'),
 (18,3,'Juliana','Martins','juliana.martins@gmail.com','1234','A'),
 (19,1,'Felipe','Pereira','felipe.pereira@gmail.com','1234','A'),
 (20,2,'Fernanda','Carvalho','fernanda.carvalho@gmail.com','1234','A'),
 (21,3,'Marcelo','Santana','marcelo.santana@gmail.com','1234','A'),
 (22,1,'Larissa','Nascimento','larissa.nascimento@gmail.com','1234','A'),
 (23,2,'Diego','Gomes','diego.gomes@gmail.com','1234','A'),
 (24,3,'Mariana','Alves','mariana.alves@gmail.com','1234','A'),
 (25,1,'Ricardo','Santos','ricardo.santos@gmail.com','1234','A'),
 (26,2,'Jéssica','Ferreira','jessica.ferreira@example','1234123412','A'),
 (27,3,'Gabriel','Silva','gabriel.silva@gmail.com','1234','A'),
 (28,1,'Carolina','Mendes','carolina.mendes@gmail.com','1234','A'),
 (29,2,'Lucas','Rocha','lucas.rocha@gmail.com','1234','A'),
 (30,3,'Patrícia','Campos','patricia.campos@gmail.com','1234','A'),
 (31,1,'Rodrigo','Oliveira','rodrigo.oliveira@gmail.com','1234','A'),
 (32,2,'Isabela','Fernandes','isabela.fernandes@gmail.com','1234','A'),
 (33,3,'Renato','Pereira','renato.pereira@gmail.com','1234','A'),
 (34,1,'Amanda','Carvalho','amanda.carvalho@gmail.com','1234','A'),
 (35,2,'Vitor','Sousa','vitor.sousa@gmail.com','1234','A'),
 (36,3,'Luiza','Silva','luiza.silva@gmail.com','1234','A'),
 (37,1,'Marcos','Ribeiro','marcos.ribeiro@gmail.com','1234','A'),
 (38,2,'Natália','Nascimento','natalia.nascimento@gmail.com','1234','A'),
 (39,3,'Rafael','Almeida','rafael.almeida@gmail.com','1234','A'),
 (40,1,'Fábio','Martins','fabio.martins@gmail.com','1234','A'),
 (41,2,'Laura','Santana','laura.santana@gmail.com','1234','A'),
 (42,3,'Guilherme','Campos','guilherme.campos@gmail.com','1234','A'),
 (43,1,'Sofia','Gomes','sofia.gomes@gmail.com','1234','A'),
 (44,2,'Miguel','Alves','miguel.alves@gmail.com','1234','A'),
 (45,3,'Alice','Rocha','alice.rocha@gmail.com','1234','A'),
 (46,1,'Carlos','Mendes','carlos.mendes@gmail.com','1234','A'),
 (47,2,'Sophia','Oliveira','sophia.oliveira@gmail.com','1234','A'),
 (48,3,'Henrique','Ferreira','henrique.ferreira@gmail.com','1234','A'),
 (49,1,'Larissa','Rodrigues','larissa.rodrigues@gmail.com','1234','A'),
 (50,2,'Pedro','Pereira','pedro.pereira@gmail.com','1234','A'),
 (51,3,'Vitória','Carvalho','vitoria.carvalho@gmail.com','1234','A'),
 (52,1,'Gustavo','Silva','gustavo.silva@gmail.com','1234','A'),
 (53,2,'Bianca','Nascimento','bianca.nascimento@gmail.com','1234','A'),
 (54,3,'Leonardo','Sousa','leonardo.sousa@gmail.com','1234','A'),
 (55,1,'Carolina','Ribeiro','carolina.ribeiro@gmail.com','1234','A'),
 (56,2,'Rafael','Fernandes','rafael.fernandes@gmail.com','1234','A'),
 (57,3,'Gabriela','Martins','gabriela.martins@gmail.com','1234','A'),
 (58,1,'Lucas','Pereira','lucas.pereira@gmail.com','1234','A'),
 (59,2,'Camila','Carvalho','camila.carvalho@gmail.com','1234','A'),
 (60,3,'Arthur','Rocha','arthur.rocha@gmail.com','1234','A'),
 (61,1,'Juliana','Mendes','juliana.mendes@gmail.com','1234','A'),
 (62,2,'Gustavo','Silva','gustavo.silva1@gmail.com','1234','A'),
 (63,3,'Carolina','Ferreira','carolina.ferreira@gmail.com','1234','A'),
 (64,1,'Fernanda','Santos','fernanda.santos@gmail.com','1234','A'),
 (65,2,'Ricardo','Nascimento','ricardo.nascimento@gmail.com','1234','A'),
 (66,3,'Amanda','Pereira','amanda.pereira@gmail.com','1234','A'),
 (67,1,'Lucas','Almeida','lucas.almeida@gmail.com','1234','A'),
 (68,2,'Mariana','Campos','mariana.campos@gmail.com','1234','A'),
 (69,3,'Matheus','Ribeiro','matheus.ribeiro@gmail.com','1234','A'),
 (70,1,'Natália','Sousa','natalia.sousa@gmail.com','1234','A'),
 (71,2,'Gabriel','Fernandes','gabriel.fernandes@gmail.com','1234','A'),
 (72,3,'Isabela','Martins','isabela.martins@gmail.com','1234','A'),
 (73,1,'Pedro','Rocha','pedro.rocha@gmail.com','1234','A'),
 (74,2,'Larissa','Carvalho','larissa.carvalho@gmail.com','1234','A'),
 (75,3,'Rafael','Silva','rafael.silva@gmail.com','1234','A'),
 (76,1,'Vitória','Pereira','vitoria.pereira@gmail.com','1234','A'),
 (77,2,'Leonardo','Nascimento','leonardo.nascimento@gmail.com','1234','A'),
 (78,3,'Bianca','Campos','bianca.campos@gmail.com','1234','A'),
 (79,1,'Gustavo','Ribeiro','gustavo.ribeiro@gmail.com','1234','A'),
 (80,2,'Mariana','Fernandes','mariana.fernandes@gmail.com','1234','A'),
 (81,3,'Matheus','Martins','matheus.martins@gmail.com','1234','A'),
 (82,1,'Natália','Silva','natalia.silva@gmail.com','1234','A'),
 (83,2,'Gabriel','Pereira','gabriel.pereira@gmail.com','1234','A'),
 (84,3,'Isabela','Rocha','isabela.rocha@gmail.com','1234','A'),
 (85,1,'Pedro','Carvalho','pedro.carvalho@gmail.com','1234','A'),
 (86,2,'Larissa','Santos','larissa.santos@gmail.com','1234','A'),
 (87,3,'Rafael','Almeida','rafael.almeida@gmail.com','1234','A'),
 (88,1,'Vitória','Campos','vitoria.campos@gmail.com','1234','A'),
 (89,2,'Leonardo','Ribeiro','leonardo.ribeiro@gmail.com','1234','A'),
 (90,3,'Bianca','Sousa','bianca.sousa@gmail.com','1234','A'),
 (91,1,'Gustavo','Fernandes','gustavo.fernandes@gmail.com','1234','A'),
 (92,2,'Mariana','Martins','mariana.martins@gmail.com','1234','A'),
 (93,3,'Matheus','Silva','matheus.silva@gmail.com','1234','A'),
 (94,1,'Natália','Pereira','natalia.pereira@gmail.com','1234','A'),
 (95,2,'Gabriel','Rocha','gabriel.rocha@gmail.com','1234','A'),
 (96,3,'Isabela','Carvalho','isabela.carvalho@gmail.com','1234','A'),
 (97,1,'Pedro','Santos','pedro.santos@gmail.com','1234','A'),
 (98,2,'Larissa','Almeida','larissa.almeida@gmail.com','1234','A'),
 (99,3,'Rafael','Campos','rafael.campos@gmail.com','1234','A'),
 (100,1,'Vitória','Ribeiro','vitoria.ribeiro@gmail.com','1234','A'),
 (101,2,'Leonardo','Sousa','leonardo.sousa@gmail.com','1234','A'),
 (102,3,'Bianca','Fernandes','bianca.fernandes@gmail.com','1234','A'),
 (103,1,'Gustavo','Martins','gustavo.martins@gmail.com','1234','A'),
 (104,2,'Mariana','Silva','mariana.silva@gmail.com','1234','A'),
 (105,3,'Matheus','Pereira','matheus.pereira@gmail.com','1234','A'),
 (106,1,'Natália','Rocha','natalia.rocha@gmail.com','1234','A'),
 (107,2,'Gabriel','Carvalho','gabriel.carvalho@gmail.com','1234','A'),
 (108,3,'Isabela','Santos','isabela.santos@gmail.com','1234','A'),
 (109,1,'Pedro','Almeida','pedro.almeida@gmail.com','1234','A'),
 (110,2,'Larissa','Campos','larissa.campos@gmail.com','1234','A'),
 (111,3,'Rafael','Ribeiro','rafael.ribeiro@gmail.com','1234','A'),
 (112,1,'Vitória','Sousa','vitoria.sousa@gmail.com','1234','A'),
 (113,2,'Leonardo','Fernandes','leonardo.fernandes@gmail.com','1234','A'),
 (114,3,'Bianca','Martins','bianca.martins@gmail.com','1234','A'),
 (115,1,'Gustavo','Silva','gustavo.silva@gmail.com','1234','A'),
 (116,2,'Mariana','Pereira','mariana.pereira@gmail.com','1234','A'),
 (117,3,'Matheus','Rocha','matheus.rocha@gmail.com','1234','A'),
 (118,1,'Natália','Carvalho','natalia.carvalho@gmail.com','1234','A'),
 (119,2,'Gabriel','Santos','gabriel.santos@gmail.com','1234','A'),
 (120,3,'Isabela','Almeida','isabela.almeida@gmail.com','1234','A'),
 (121,1,'Pedro','Campos','pedro.campos@gmail.com','1234','A'),
 (122,2,'Larissa','Ribeiro','larissa.ribeiro@gmail.com','1234','A'),
 (123,3,'Rafael','Sousa','rafael.sousa@gmail.com','1234','A'),
 (124,1,'Vitória','Fernandes','vitoria.fernandes@gmail.com','1234','A'),
 (125,2,'Leonardo','Martins','leonardo.martins@gmail.com','1234','A'),
 (126,3,'Bianca','Silva','bianca.silva@gmail.com','1234','A'),
 (127,1,'Gustavo','Pereira','gustavo.pereira@gmail.com','1234','A'),
 (128,2,'Mariana','Rocha','mariana.rocha@gmail.com','1234','A'),
 (129,3,'Matheus','Carvalho','matheus.carvalho@gmail.com','1234','A'),
 (130,1,'Natália','Santos','natalia.santos@gmail.com','1234','A'),
 (131,2,'Gabriel','Almeida','gabriel.almeida@gmail.com','1234','A'),
 (132,3,'Isabela','Campos','isabela.campos@gmail.com','1234','A'),
 (133,1,'Pedro','Ribeiro','pedro.ribeiro@gmail.com','1234','A'),
 (134,2,'Larissa','Sousa','larissa.sousa@gmail.com','1234','A'),
 (135,3,'Rafael','Fernandes','rafael.fernandes@gmail.com','1234','A'),
 (136,1,'Vitória','Martins','vitoria.martins@gmail.com','1234','A'),
 (137,2,'Leonardo','Silva','leonardo.silva@gmail.com','1234','A'),
 (138,3,'Bianca','Pereira','bianca.pereira@gmail.com','1234','A'),
 (139,1,'Gustavo','Rocha','gustavo.rocha@gmail.com','1234','A'),
 (140,2,'Mariana','Carvalho','mariana.carvalho@gmail.com','1234','A'),
 (141,3,'Matheus','Santos','matheus.santos@gmail.com','1234','A'),
 (142,1,'Natália','Almeida','natalia.almeida@gmail.com','1234','A'),
 (143,2,'Gabriel','Campos','gabriel.campos@gmail.com','1234','A'),
 (144,3,'Isabela','Ribeiro','isabela.ribeiro@gmail.com','1234','A'),
 (145,1,'Pedro','Sousa','pedro.sousa@gmail.com','1234','A'),
 (146,2,'Larissa','Fernandes','larissa.fernandes@gmail.com','1234','A'),
 (147,3,'Rafael','Martins','rafael.martins@gmail.com','1234','A'),
 (148,1,'Vitória','Silva','vitoria.silva@gmail.com','1234','A'),
 (149,2,'Leonardo','Pereira','leonardo.pereira@gmail.com','1234','A'),
 (150,3,'Bianca','Rocha','bianca.rocha@gmail.com','1234','A'),
 (151,1,'Gustavo','Carvalho','gustavo.carvalho@gmail.com','1234','A'),
 (152,2,'Mariana','Santos','mariana.santos@gmail.com','1234','A'),
 (153,3,'Matheus','Almeida','matheus.almeida@gmail.com','1234','A'),
 (154,1,'Natália','Campos','natalia.campos@gmail.com','1234','A'),
 (155,2,'Gabriel','Ribeiro','gabriel.ribeiro@gmail.com','1234','A'),
 (156,3,'Isabela','Sousa','isabela.sousa@gmail.com','1234','A'),
 (157,1,'Pedro','Fernandes','pedro.fernandes@gmail.com','1234','A'),
 (158,2,'Larissa','Martins','larissa.martins@gmail.com','1234','A'),
 (159,3,'Rafael','Silva','rafael.silva@gmail.com','1234','A'),
 (160,1,'Vitória','Pereira','vitoria.pereira@gmail.com','1234','A'),
 (161,2,'Leonardo','Rocha','leonardo.rocha@gmail.com','1234','A'),
 (162,3,'Bianca','Carvalho','bianca.carvalho@gmail.com','1234','A'),
 (163,1,'Gustavo','Santos','gustavo.santos@gmail.com','1234','A'),
 (164,2,'Mariana','Almeida','mariana.almeida@gmail.com','1234','A'),
 (165,3,'Matheus','Campos','matheus.campos@gmail.com','1234','A'),
 (166,1,'Natália','Ribeiro','natalia.ribeiro@gmail.com','1234','A'),
 (167,2,'Gabriel','Sousa','gabriel.sousa@gmail.com','1234','A'),
 (168,3,'Isabela','Fernandes','isabela.fernandes@gmail.com','1234','A'),
 (169,1,'Pedro','Martins','pedro.martins@gmail.com','1234','A'),
 (170,2,'Larissa','Silva','larissa.silva@gmail.com','1234','A'),
 (171,3,'Rafael','Pereira','rafael.pereira@gmail.com','1234','A'),
 (172,1,'Vitória','Rocha','vitoria.rocha@gmail.com','1234','A'),
 (173,2,'Leonardo','Carvalho','leonardo.carvalho@gmail.com','1234','A'),
 (174,3,'Bianca','Santos','bianca.santos@gmail.com','1234','A'),
 (175,1,'Gustavo','Almeida','gustavo.almeida@gmail.com','1234','A'),
 (176,2,'Mariana','Campos','mariana.campos@gmail.com','1234','A'),
 (177,3,'Matheus','Ribeiro','matheus.ribeiro@gmail.com','1234','A'),
 (178,1,'Natália','Sousa','natalia.sousa@gmail.com','1234','A'),
 (179,2,'Gabriel','Fernandes','gabriel.fernandes@gmail.com','1234','A'),
 (180,3,'Isabela','Martins','isabela.martins@gmail.com','1234','A'),
 (181,1,'Pedro','Silva','pedro.silva@gmail.com','1234','A'),
 (182,2,'Larissa','Pereira','larissa.pereira@gmail.com','1234','A'),
 (183,3,'Rafael','Rocha','rafael.rocha@gmail.com','1234','A'),
 (184,1,'Vitória','Carvalho','vitoria.carvalho@gmail.com','1234','A'),
 (185,2,'Leonardo','Santos','leonardo.santos@gmail.com','1234','A'),
 (186,3,'Bianca','Almeida','bianca.almeida@gmail.com','1234','A'),
 (187,1,'Gustavo','Campos','gustavo.campos@gmail.com','1234','A'),
 (188,3,'Matheus','Ribeiro','matheus.ribeiro@gmail.com','1234','A'),
 (189,1,'Natália','Sousa','natalia.sousa@gmail.com','1234','A'),
 (190,2,'Gabriel','Fernandes','gabriel.fernandes@gmail.com','1234','A'),
 (191,3,'Isabela','Martins','isabela.martins@gmail.com','1234','A'),
 (192,1,'Pedro','Silva','pedro.silva@gmail.com','1234','A'),
 (193,2,'Larissa','Pereira','larissa.pereira@gmail.com','1234','A'),
 (194,3,'Rafael','Rocha','rafael.rocha@gmail.com','1234','A'),
 (195,1,'Vitória','Carvalho','vitoria.carvalho@gmail.com','1234','A'),
 (196,2,'Leonardo','Santos','leonardo.santos@gmail.com','1234','A'),
 (197,3,'Bianca','Almeida','bianca.almeida@gmail.com','1234','A'),
 (198,1,'Gustavo','Campos','gustavo.campos@gmail.com','1234','A'),
 (199,2,'Mariana','Ribeiro','mariana.ribeiro@gmail.com','1234','A'),
 (200,2,'Ana Luísa','Alves','ana.alves@gmail.com','1234','A');
/*!40000 ALTER TABLE `tbpessoas` ENABLE KEYS */;


--
-- Definition of table `tbtipofesta`
--

DROP TABLE IF EXISTS `tbtipofesta`;
CREATE TABLE `tbtipofesta` (
  `idtipofesta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfornecedor` int(10) unsigned NOT NULL,
  `tipofesta` varchar(50) NOT NULL,
  PRIMARY KEY (`idtipofesta`,`idfornecedor`),
  KEY `fk_idfornecedor_idtipofesta` (`idfornecedor`),
  CONSTRAINT `fk_idfornecedor_idtipofesta` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbtipofesta`
--

/*!40000 ALTER TABLE `tbtipofesta` DISABLE KEYS */;
INSERT INTO `tbtipofesta` (`idtipofesta`,`idfornecedor`,`tipofesta`) VALUES 
 (1,2,'Aniversário'),
 (2,3,'Casamento'),
 (3,7,'Halloween'),
 (4,8,'Dia dos Namorados'),
 (5,11,'Ano Novo'),
 (6,1,'Festa Junina'),
 (7,5,'Páscoa'),
 (8,1,'Chá de Bebê');
/*!40000 ALTER TABLE `tbtipofesta` ENABLE KEYS */;


--
-- Definition of table `tbtipopag`
--

DROP TABLE IF EXISTS `tbtipopag`;
CREATE TABLE `tbtipopag` (
  `idtipopag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipopag` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipopag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbtipopag`
--

/*!40000 ALTER TABLE `tbtipopag` DISABLE KEYS */;
INSERT INTO `tbtipopag` (`idtipopag`,`tipopag`) VALUES 
 (1,'Pix'),
 (2,'Boleto'),
 (3,'Crédito'),
 (4,'Débito'),
 (5,'Dinheiro'),
 (6,'PayPal');
/*!40000 ALTER TABLE `tbtipopag` ENABLE KEYS */;


--
-- Definition of table `tbtrab`
--

DROP TABLE IF EXISTS `tbtrab`;
CREATE TABLE `tbtrab` (
  `idtrab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `areaint` varchar(60) NOT NULL,
  `mensagem` text DEFAULT NULL,
  PRIMARY KEY (`idtrab`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbtrab`
--

/*!40000 ALTER TABLE `tbtrab` DISABLE KEYS */;
INSERT INTO `tbtrab` (`idtrab`,`nome`,`email`,`telefone`,`areaint`,`mensagem`) VALUES 
 (1,'Roberson','rob@email.com','(12) 9 1234-1234','Programador','Procuro uma vaga temporária.'),
 (2,'Renato','renatron@email.com','(13) 9 1234-1234','Estoque','fui obrigado'),
 (3,'Rochelle','rochelle.eu@email.com','(32) 9 1234-1234','Cardápio','queria ser rica, mas não sou, então estou humildemente procurando emprego aqui'),
 (4,'Rita','irrita@email.com','(25) 9 1234-1234','Decorações','Sou boa com as mãos'),
 (5,'Richarlison','riehorichas@email.com','(4) 9 1234-1234','Clientela','Nunca decepciono');
/*!40000 ALTER TABLE `tbtrab` ENABLE KEYS */;

--
-- Create schema dblojateste
--

CREATE DATABASE IF NOT EXISTS dblojateste;
USE dblojateste;

--
-- Definition of table `tbestadocivil`
--

DROP TABLE IF EXISTS `tbestadocivil`;
CREATE TABLE `tbestadocivil` (
  `idestadocivil` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estadocivil` varchar(12) NOT NULL,
  PRIMARY KEY (`idestadocivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbestadocivil`
--

/*!40000 ALTER TABLE `tbestadocivil` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbestadocivil` ENABLE KEYS */;


--
-- Definition of table `tbfuncionario`
--

DROP TABLE IF EXISTS `tbfuncionario`;
CREATE TABLE `tbfuncionario` (
  `idfuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) unsigned NOT NULL,
  `idprofissao` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idfuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfuncionario`
--

/*!40000 ALTER TABLE `tbfuncionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfuncionario` ENABLE KEYS */;


--
-- Definition of table `tbgenero`
--

DROP TABLE IF EXISTS `tbgenero`;
CREATE TABLE `tbgenero` (
  `idgenero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genero` varchar(9) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbgenero`
--

/*!40000 ALTER TABLE `tbgenero` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbgenero` ENABLE KEYS */;


--
-- Definition of table `tbpessoas`
--

DROP TABLE IF EXISTS `tbpessoas`;
CREATE TABLE `tbpessoas` (
  `idpessoa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idgenero` int(10) unsigned NOT NULL,
  `idestadocivil` int(10) unsigned NOT NULL,
  `nome` varchar(45) NOT NULL,
  `idade` int(10) unsigned NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpessoas`
--

/*!40000 ALTER TABLE `tbpessoas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpessoas` ENABLE KEYS */;


--
-- Definition of table `tbprofissao`
--

DROP TABLE IF EXISTS `tbprofissao`;
CREATE TABLE `tbprofissao` (
  `idprofissao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profissao` varchar(40) NOT NULL,
  PRIMARY KEY (`idprofissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbprofissao`
--

/*!40000 ALTER TABLE `tbprofissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbprofissao` ENABLE KEYS */;

--
-- Create schema dblojinha
--

CREATE DATABASE IF NOT EXISTS dblojinha;
USE dblojinha;

--
-- Definition of table `tbadmissao`
--

DROP TABLE IF EXISTS `tbadmissao`;
CREATE TABLE `tbadmissao` (
  `idadmissao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfuncionario` int(10) unsigned NOT NULL,
  `admissao` datetime DEFAULT NULL,
  `demissao` datetime DEFAULT NULL,
  PRIMARY KEY (`idadmissao`,`idfuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbadmissao`
--

/*!40000 ALTER TABLE `tbadmissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbadmissao` ENABLE KEYS */;


--
-- Definition of table `tbbaixaestoque`
--

DROP TABLE IF EXISTS `tbbaixaestoque`;
CREATE TABLE `tbbaixaestoque` (
  `idbaixaestoque` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idestoque` int(10) unsigned NOT NULL,
  `idcarrinho` int(10) unsigned NOT NULL,
  `categoria` varchar(25) NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  `databe` datetime DEFAULT NULL,
  PRIMARY KEY (`idbaixaestoque`,`idcarrinho`,`idestoque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbaixaestoque`
--

/*!40000 ALTER TABLE `tbbaixaestoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbbaixaestoque` ENABLE KEYS */;


--
-- Definition of table `tbcarrinho`
--

DROP TABLE IF EXISTS `tbcarrinho`;
CREATE TABLE `tbcarrinho` (
  `idcarrinho` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) unsigned NOT NULL,
  `idpagamento` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcarrinho`,`idpessoa`,`idpagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcarrinho`
--

/*!40000 ALTER TABLE `tbcarrinho` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcarrinho` ENABLE KEYS */;


--
-- Definition of table `tbcarrinhoproduto`
--

DROP TABLE IF EXISTS `tbcarrinhoproduto`;
CREATE TABLE `tbcarrinhoproduto` (
  `idcarrinhoproduto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcarrinho` int(10) unsigned NOT NULL,
  `idestoque` int(10) unsigned NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcarrinhoproduto`,`idcarrinho`,`idestoque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcarrinhoproduto`
--

/*!40000 ALTER TABLE `tbcarrinhoproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcarrinhoproduto` ENABLE KEYS */;


--
-- Definition of table `tbcontato`
--

DROP TABLE IF EXISTS `tbcontato`;
CREATE TABLE `tbcontato` (
  `idcontato` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) unsigned NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idcontato`,`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcontato`
--

/*!40000 ALTER TABLE `tbcontato` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcontato` ENABLE KEYS */;


--
-- Definition of table `tbemail`
--

DROP TABLE IF EXISTS `tbemail`;
CREATE TABLE `tbemail` (
  `idemail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) unsigned NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`idemail`,`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbemail`
--

/*!40000 ALTER TABLE `tbemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbemail` ENABLE KEYS */;


--
-- Definition of table `tbendereco`
--

DROP TABLE IF EXISTS `tbendereco`;
CREATE TABLE `tbendereco` (
  `idendereco` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) unsigned NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `numero` int(5) unsigned DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `complemento` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idendereco`,`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbendereco`
--

/*!40000 ALTER TABLE `tbendereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbendereco` ENABLE KEYS */;


--
-- Definition of table `tbestadocivil`
--

DROP TABLE IF EXISTS `tbestadocivil`;
CREATE TABLE `tbestadocivil` (
  `idestadocivil` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estadocivil` varchar(12) NOT NULL,
  PRIMARY KEY (`idestadocivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbestadocivil`
--

/*!40000 ALTER TABLE `tbestadocivil` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbestadocivil` ENABLE KEYS */;


--
-- Definition of table `tbestoque`
--

DROP TABLE IF EXISTS `tbestoque`;
CREATE TABLE `tbestoque` (
  `idestoque` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproduto` int(10) unsigned NOT NULL,
  `categoria` varchar(25) NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  `datae` datetime DEFAULT NULL,
  PRIMARY KEY (`idestoque`,`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbestoque`
--

/*!40000 ALTER TABLE `tbestoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbestoque` ENABLE KEYS */;


--
-- Definition of table `tbfotoproduto`
--

DROP TABLE IF EXISTS `tbfotoproduto`;
CREATE TABLE `tbfotoproduto` (
  `idfotoproduto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproduto` int(10) unsigned NOT NULL,
  `foto` longblob NOT NULL,
  PRIMARY KEY (`idfotoproduto`,`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfotoproduto`
--

/*!40000 ALTER TABLE `tbfotoproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfotoproduto` ENABLE KEYS */;


--
-- Definition of table `tbfuncionario`
--

DROP TABLE IF EXISTS `tbfuncionario`;
CREATE TABLE `tbfuncionario` (
  `idfuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) unsigned NOT NULL,
  `idprofissao` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idfuncionario`,`idpessoa`,`idprofissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfuncionario`
--

/*!40000 ALTER TABLE `tbfuncionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfuncionario` ENABLE KEYS */;


--
-- Definition of table `tbgenero`
--

DROP TABLE IF EXISTS `tbgenero`;
CREATE TABLE `tbgenero` (
  `idgenero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genero` varchar(9) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbgenero`
--

/*!40000 ALTER TABLE `tbgenero` DISABLE KEYS */;
INSERT INTO `tbgenero` (`idgenero`,`genero`) VALUES 
 (1,'feminino'),
 (2,'masculino'),
 (3,'neutro');
/*!40000 ALTER TABLE `tbgenero` ENABLE KEYS */;


--
-- Definition of table `tbobservacao`
--

DROP TABLE IF EXISTS `tbobservacao`;
CREATE TABLE `tbobservacao` (
  `idobservacao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) unsigned NOT NULL,
  `observacao` longtext DEFAULT NULL,
  PRIMARY KEY (`idobservacao`,`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbobservacao`
--

/*!40000 ALTER TABLE `tbobservacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbobservacao` ENABLE KEYS */;


--
-- Definition of table `tbpagamento`
--

DROP TABLE IF EXISTS `tbpagamento`;
CREATE TABLE `tbpagamento` (
  `idpagamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipopagamento` int(10) unsigned NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `datapag` datetime DEFAULT NULL,
  PRIMARY KEY (`idpagamento`,`idtipopagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpagamento`
--

/*!40000 ALTER TABLE `tbpagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpagamento` ENABLE KEYS */;


--
-- Definition of table `tbpessoas`
--

DROP TABLE IF EXISTS `tbpessoas`;
CREATE TABLE `tbpessoas` (
  `idpessoa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idgenero` int(10) unsigned NOT NULL,
  `idestadocivil` int(10) unsigned NOT NULL,
  `nome` varchar(45) NOT NULL,
  `idade` int(3) unsigned NOT NULL,
  `cpf` varchar(14) NOT NULL,
  PRIMARY KEY (`idpessoa`,`idgenero`,`idestadocivil`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpessoas`
--

/*!40000 ALTER TABLE `tbpessoas` DISABLE KEYS */;
INSERT INTO `tbpessoas` (`idpessoa`,`idgenero`,`idestadocivil`,`nome`,`idade`,`cpf`) VALUES 
 (1,1,1,'Ana Lu',18,'111.111.111-11'),
 (2,2,1,'José',19,'222.222.222-22'),
 (3,1,1,'Giovana',17,'111.111.111-11'),
 (4,1,1,'Vitória',17,'222.222.222-22'),
 (5,1,1,'Geísa',20,'111.111.111-11'),
 (6,1,1,'Tathiana',17,'222.222.222-22'),
 (7,2,1,'Miguel',18,'111.111.111-11'),
 (8,2,1,'Gabriel',18,'222.222.222-22'),
 (9,2,1,'Kauã',19,'111.111.111-11'),
 (10,2,2,'Luciano',47,'222.222.222-22'),
 (11,2,1,'Felps',28,'111.111.111-11'),
 (12,2,1,'Diogo',18,'222.222.222-22'),
 (13,2,1,'Hotnyel',18,'111.111.111-11'),
 (14,1,1,'Ana Clara',21,'222.222.222-22'),
 (15,1,1,'Ana Beatriz',19,'111.111.111-11'),
 (16,2,1,'Rafael',22,'222.222.222-22'),
 (17,2,1,'Erick',37,'111.111.111-11'),
 (18,2,1,'Kauan',18,'222.222.222-22'),
 (19,3,1,'Teclado',1,'111.111.111-11'),
 (20,3,1,'Zero_Grau',1,'222.222.222-22'),
 (21,3,1,'Dandara',5,'111.111.111-11'),
 (22,3,1,'Ayla',1,'222.222.222-22'),
 (23,3,1,'Felicia',3,'111.111.111-11'),
 (24,3,1,'Trigo',2,'222.222.222-22'),
 (25,3,1,'Mulekinha',2,'111.111.111-11'),
 (26,3,1,'Churro',3,'222.222.222-22'),
 (27,3,1,'Janjão',13,'111.111.111-11'),
 (28,3,1,'Repolho',5,'222.222.222-22');
/*!40000 ALTER TABLE `tbpessoas` ENABLE KEYS */;


--
-- Definition of table `tbproduto`
--

DROP TABLE IF EXISTS `tbproduto`;
CREATE TABLE `tbproduto` (
  `idproduto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produto` varchar(64) NOT NULL,
  `preco` decimal(10,0) unsigned NOT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbproduto`
--

/*!40000 ALTER TABLE `tbproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbproduto` ENABLE KEYS */;


--
-- Definition of table `tbprofissao`
--

DROP TABLE IF EXISTS `tbprofissao`;
CREATE TABLE `tbprofissao` (
  `idprofissao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profissao` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idprofissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbprofissao`
--

/*!40000 ALTER TABLE `tbprofissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbprofissao` ENABLE KEYS */;


--
-- Definition of table `tbtipopagamento`
--

DROP TABLE IF EXISTS `tbtipopagamento`;
CREATE TABLE `tbtipopagamento` (
  `idtipopagamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipopagamento` varchar(15) NOT NULL,
  PRIMARY KEY (`idtipopagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbtipopagamento`
--

/*!40000 ALTER TABLE `tbtipopagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbtipopagamento` ENABLE KEYS */;

--
-- Create schema dbpetshop
--

CREATE DATABASE IF NOT EXISTS dbpetshop;
USE dbpetshop;

--
-- Definition of table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `IdCliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(50) NOT NULL,
  `Documento` varchar(20) NOT NULL,
  PRIMARY KEY (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cliente`
--

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`IdCliente`,`Cliente`,`Documento`) VALUES 
 (1,'Olivia Emanuelly','782.784.916-40'),
 (2,'Stefany Aurora','799.339.766-99'),
 (3,'Clara Lívia','782.784.916-60'),
 (4,'Sarah Stella','562.404.516-65'),
 (5,'Enzo Manuel Porto','102.121.666-62'),
 (6,'André Igor Moreira','886.770.446-04');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


--
-- Definition of table `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `Idgenero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genero` varchar(50) NOT NULL,
  PRIMARY KEY (`Idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genero`
--

/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` (`Idgenero`,`genero`) VALUES 
 (1,'Macho'),
 (2,'Femea'),
 (3,'Femea');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;


--
-- Definition of table `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `IdPet` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdCliente` int(10) unsigned NOT NULL,
  `IdRaca` int(10) unsigned NOT NULL,
  `Idgenero` int(10) unsigned NOT NULL,
  `IdtipoPet` int(10) unsigned NOT NULL,
  `Pet` varchar(50) NOT NULL,
  PRIMARY KEY (`IdPet`,`IdCliente`,`IdRaca`,`Idgenero`,`IdtipoPet`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet`
--

/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` (`IdPet`,`IdCliente`,`IdRaca`,`Idgenero`,`IdtipoPet`,`Pet`) VALUES 
 (1,1,1,2,1,'Fonala'),
 (2,2,5,1,2,'Beidel'),
 (3,1,3,2,3,'Guisol'),
 (4,4,4,2,1,'Lua'),
 (5,3,3,2,3,'Morena'),
 (6,1,6,1,1,'Dogão'),
 (7,5,5,2,2,'Morena'),
 (8,6,6,1,1,'Rigaos'),
 (9,2,3,2,3,'Lua'),
 (10,1,5,2,2,'Xuruci'),
 (11,3,1,2,1,'Querida'),
 (12,2,3,2,3,'Mada'),
 (13,5,5,2,2,'Solange'),
 (14,4,6,1,1,'Rafa'),
 (15,2,1,1,1,'Guisol'),
 (16,4,6,2,1,'Luana');
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;


--
-- Definition of table `raca`
--

DROP TABLE IF EXISTS `raca`;
CREATE TABLE `raca` (
  `IdRaca` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Raca` varchar(50) NOT NULL,
  PRIMARY KEY (`IdRaca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raca`
--

/*!40000 ALTER TABLE `raca` DISABLE KEYS */;
INSERT INTO `raca` (`IdRaca`,`Raca`) VALUES 
 (1,'Shih Tzu'),
 (2,'Golden retriever'),
 (3,'Ararauna'),
 (4,'Pinscher'),
 (5,'Persa'),
 (6,'Yorkshire');
/*!40000 ALTER TABLE `raca` ENABLE KEYS */;


--
-- Definition of table `tipopet`
--

DROP TABLE IF EXISTS `tipopet`;
CREATE TABLE `tipopet` (
  `IdtipoPet` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoPet` varchar(50) NOT NULL,
  PRIMARY KEY (`IdtipoPet`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipopet`
--

/*!40000 ALTER TABLE `tipopet` DISABLE KEYS */;
INSERT INTO `tipopet` (`IdtipoPet`,`TipoPet`) VALUES 
 (1,'Cães'),
 (2,'Gatos'),
 (3,'Aves');
/*!40000 ALTER TABLE `tipopet` ENABLE KEYS */;

--
-- Create schema dbprodmarca
--

CREATE DATABASE IF NOT EXISTS dbprodmarca;
USE dbprodmarca;

--
-- Definition of table `tbmarca`
--

DROP TABLE IF EXISTS `tbmarca`;
CREATE TABLE `tbmarca` (
  `idmarca` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) NOT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbmarca`
--

/*!40000 ALTER TABLE `tbmarca` DISABLE KEYS */;
INSERT INTO `tbmarca` (`idmarca`,`marca`) VALUES 
 (1,'nike'),
 (2,'garoto'),
 (3,'samsung'),
 (4,'hd'),
 (5,'pichau'),
 (6,'arara'),
 (7,'jacaré'),
 (8,'mosca');
/*!40000 ALTER TABLE `tbmarca` ENABLE KEYS */;


--
-- Definition of table `tbproduto`
--

DROP TABLE IF EXISTS `tbproduto`;
CREATE TABLE `tbproduto` (
  `idproduto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmarca` int(10) unsigned NOT NULL,
  `produto` varchar(45) NOT NULL,
  PRIMARY KEY (`idproduto`,`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbproduto`
--

/*!40000 ALTER TABLE `tbproduto` DISABLE KEYS */;
INSERT INTO `tbproduto` (`idproduto`,`idmarca`,`produto`) VALUES 
 (1,8,'lapis'),
 (2,7,'brinco'),
 (3,6,'boneca'),
 (4,5,'xicara'),
 (5,4,'boné'),
 (6,3,'cx sorvete'),
 (7,2,'bicicleta'),
 (8,1,'cx biscoito'),
 (9,1,'roda'),
 (10,1,'corda'),
 (11,2,'carrinho'),
 (12,2,'leite'),
 (13,2,'chocolate'),
 (14,3,'cadeira'),
 (15,3,'carteira'),
 (16,4,'óculos'),
 (17,5,'anel'),
 (18,3,'celular'),
 (19,5,'monitor'),
 (20,7,'cama'),
 (21,8,'quadro'),
 (22,8,'sofá'),
 (23,8,'cortina'),
 (24,1,'apontador');
/*!40000 ALTER TABLE `tbproduto` ENABLE KEYS */;

--
-- Create schema dbpizzaria
--

CREATE DATABASE IF NOT EXISTS dbpizzaria;
USE dbpizzaria;

--
-- Definition of table `tbavaliacoes`
--

DROP TABLE IF EXISTS `tbavaliacoes`;
CREATE TABLE `tbavaliacoes` (
  `idavaliacoes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoas` int(10) unsigned NOT NULL,
  `comentario` longtext NOT NULL,
  `profissao` varchar(60) NOT NULL,
  `estrelas` int(10) unsigned NOT NULL,
  `imagem` varchar(145) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idavaliacoes`,`idpessoas`) USING BTREE,
  KEY `FK_idpessoas_idavaliacoes` (`idpessoas`),
  CONSTRAINT `FK_idpessoas_idavaliacoes` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbavaliacoes`
--

/*!40000 ALTER TABLE `tbavaliacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbavaliacoes` ENABLE KEYS */;


--
-- Definition of table `tbbanner`
--

DROP TABLE IF EXISTS `tbbanner`;
CREATE TABLE `tbbanner` (
  `idbanner` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagem` varchar(145) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `descricao` longtext NOT NULL,
  `video` longtext NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idbanner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbanner`
--

/*!40000 ALTER TABLE `tbbanner` DISABLE KEYS */;
INSERT INTO `tbbanner` (`idbanner`,`imagem`,`titulo`,`descricao`,`video`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'https://i.pinimg.com/originals/e6/97/d9/e697d97e0496c5b50f3e17d70f6b1745.jpg','Golden Maknae','Integrante mais novo do grupo popular de K-POP, BTS, Jeon Jungkook é o chamado Golden Maknae por ser exepcional em tudo que faz, sendo reconhecido tanto dentro quanto fora da bolha.','https://www.youtube.com/watch?v=djV11Xbc914','2023-04-28 00:00:00','2023-06-01 21:23:46','A');
/*!40000 ALTER TABLE `tbbanner` ENABLE KEYS */;


--
-- Definition of table `tbcard`
--

DROP TABLE IF EXISTS `tbcard`;
CREATE TABLE `tbcard` (
  `idcard` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(145) DEFAULT NULL,
  `titulo` varchar(120) NOT NULL,
  `descricao` longtext NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcard`
--

/*!40000 ALTER TABLE `tbcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcard` ENABLE KEYS */;


--
-- Definition of table `tbcardapio`
--

DROP TABLE IF EXISTS `tbcardapio`;
CREATE TABLE `tbcardapio` (
  `idcardapio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmenucardapio` int(10) unsigned NOT NULL,
  `imagem` varchar(145) NOT NULL,
  `tituloimg` varchar(60) NOT NULL,
  `descimg` text NOT NULL,
  `preco` double NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idcardapio`,`idmenucardapio`) USING BTREE,
  KEY `FK_idmenucardapio_idcardapio` (`idmenucardapio`),
  CONSTRAINT `FK_idmenucardapio_idcardapio` FOREIGN KEY (`idmenucardapio`) REFERENCES `tbmenucardapio` (`idmenucardapio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcardapio`
--

/*!40000 ALTER TABLE `tbcardapio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcardapio` ENABLE KEYS */;


--
-- Definition of table `tbcontatar`
--

DROP TABLE IF EXISTS `tbcontatar`;
CREATE TABLE `tbcontatar` (
  `idcontatar` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `endereco` varchar(200) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(80) NOT NULL,
  `horarios` text NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idcontatar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcontatar`
--

/*!40000 ALTER TABLE `tbcontatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcontatar` ENABLE KEYS */;


--
-- Definition of table `tbequipe`
--

DROP TABLE IF EXISTS `tbequipe`;
CREATE TABLE `tbequipe` (
  `idequipe` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfuncionarios` int(10) unsigned NOT NULL,
  `descricao` longtext NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idequipe`,`idfuncionarios`),
  KEY `FK_idfuncionarios_idequipe` (`idfuncionarios`),
  CONSTRAINT `FK_idfuncionarios_idequipe` FOREIGN KEY (`idfuncionarios`) REFERENCES `tbfuncionarios` (`idfuncionarios`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbequipe`
--

/*!40000 ALTER TABLE `tbequipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbequipe` ENABLE KEYS */;


--
-- Definition of table `tbestatistica`
--

DROP TABLE IF EXISTS `tbestatistica`;
CREATE TABLE `tbestatistica` (
  `idestatistica` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagem` varchar(145) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idestatistica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbestatistica`
--

/*!40000 ALTER TABLE `tbestatistica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbestatistica` ENABLE KEYS */;


--
-- Definition of table `tbeventos`
--

DROP TABLE IF EXISTS `tbeventos`;
CREATE TABLE `tbeventos` (
  `ideventos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(120) NOT NULL,
  `preco` double NOT NULL,
  `descricao` longtext NOT NULL,
  `imagem` varchar(145) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`ideventos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbeventos`
--

/*!40000 ALTER TABLE `tbeventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbeventos` ENABLE KEYS */;


--
-- Definition of table `tbfoot`
--

DROP TABLE IF EXISTS `tbfoot`;
CREATE TABLE `tbfoot` (
  `idfooter` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `endereco` varchar(100) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(80) NOT NULL,
  `horarios` text NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idfooter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfoot`
--

/*!40000 ALTER TABLE `tbfoot` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfoot` ENABLE KEYS */;


--
-- Definition of table `tbfuncionarios`
--

DROP TABLE IF EXISTS `tbfuncionarios`;
CREATE TABLE `tbfuncionarios` (
  `idfuncionarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoas` int(10) unsigned NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `admissao` datetime NOT NULL,
  `demissao` datetime DEFAULT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idfuncionarios`,`idpessoas`),
  KEY `FK_idpessoas_idfuncionarios` (`idpessoas`),
  CONSTRAINT `FK_idpessoas_idfuncionarios` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbfuncionarios`
--

/*!40000 ALTER TABLE `tbfuncionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfuncionarios` ENABLE KEYS */;


--
-- Definition of table `tbgaleria`
--

DROP TABLE IF EXISTS `tbgaleria`;
CREATE TABLE `tbgaleria` (
  `idgaleria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagem` varchar(145) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idgaleria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbgaleria`
--

/*!40000 ALTER TABLE `tbgaleria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbgaleria` ENABLE KEYS */;


--
-- Definition of table `tbmenucardapio`
--

DROP TABLE IF EXISTS `tbmenucardapio`;
CREATE TABLE `tbmenucardapio` (
  `idmenucardapio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menucardapio` varchar(60) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idmenucardapio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbmenucardapio`
--

/*!40000 ALTER TABLE `tbmenucardapio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbmenucardapio` ENABLE KEYS */;


--
-- Definition of table `tbpessoas`
--

DROP TABLE IF EXISTS `tbpessoas`;
CREATE TABLE `tbpessoas` (
  `idpessoas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idpessoas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpessoas`
--

/*!40000 ALTER TABLE `tbpessoas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpessoas` ENABLE KEYS */;


--
-- Definition of table `tbredes`
--

DROP TABLE IF EXISTS `tbredes`;
CREATE TABLE `tbredes` (
  `idredes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(145) NOT NULL,
  `link` text NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idredes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbredes`
--

/*!40000 ALTER TABLE `tbredes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbredes` ENABLE KEYS */;


--
-- Definition of table `tbreservas`
--

DROP TABLE IF EXISTS `tbreservas`;
CREATE TABLE `tbreservas` (
  `idreservas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpessoas` int(10) unsigned NOT NULL,
  `datar` date NOT NULL,
  `horario` time NOT NULL,
  `qtddpessoas` int(10) unsigned NOT NULL,
  `comentario` longtext DEFAULT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idreservas`,`idpessoas`),
  KEY `FK_idpessoas_idreservas` (`idpessoas`),
  CONSTRAINT `FK_idpessoas_idreservas` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbreservas`
--

/*!40000 ALTER TABLE `tbreservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbreservas` ENABLE KEYS */;


--
-- Definition of table `tbsobre`
--

DROP TABLE IF EXISTS `tbsobre`;
CREATE TABLE `tbsobre` (
  `idsobre` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagem` varchar(145) NOT NULL,
  `video` longtext NOT NULL,
  `descricao` longtext NOT NULL,
  `contmsg` text NOT NULL,
  `contato` varchar(45) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idsobre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbsobre`
--

/*!40000 ALTER TABLE `tbsobre` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbsobre` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
