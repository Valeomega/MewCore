-- Added quest Atheroths Voice
-- portal to dalaran 424223

DELETE FROM `creature_queststarter` WHERE (`id`=213624 AND `quest`=78715);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES 
(213624, 78715, 56819);

DELETE FROM `creature_questender` WHERE (`id`=213625 AND `quest`=78715);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES 
(213625, 78715, 56819);

DELETE FROM `quest_template_addon` WHERE `ID` IN(78715);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES 
(78715, 0, 0, 0, 78714, 78716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

SET @GOGUID := 10010010;

-- gameobjects 
DELETE FROM `gameobject_template` WHERE `entry` IN(441051);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `StringId`, `VerifiedBuild`) VALUES 
(441051, 10, 76903, 'Forge Console', 'questinteract', 'Activating', '', 1, 93, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 129851, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', NULL, 51313);

DELETE FROM `gameobject` WHERE `id` IN(441051);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `StringId`, `VerifiedBuild`) VALUES 
(@GOGUID+1, 441051, 2698, 10504, 0, '0', 0, 0, 0, -1, -8356.68, 1731.23, 315.027, 1.6201, 0, 0, -0.704375, 0.709828, 300, 255, 1, '', NULL, 56513),
(@GOGUID+2, 441051, 2698, 10504, 0, '0', 0, 0, 0, -1, -8379.14, 1754.28, 314.868, 0.46266, 0, 0, -0.999945, 0.0105315, 300, 255, 1, '', NULL, 56513),
(@GOGUID+3, 441051, 2698, 10504, 0, '0', 0, 0, 0, -1, -8356.67, 1777.08, 314.958, 4.57537, 0, 0, -0.70872, -0.705489, 300, 255, 1, '', NULL, 56513);

-- gossip
DELETE FROM `creature_template_gossip` WHERE `CreatureID`=213624 AND `MenuID`=33853;
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES (213624, 33853, 56513);
DELETE FROM `gossip_menu` WHERE `MenuID`=33853 AND `TextID`=213624;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES (33853, 213624, 56513);
DELETE FROM `npc_text` WHERE `ID`=213624;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES 
(213624, 1, 0, 0, 0, 0, 0, 0, 0, 256535, 0, 0, 0, 0, 0, 0, 0, 56263);
DELETE FROM `gossip_menu_option` WHERE `MenuID`=33853 AND `OptionID`=0;
INSERT INTO `gossip_menu_option` (`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`, `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `SpellID`, `OverrideIconID`, `VerifiedBuild`) VALUES 
(33853, 120882, 0, 0, 'I\'m ready. Let\'s begin.', 0, 0, 1, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 56513);

-- conditions

-- sai
DELETE FROM `smart_scripts` WHERE `entryorguid`=213624;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `Difficulties`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `action_param7`, `action_param_string`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_param_string`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(213624, 0, 0, 1, '', 62, 0, 100, 0, 33853, 0, 0, 0, 0, '', 33, 218347, 0, 0, 0, 0, 0, 0, NULL, 7, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 'On gossip option 0 selected from menu 33853 - Give kill credit');


