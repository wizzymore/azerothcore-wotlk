-- DB update 2017_02_03_26 -> 2017_02_03_27
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS 
FROM information_schema.COLUMNS 
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2017_02_03_26';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2017_02_03_26 2017_02_03_27 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1485432620657634200'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--
INSERT INTO version_db_world (`sql_rev`) VALUES ('1485432620657634200');
-- Chancellor Bloodleaf -- http://wotlk.openwow.com/npc=22012
-- Chancellor Bloodleaf SAI
SET @ENTRY := 22012;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,15000,15000,130000,130000,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chancellor Bloodleaf - Out of Combat - Run Script"),
(@ENTRY,0,1,0,0,0,100,0,5000,6000,5000,6000,11,34517,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chancellor Bloodleaf - In Combat - Cast 'Arcane Explosion'");

-- Actionlist SAI
SET @ENTRY := 2201200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,1,0,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Chancellor Bloodleaf - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chancellor Bloodleaf - On Script - Play Emote 1"),
(@ENTRY,9,2,0,0,0,100,0,9000,9000,0,0,1,0,6000,0,0,0,0,10,77086,22011,0,0,0,0,0,"Chancellor Bloodleaf - On Script - Say Line 0"),
(@ENTRY,9,3,0,0,0,100,0,6000,6000,0,0,1,1,7000,0,0,0,0,1,0,0,0,0,0,0,0,"Chancellor Bloodleaf - On Script - Say Line 1"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chancellor Bloodleaf - On Script - Play Emote 1"),
(@ENTRY,9,5,0,0,0,100,0,6000,6000,0,0,1,2,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Chancellor Bloodleaf - On Script - Say Line 2");

DELETE FROM `creature_text` WHERE `entry` IN (22011, 22012);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
-- Corok the Mighty 
(22011, 0, 0, 'And... if we do not?', 12, 0, 100, 0, 0, 0, 19695, 'Corok the Mighty'),
-- Chancellor Bloodleaf
(22012, 0, 0, 'Lend us the strength of the giants of Shadowmoon, Corok. The master is a just ruler. He will be sure to take care of those that assisted in subduing the dissidents of this world.', 12, 0, 100, 0, 0, 0, 19693, 'Chancellor Bloodleaf'),
(22012, 1, 0, 'Then you become enemies of my lord, Illidan. Enemies of Illidan are destroyed. Are your giants able to withstand an attack from the forces of Eclipse Point?', 12, 0, 100, 0, 0, 0, 19696, 'Chancellor Bloodleaf'),
(22012, 2, 0, 'No... I did not think so...', 12, 0, 100, 0, 0, 0, 19697, 'Chancellor Bloodleaf');--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
