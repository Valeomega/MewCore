-- Added quest The Bronzebeard Family

DELETE FROM `creature_queststarter` WHERE (`id`=214651 AND `quest`=80500);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES 
(214651, 80500, 56819);

DELETE FROM `creature_questender` WHERE (`id`=214651 AND `quest`=80500);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES 
(214651, 80500, 56819);

DELETE FROM `quest_template_addon` WHERE `ID` IN(78716);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES 
(80500, 0, 0, 0, 78716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

SET @CGUID := 10010030;
SET @GOGUID := 10010030;

-- creature
DELETE FROM `creature` WHERE `id` IN(222099, 214651, 214632, 214669) AND `map` IN(1220);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`) VALUES 
(@CGUID+0, 222099, 1220, 0, 0, '0', 0, 0, 0, -1, 0, 1, -841.032, 4480.2, 589.631, 4.42294, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 56513),
(@CGUID+1, 214651, 1220, 0, 0, '0', 0, 0, 0, -1, 0, 0, -838.398, 4480.14, 588.856, 2.8975, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 56513),
(@CGUID+2, 214632, 1220, 0, 0, '0', 0, 0, 0, -1, 0, 0, -890.584, 4455.1, 737.592, 0.411181, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 56513),
(@CGUID+3, 214669, 1220, 0, 0, '0', 0, 0, 0, -1, 0, 0, -888.186, 4455.87, 737.592, 3.48076, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 56513);

UPDATE `creature_template` SET `npcflag`=3 WHERE `entry` IN(214651);
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry` IN(214669);

-- gameobjects
DELETE FROM `gameobject` WHERE `id`=441553 AND map=1220;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `StringId`, `VerifiedBuild`) VALUES 
(@GOGUID+0, 441553, 1220, 0, 0, '0', 0, 0, 0, -1, -840.899, 4480.83, 588.774, 4.42068, -0, -0, -0.802367, 0.59683, 300, 255, 1, '', NULL, 56513);
