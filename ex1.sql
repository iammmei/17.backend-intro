-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'USER'
-- 
-- ---

DROP TABLE IF EXISTS `USER`;
		
CREATE TABLE `USER` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` MEDIUMTEXT NULL DEFAULT NULL,
  `last connection` DATETIME NULL DEFAULT NULL,
  `number of questions asked` INTEGER NULL DEFAULT NULL,
  `new field` INTEGER NULL DEFAULT NULL,
  `email` MEDIUMTEXT NULL DEFAULT NULL,
  `password` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'FORUM'
-- 
-- ---

DROP TABLE IF EXISTS `FORUM`;
		
CREATE TABLE `FORUM` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `questions` INTEGER NULL DEFAULT NULL,
  `Nombre de post` INTEGER NULL DEFAULT NULL,
  `votes` INTEGER NULL DEFAULT NULL,
  `tags` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'companies'
-- 
-- ---

DROP TABLE IF EXISTS `companies`;
		
CREATE TABLE `companies` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `description` MEDIUMTEXT NULL DEFAULT NULL,
  `name of company` MEDIUMTEXT NULL DEFAULT NULL,
  `sector` MEDIUMTEXT NULL DEFAULT NULL,
  `tags` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `USER` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `FORUM` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `companies` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `USER` (`id`,`username`,`last connection`,`number of questions asked`,`new field`,`email`,`password`) VALUES
-- ('','','','','','','');
-- INSERT INTO `FORUM` (`id`,`questions`,`Nombre de post`,`votes`,`tags`) VALUES
-- ('','','','','');
-- INSERT INTO `companies` (`id`,`description`,`name of company`,`sector`,`tags`) VALUES
-- ('','','','','');