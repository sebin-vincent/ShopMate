ALTER TABLE `state_type` ADD `state_threshold` INT NOT NULL AFTER `state_type`;
UPDATE `state_type` SET `state_threshold` = '100' WHERE `state_type`.`state_id` = 2;
UPDATE `state_type` SET `state_threshold` = '250' WHERE `state_type`.`state_id` = 1;
UPDATE `state_type` SET `state_threshold` = '10' WHERE `state_type`.`state_id` = 3;

