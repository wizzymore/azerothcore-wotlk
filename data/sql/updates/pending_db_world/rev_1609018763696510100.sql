INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1609018763696510100');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 17) AND (`SourceGroup` = 0) AND (`SourceEntry` = 69922) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 13) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 2) AND (`ConditionValue2` = 3) AND (`ConditionValue3` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 69922, 0, 0, 13, 0, 2, 3, 0, 0, 0, 0, '', 'Forge of Souls - Tempering The Blade (Quest)');
