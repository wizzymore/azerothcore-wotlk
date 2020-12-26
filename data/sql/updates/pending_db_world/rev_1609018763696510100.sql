INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1609018763696510100');

DELETE FROM `waypoints` WHERE `entry`=25220 AND `pointid`=12;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (25220, 12, 2296.36, 5241.69, 11.399, 'Civilian Recruit');
