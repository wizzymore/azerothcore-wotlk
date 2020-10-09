INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1602240836090274600');

UPDATE `gameobject_template` SET `ScriptName` = '' WHERE (`entry` = 194569);
UPDATE `gameobject` SET `state` = 0 WHERE (`id` = 194569);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 10389);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 10389, 0, 0, 0, 13, 1, 0, 0, 0, 1, 0, 0, '', 'Ulduar Teleporter - Expedition Base Camp'),
(15, 10389, 1, 0, 0, 13, 1, 0, 0, 0, 1, 0, 0, '', 'Ulduar Teleporter - Formation Grounds'),
(15, 10389, 2, 0, 0, 13, 1, 0, 3, 0, 0, 0, 0, '', 'Ulduar Teleporter - Colossal Forge'),
(15, 10389, 3, 0, 0, 13, 1, 3, 3, 0, 0, 0, 0, '', 'Ulduar Teleporter - Scrapyard'),
(15, 10389, 4, 0, 0, 13, 1, 3, 3, 0, 0, 0, 0, '', 'Ulduar Teleporter - Antechamber of Ulduar'),
(15, 10389, 5, 0, 0, 13, 1, 5, 3, 0, 0, 0, 0, '', 'Ulduar Teleporter - Shattered Walkway'),
(15, 10389, 6, 0, 0, 13, 1, 6, 3, 0, 0, 0, 0, '', 'Ulduar Teleporter - Conservatory of Life'),
(15, 10389, 7, 0, 0, 13, 1, 710, 0, 0, 1, 0, 0, '', 'Ulduar Teleporter - Spark of Imagination'),
(15, 10389, 8, 0, 0, 13, 1, 11, 3, 0, 0, 0, 0, '', 'Ulduar Teleporter - Prison of Yogg-Saron');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 22) AND (`SourceEntry` = 194569);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 2, 194569, 1, 0, 13, 1, 0, 0, 0, 1, 0, 0, '', 'Ulduar Teleporter - Enable');

UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 194569;

DELETE FROM `smart_scripts` WHERE (`source_type` = 1 AND `entryorguid` = 194569);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(194569, 1, 0, 0, 60, 0, 100, 1, 0, 0, 0, 0, 0, 105, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ulduar Teleporter - On Update - Add Gameobject Flags Not Selectable (No Repeat)'),
(194569, 1, 1, 2, 60, 0, 100, 1, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ulduar Teleporter - On Update - Remove Gameobject Flags Not Selectable (No Repeat)'),
(194569, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ulduar Teleporter - On Update - Set GO state to 0 (No Repeat)'),
(194569, 1, 3, 12, 62, 0, 100, 0, 10389, 0, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, -706.122, -92.602, 430.27, 0, 'Ulduar Teleporter - On Gossip Option 0 Selected - Teleport'),
(194569, 1, 4, 12, 62, 0, 100, 0, 10389, 1, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 131.248, -35.38, 410.2, 0, 'Ulduar Teleporter - On Gossip Option 1 Selected - Teleport'),
(194569, 1, 5, 12, 62, 0, 100, 0, 10389, 2, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 553.233, -12.324, 410.07, 0, 'Ulduar Teleporter - On Gossip Option 2 Selected - Teleport'),
(194569, 1, 6, 12, 62, 0, 100, 0, 10389, 3, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 926.292, -11.463, 418.99, 0, 'Ulduar Teleporter - On Gossip Option 3 Selected - Teleport'),
(194569, 1, 7, 12, 62, 0, 100, 0, 10389, 4, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1498.09, -24.246, 421.36, 0, 'Ulduar Teleporter - On Gossip Option 4 Selected - Teleport'),
(194569, 1, 8, 12, 62, 0, 100, 0, 10389, 5, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1859.72, -24.884, 449.21, 0, 'Ulduar Teleporter - On Gossip Option 5 Selected - Teleport'),
(194569, 1, 9, 12, 62, 0, 100, 0, 10389, 6, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 2086.27, -24.313, 421.71, 0, 'Ulduar Teleporter - On Gossip Option 6 Selected - Teleport'),
(194569, 1, 10, 12, 62, 0, 100, 0, 10389, 7, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1854.8, -11.46, 334.57, 0, 'Ulduar Teleporter - On Gossip Option 7 Selected - Teleport'),
(194569, 1, 11, 12, 62, 0, 100, 0, 10389, 8, 0, 0, 0, 62, 603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 2518.22, -2569.11, 412.69, 0, 'Ulduar Teleporter - On Gossip Option 8 Selected - Teleport'),
(194569, 1, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ulduar Teleporter - On Gossip Option Selected - Close Gossip');

DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 10389);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(10389, 0, 0, 'Teleport to the Expedition Base Camp.', 33919, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 1, 0, 'Teleport to the Formation Grounds.', 33920, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 2, 0, 'Teleport to the Colossal Forge.', 33921, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 3, 0, 'Teleport to the Scrapyard.', 33922, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 4, 0, 'Teleport to the Antechamber of Ulduar.', 33923, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 5, 0, 'Teleport to the Shattered Walkway.', 33924, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 6, 0, 'Teleport to the Conservatory of Life.', 33926, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 7, 0, 'Teleport to the Spark of Imagination.', 33927, 1, 0, 0, 0, 0, 0, '', 0, 0),
(10389, 8, 0, 'Teleport to the Prison of Yogg-Saron.', 33928, 1, 0, 0, 0, 0, 0, '', 0, 0);