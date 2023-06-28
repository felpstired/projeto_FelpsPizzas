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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbavaliacoes`
--

/*!40000 ALTER TABLE `tbavaliacoes` DISABLE KEYS */;
INSERT INTO `tbavaliacoes` (`idavaliacoes`,`idpessoas`,`comentario`,`profissao`,`estrelas`,`imagem`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,1,'Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.','Ceo &amp; Founder',1,'assets/img/testimonials/testimonials-1.jpg','2023-04-28 12:35:43','2023-06-05 22:20:34','A'),
 (2,2,'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.','Ceo &amp; Founder',4,'assets/img/testimonials/testimonials-2.jpg','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (3,3,'Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.','Ceo &amp; Founder',3,'assets/img/testimonials/testimonials-3.jpg','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (4,4,'Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.','Ceo &amp; Founder',5,'assets/img/testimonials/testimonials-4.jpg','2023-04-28 12:35:43','2023-06-05 22:14:02','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbanner`
--

/*!40000 ALTER TABLE `tbbanner` DISABLE KEYS */;
INSERT INTO `tbbanner` (`idbanner`,`imagem`,`titulo`,`descricao`,`video`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'https://i.pinimg.com/originals/e6/97/d9/e697d97e0496c5b50f3e17d70f6b1745.jpg','Golden Maknae','Integrante mais novo do grupo popular de K-POP, BTS, Jeon Jungkook é o chamado Golden Maknae por ser exepcional em tudo que faz, sendo reconhecido tanto dentro quanto fora da bolha.','https://www.youtube.com/watch?v=djV11Xbc914','2023-04-28 00:00:00','2023-06-02 18:41:05','D'),
 (2,'assets/img/hero-img.png','Aproveite uma Saudável e<br>Deliciosa Comida','Sed autem laudantium dolores. Voluptatem itaque ea consequatur eveniet. Eum quas beatae cumque eum quaerat.','https://www.youtube.com/watch?v=LXb3EKWsInQ','2023-05-13 23:21:46','2023-06-02 19:20:59','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcard`
--

/*!40000 ALTER TABLE `tbcard` DISABLE KEYS */;
INSERT INTO `tbcard` (`idcard`,`icon`,`titulo`,`descricao`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'','Por que escolher nosso restaurante?','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit\r\n                Asperiores dolores sed et. Tenetur quia eos. Autem tempore quibusdam vel necessitatibus optio ad corporis.','2023-05-13 12:25:43','2023-06-02 19:43:21','A'),
 (2,'bi bi-clipboard-data','Corporis voluptates officia eiusmod','Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip','2023-05-13 12:25:43','2023-06-02 19:32:28','A'),
 (3,'bi bi-gem','Ullamco laboris ladore pan','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt','2023-05-13 12:25:43','2023-06-02 19:32:30','A'),
 (4,'bi bi-inboxes','Labore consequatur incidid dolore','Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere','2023-05-13 12:25:43','2023-06-02 19:32:33','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcardapio`
--

/*!40000 ALTER TABLE `tbcardapio` DISABLE KEYS */;
INSERT INTO `tbcardapio` (`idcardapio`,`idmenucardapio`,`imagem`,`tituloimg`,`descimg`,`preco`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,1,'assets/img/menu/menu-item-1.png','Magnam Tiste','Lorem, deren, trataro, filede, nerada',5.95,'2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (2,1,'assets/img/menu/menu-item-2.png','Aut Luia','Lorem, deren, trataro, filede, nerada',14.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (3,1,'assets/img/menu/menu-item-3.png','Est Eligendi','Lorem, deren, trataro, filede, nerada',8.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (4,2,'assets/img/menu/menu-item-4.png','Eos Luibusdam','Lorem, deren, trataro, filede, nerada',10.95,'2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (5,2,'assets/img/menu/menu-item-5.png','Luibusdam Eos','Lorem, deren, trataro, filede, nerada',12.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (6,2,'assets/img/menu/menu-item-6.png','Laboriosam Direva','Lorem, deren, trataro, filede, nerada',9.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (7,3,'assets/img/menu/menu-item-1.png','Magnam Tiste','Lorem, deren, trataro, filede, nerada',5.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (8,3,'assets/img/menu/menu-item-2.png','Aut Luia','Lorem, deren, trataro, filede, nerada',14.95,'2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (9,3,'assets/img/menu/menu-item-3.png','Est Eligendi','Lorem, deren, trataro, filede, nerada',8.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (10,4,'assets/img/menu/menu-item-4.png','Eos Luibusdam','Lorem, deren, trataro, filede, nerada',10.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (11,4,'assets/img/menu/menu-item-5.png','Luibusdam Eos','Lorem, deren, trataro, filede, nerada',12.95,'2023-04-28 12:35:43','2023-06-05 22:16:06','A'),
 (12,4,'assets/img/menu/menu-item-6.png','Laboriosam Direva','Lorem, deren, trataro, filede, nerada',9.95,'2023-04-28 12:35:43','2023-06-05 22:18:33','A'),
 (13,1,'assets/img/menu/menu-item-4.png','Eos Luibusdam','Lorem, deren, trataro, filede, nerada',10.95,'2023-04-28 12:35:43','2023-06-06 13:18:59','A'),
 (14,1,'assets/img/menu/menu-item-5.png','Luibusdam Eos','Lorem, deren, trataro, filede, nerada',12.95,'2023-04-28 12:35:43','2023-06-06 13:18:59','A'),
 (15,1,'assets/img/menu/menu-item-6.png','Laboriosam Direva','Lorem, deren, trataro, filede, nerada',9.95,'2023-04-28 12:35:43','2023-06-06 13:18:59','A'),
 (16,1,'assets/img/menu/menu-item-1.png','Magnam Tiste','Lorem, deren, trataro, filede, nerada',5.95,'2023-04-28 12:35:43','2023-06-06 13:18:59','A'),
 (17,1,'assets/img/menu/menu-item-2.png','Aut Luia','Lorem, deren, trataro, filede, nerada',14.95,'2023-04-28 12:35:43','2023-06-06 13:19:00','A'),
 (18,1,'assets/img/menu/menu-item-3.png','Est Eligendi','Lorem, deren, trataro, filede, nerada',8.95,'2023-04-28 12:35:43','2023-06-06 13:19:00','A'),
 (19,1,'assets/img/menu/menu-item-4.png','Eos Luibusdam','Lorem, deren, trataro, filede, nerada',10.95,'2023-04-28 12:35:43','2023-06-06 13:19:00','A'),
 (20,1,'assets/img/menu/menu-item-5.png','Luibusdam Eos','Lorem, deren, trataro, filede, nerada',12.95,'2023-04-28 12:35:43','2023-06-06 13:20:09','A'),
 (21,1,'assets/img/menu/menu-item-6.png','Laboriosam Direva','Lorem, deren, trataro, filede, nerada',9.95,'2023-04-28 12:35:43','2023-06-06 13:19:00','A');
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
  `mapa` text NOT NULL,
  PRIMARY KEY (`idcontatar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcontatar`
--

/*!40000 ALTER TABLE `tbcontatar` DISABLE KEYS */;
INSERT INTO `tbcontatar` (`idcontatar`,`endereco`,`telefone`,`email`,`horarios`,`cadastro`,`alteracao`,`ativo`,`mapa`) VALUES 
 (1,'Rua Ivo de Tassis, 120 - Nova JK, Gov. Valadares - MG, 35045-570','+55 33 9 1234-5678','felpspizza@contato.com','<strong>Seg-Sex:</strong> 11AM - 23PM;ﾠ<strong>Sáb-Dom:</strong> Fechado','2023-05-15 11:29:57','2023-06-27 22:28:01','A','https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15100.338157341852!2d-41.9623483!3d-18.8833304!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xb1a7d340d00e43%3A0xf3acb8b7a321ccf2!2sSENAI%20Governador%20Valadares%20UI%20Luiz%20Chaves!5e0!3m2!1spt-BR!2sbr!4v1687915635103!5m2!1spt-BR!2sbr'),
 (2,'A108 Adam Street, New York, NY 535022','+1 5589 55488 55','contact@example.com','<strong>Mon-Sat:</strong> 11AM - 23PM;ﾠ<strong>Sunday:</strong> Closed','2023-05-15 11:29:57','2023-06-27 22:26:48','D','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d943.832742002238!2d-41.977114730363446!3d-18.87239292988428!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xb1a63ef8d13a4d%3A0x3df592970ecc66c7!2sR.%20Frutal%2C%20476%20-%20Nova%20Vila%20Bretas%2C%20Gov.%20Valadares%20-%20MG%2C%2035051-230!5e0!3m2!1spt-BR!2sbr!4v1685495884472!5m2!1spt-BR!2sbr');
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
  `imagem` varchar(145) NOT NULL,
  PRIMARY KEY (`idequipe`,`idfuncionarios`),
  KEY `FK_idfuncionarios_idequipe` (`idfuncionarios`),
  CONSTRAINT `FK_idfuncionarios_idequipe` FOREIGN KEY (`idfuncionarios`) REFERENCES `tbfuncionarios` (`idfuncionarios`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbequipe`
--

/*!40000 ALTER TABLE `tbequipe` DISABLE KEYS */;
INSERT INTO `tbequipe` (`idequipe`,`idfuncionarios`,`descricao`,`cadastro`,`alteracao`,`ativo`,`imagem`) VALUES 
 (1,1,'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.','2023-05-13 17:45:23','2023-06-06 16:32:53','A','assets/img/chefs/chefs-1.jpg'),
 (2,2,'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.','2023-05-13 17:45:23','2023-06-06 16:32:53','A','assets/img/chefs/chefs-2.jpg'),
 (3,3,'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.','2023-05-13 17:45:23','2023-06-06 16:32:53','A','assets/img/chefs/chefs-3.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbeventos`
--

/*!40000 ALTER TABLE `tbeventos` DISABLE KEYS */;
INSERT INTO `tbeventos` (`ideventos`,`titulo`,`preco`,`descricao`,`imagem`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'Festas Customizadas',99,'Quo corporis voluptas ea ad. Consectetur inventore sapiente ipsum voluptas eos omnis facere. Enim facilis veritatis id est rem repudiandae nulla expedita quas.','assets/img/events-1.jpg','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (2,'Festas Privadas',289,'In delectus sint qui et enim. Et ab repudiandae inventore quaerat doloribus. Facere nemo vero est ut dolores ea assumenda et. Delectus saepe accusamus aspernatur.','assets/img/events-2.jpg','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (3,'Festas de Aniversário',499,'Laborum aperiam atque omnis minus omnis est qui assumenda quos. Quis id sit quibusdam. Esse quisquam ducimus officia ipsum ut quibusdam maxime. Non enim perspiciatis.','assets/img/events-3.jpg','2023-04-28 12:35:43','2023-06-05 22:14:02','A');
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
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idfuncionarios`,`idpessoas`),
  KEY `FK_idpessoas_idfuncionarios` (`idpessoas`),
  CONSTRAINT `FK_idpessoas_idfuncionarios` FOREIGN KEY (`idpessoas`) REFERENCES `tbpessoas` (`idpessoas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci PACK_KEYS=1;

--
-- Dumping data for table `tbfuncionarios`
--

/*!40000 ALTER TABLE `tbfuncionarios` DISABLE KEYS */;
INSERT INTO `tbfuncionarios` (`idfuncionarios`,`idpessoas`,`cargo`,`admissao`,`demissao`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,5,'Master Chef','2023-05-13 17:45:23',NULL,'2023-05-13 17:45:23','2023-06-06 15:51:29','A'),
 (2,6,'Confeiteira','2023-05-13 17:45:23',NULL,'2023-05-13 17:45:23','2023-06-06 15:51:29','A'),
 (3,7,'Cozinheiro','2023-05-13 17:45:23',NULL,'2023-05-13 17:45:23','2023-06-06 15:51:29','A'),
 (4,8,'CEO','2023-01-01 17:45:23',NULL,'2023-05-13 17:45:23','2023-06-27 18:34:28','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbgaleria`
--

/*!40000 ALTER TABLE `tbgaleria` DISABLE KEYS */;
INSERT INTO `tbgaleria` (`idgaleria`,`imagem`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'assets/img/gallery/gallery-1.jpg','2023-05-14 15:36:17','2023-06-16 18:53:53','A'),
 (2,'assets/img/gallery/gallery-2.jpg','2023-05-14 15:36:17','2023-06-16 18:54:16','A'),
 (3,'assets/img/gallery/gallery-3.jpg','2023-05-14 15:36:17','2023-06-16 18:54:16','A'),
 (4,'assets/img/gallery/gallery-4.jpg','2023-05-14 15:36:17','2023-06-16 18:54:16','A'),
 (5,'assets/img/gallery/gallery-5.jpg','2023-05-14 15:36:17','2023-06-16 18:54:16','A'),
 (6,'assets/img/gallery/gallery-6.jpg','2023-05-14 15:36:17','2023-06-16 18:54:16','A'),
 (7,'assets/img/gallery/gallery-7.jpg','2023-05-14 15:36:17','2023-06-16 18:54:16','A'),
 (8,'assets/img/gallery/gallery-8.jpg','2023-05-14 15:36:17','2023-06-16 18:54:16','A');
/*!40000 ALTER TABLE `tbgaleria` ENABLE KEYS */;


--
-- Definition of table `tbimgreserva`
--

DROP TABLE IF EXISTS `tbimgreserva`;
CREATE TABLE `tbimgreserva` (
  `idimgreserva` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagem` varchar(145) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idimgreserva`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbimgreserva`
--

/*!40000 ALTER TABLE `tbimgreserva` DISABLE KEYS */;
INSERT INTO `tbimgreserva` (`idimgreserva`,`imagem`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'assets/img/reservation.jpg','2023-05-15 11:29:57','2023-06-27 19:54:59','A');
/*!40000 ALTER TABLE `tbimgreserva` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbmenucardapio`
--

/*!40000 ALTER TABLE `tbmenucardapio` DISABLE KEYS */;
INSERT INTO `tbmenucardapio` (`idmenucardapio`,`menucardapio`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'Entradas','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (2,'Café','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (3,'Almoço','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (4,'Jantar','2023-04-28 12:35:43','2023-06-05 22:14:02','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpessoas`
--

/*!40000 ALTER TABLE `tbpessoas` DISABLE KEYS */;
INSERT INTO `tbpessoas` (`idpessoas`,`nome`,`email`,`telefone`,`cpf`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,'Saul Goodman','saulgoodman@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (2,'Sara Wilsson','sarawilsson@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (3,'Jena Karlis','jenakarlis@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (4,'John Larson','johnlarson@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-05 22:14:02','A'),
 (5,'Walter White','walterwhite@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-06 13:35:18','A'),
 (6,'Sarah Jhonson','sarahjhonson@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-06 13:35:18','A'),
 (7,'William Anderson','williananderson@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-06 13:35:18','A'),
 (8,'Ana Alves','anaalves@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43','2023-06-27 18:33:15','A');
/*!40000 ALTER TABLE `tbpessoas` ENABLE KEYS */;


--
-- Definition of table `tbredes`
--

DROP TABLE IF EXISTS `tbredes`;
CREATE TABLE `tbredes` (
  `idredes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfuncionarios` int(10) unsigned NOT NULL,
  `rede` varchar(200) DEFAULT NULL,
  `tiporede` varchar(10) NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idredes`,`idfuncionarios`),
  KEY `FK_idredes_idfuncionarios` (`idfuncionarios`),
  CONSTRAINT `FK_idredes_idfuncionarios` FOREIGN KEY (`idfuncionarios`) REFERENCES `tbfuncionarios` (`idfuncionarios`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbredes`
--

/*!40000 ALTER TABLE `tbredes` DISABLE KEYS */;
INSERT INTO `tbredes` (`idredes`,`idfuncionarios`,`rede`,`tiporede`,`cadastro`,`alteracao`,`ativo`) VALUES 
 (1,1,'https://twitter.com/feeeelps','twitter','2023-05-15 11:29:57','2023-06-20 22:15:02','A'),
 (2,1,'https://www.facebook.com/gaming/feeeelps/','facebook','2023-05-15 11:29:57','2023-06-20 22:15:02','A'),
 (3,1,'https://www.instagram.com/felps11/','instagram','2023-05-15 11:29:57','2023-06-20 22:15:02','A'),
 (4,1,'https://br.linkedin.com/in/felps-developer-23329620b','linkedin','2023-05-15 11:29:57','2023-06-20 22:15:02','A'),
 (5,2,'https://twitter.com/feeeelps','twitter','2023-05-15 11:29:57','2023-06-20 22:15:02','A'),
 (6,2,'https://www.facebook.com/gaming/feeeelps/','facebook','2023-05-15 11:29:57','2023-06-20 22:15:02','A'),
 (7,2,'https://www.instagram.com/felps11/','instagram','2023-05-15 11:29:57','2023-06-20 22:15:02','A'),
 (8,3,'https://twitter.com/feeeelps','twitter','2023-05-15 11:29:57','2023-06-20 22:15:02','A');
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
  `imagem2` varchar(145) NOT NULL,
  PRIMARY KEY (`idsobre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbsobre`
--

/*!40000 ALTER TABLE `tbsobre` DISABLE KEYS */;
INSERT INTO `tbsobre` (`idsobre`,`imagem`,`video`,`descricao`,`contmsg`,`contato`,`cadastro`,`alteracao`,`ativo`,`imagem2`) VALUES 
 (1,'assets/img/about.jpg','https://www.youtube.com/watch?v=LXb3EKWsInQ','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore\r\n                magna aliqua.\r\n              </p>\r\n              <ul>\r\n                <li><i class=\"bi bi-check2-all\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n                <li><i class=\"bi bi-check2-all\"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n                <li><i class=\"bi bi-check2-all\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n              </ul>\r\n              <p>\r\n                Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n                velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident','Reserve uma mesa','+1 5589 55488 55','2023-05-23 23:45:23','2023-06-05 19:38:32','A','assets/img/about-2.jpg'),
 (2,'./assets/img/testes/sobre/genshinp.png','https://www.youtube.com/watch?v=4oBpaBEMBIM','Genshin Impact é um jogo muito bom. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também. Por favor jogue também.','Jogue Agora','genshin.hoyoverse.com','2022-12-31 12:31:00','2023-06-05 19:38:32','D','./assets/img/testes/sobre/genshinv.jpg');
/*!40000 ALTER TABLE `tbsobre` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
