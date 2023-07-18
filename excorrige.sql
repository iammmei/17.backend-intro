-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS `user`;
		
CREATE TABLE `user` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` MEDIUMTEXT NULL DEFAULT NULL,
  `answer-count` INTEGER NULL DEFAULT NULL,
  `question-count` INTEGER NULL DEFAULT NULL,
  `about` INTEGER NULL DEFAULT NULL,
  `coumunity-id` INTEGER NULL DEFAULT NULL,
  `reputation` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'question'
-- 
-- ---

DROP TABLE IF EXISTS `question`;
		
CREATE TABLE `question` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `title` INTEGER NULL DEFAULT NULL,
  `votes` INTEGER NULL DEFAULT NULL,
  `views` INTEGER NULL DEFAULT NULL,
  `time` INTEGER NULL DEFAULT NULL,
  `text` INTEGER NULL DEFAULT NULL,
  `id-user` INTEGER NULL DEFAULT NULL,
  `id collective` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'answers'
-- 
-- ---

DROP TABLE IF EXISTS `answers`;
		
CREATE TABLE `answers` (
  `time` INTEGER NULL DEFAULT NULL,
  `id-questions` INTEGER NULL DEFAULT NULL,
  `id-user` INTEGER NULL DEFAULT NULL,
  `text` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY ()
);

-- ---
-- Table 'tags'
-- 
-- ---

DROP TABLE IF EXISTS `tags`;
		
CREATE TABLE `tags` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `tag name` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'communities'
-- 
-- ---

DROP TABLE IF EXISTS `communities`;
		
CREATE TABLE `communities` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'questions per tags'
-- 
-- ---

DROP TABLE IF EXISTS `questions per tags`;
		
CREATE TABLE `questions per tags` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id-questions` INTEGER NULL DEFAULT NULL,
  `id-tags` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users-per-community'
-- 
-- ---

DROP TABLE IF EXISTS `users-per-community`;
		
CREATE TABLE `users-per-community` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_answers` INTEGER NULL DEFAULT NULL,
  `id-communitie` INTEGER NULL DEFAULT NULL,
  `user-count` INTEGER NULL DEFAULT NULL,
  `id-users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `email` INTEGER NULL DEFAULT NULL,
  `password` INTEGER NULL DEFAULT NULL,
  `new field` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `user` ADD FOREIGN KEY (id) REFERENCES `users-per-community` (`id`);
ALTER TABLE `user` ADD FOREIGN KEY (id) REFERENCES `users` (`id`);
ALTER TABLE `question` ADD FOREIGN KEY (id) REFERENCES `user` (`id`);
ALTER TABLE `answers` ADD FOREIGN KEY (id-questions) REFERENCES `question` (`id`);
ALTER TABLE `answers` ADD FOREIGN KEY (text) REFERENCES `user` (`id`);
ALTER TABLE `tags` ADD FOREIGN KEY (id) REFERENCES `questions per tags` (`id`);
ALTER TABLE `communities` ADD FOREIGN KEY (id) REFERENCES `users-per-community` (`id`);
ALTER TABLE `communities` ADD FOREIGN KEY (id) REFERENCES `question` (`id`);
ALTER TABLE `questions per tags` ADD FOREIGN KEY (id) REFERENCES `question` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `question` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `answers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tags` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `communities` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `questions per tags` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users-per-community` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `user` (`id`,`name`,`answer-count`,`question-count`,`about`,`coumunity-id`,`reputation`) VALUES
-- ('','','','','','','');
-- INSERT INTO `question` (`id`,`title`,`votes`,`views`,`time`,`text`,`id-user`,`id collective`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `answers` (`time`,`id-questions`,`id-user`,`text`) VALUES
-- ('','','','');
-- INSERT INTO `tags` (`id`,`tag name`) VALUES
-- ('','');
-- INSERT INTO `communities` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `questions per tags` (`id`,`id-questions`,`id-tags`) VALUES
-- ('','','');
-- INSERT INTO `users-per-community` (`id`,`id_answers`,`id-communitie`,`user-count`,`id-users`) VALUES
-- ('','','','','');
-- INSERT INTO `users` (`id`,`email`,`password`,`new field`) VALUES
-- ('','','','');