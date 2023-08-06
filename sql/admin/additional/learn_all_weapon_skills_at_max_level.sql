/***************************************************************************************************
Faction:            Both
DB:                 characters
DB Version:         2023-04-23
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Sets all weapon skills of all admin characters to the maximum level 400
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @VALUE = 400;
SET @MAX = 400;
-- *************************************************************************************************

-- ###################################################################################################### Mage

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 173 = Daggers
-- 228 = Wands

SET
@CHARACTER = 1;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 228, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 173 = Daggers
-- 228 = Wands

SET
@CHARACTER = 8;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 228, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 173 = Daggers
-- 228 = Wands

SET
@CHARACTER = 19;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 228, @VALUE, @MAX);

-- ###################################################################################################### Warrior

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 45 = Bows
-- 46 = Guns
-- 54 = Maces
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 136 = Staves
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 173 = Daggers
-- 176 = Thrown
-- 226 = Crossbows
-- 229 = Polearms

SET
@CHARACTER = 2;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 54, 55, 95, 136, 160, 162, 172, 173, 176, 226, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 45, @VALUE, @MAX),
       (@CHARACTER, 46, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 176, @VALUE, @MAX),
       (@CHARACTER, 226, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 45 = Bows
-- 46 = Guns
-- 54 = Maces
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 136 = Staves
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 173 = Daggers
-- 176 = Thrown
-- 226 = Crossbows
-- 229 = Polearms

SET
@CHARACTER = 12;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 54, 55, 95, 136, 160, 162, 172, 173, 176, 226, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 45, @VALUE, @MAX),
       (@CHARACTER, 46, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 176, @VALUE, @MAX),
       (@CHARACTER, 226, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- ###################################################################################################### Hunter

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 45 = Bows
-- 46 = Guns
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 173 = Daggers
-- 176 = Thrown
-- 226 = Crossbows
-- 229 = Polearms

SET
@CHARACTER = 3;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 55, 95, 136, 162, 172, 173, 176, 226, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 45, @VALUE, @MAX),
       (@CHARACTER, 46, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 176, @VALUE, @MAX),
       (@CHARACTER, 226, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 45 = Bows
-- 46 = Guns
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 173 = Daggers
-- 176 = Thrown
-- 226 = Crossbows
-- 229 = Polearms

SET
@CHARACTER = 18;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 55, 95, 136, 162, 172, 173, 176, 226, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 45, @VALUE, @MAX),
       (@CHARACTER, 46, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 176, @VALUE, @MAX),
       (@CHARACTER, 226, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- ###################################################################################################### Druid

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 54 = Maces
-- 95 = Defense
-- 136 = Staves
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 173 = Daggers
-- 229 = Polearms

SET
@CHARACTER = 4;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (54, 95, 136, 160, 162, 173, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 54 = Maces
-- 95 = Defense
-- 136 = Staves
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 173 = Daggers
-- 229 = Polearms

SET
@CHARACTER = 14;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (54, 95, 136, 160, 162, 173, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- ###################################################################################################### Warlock

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 173 = Daggers
-- 228 = Wands

SET
@CHARACTER = 5;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 228, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 173 = Daggers
-- 228 = Wands

SET
@CHARACTER = 17;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 228, @VALUE, @MAX);

-- ###################################################################################################### Shaman

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 44 = Axes
-- 54 = Maces
-- 95 = Defense
-- 136 = Staves
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 173 = Daggers

SET
@CHARACTER = 6;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (44, 54, 95, 136, 160, 162, 172, 173);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 44 = Axes
-- 54 = Maces
-- 95 = Defense
-- 136 = Staves
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 173 = Daggers

SET
@CHARACTER = 15;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (44, 54, 95, 136, 160, 162, 172, 173);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX);

-- ###################################################################################################### Paladin

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 54 = Maces
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 229 = Polearms

SET
@CHARACTER = 7;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 54, 55, 95, 160, 162, 172, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 54 = Maces
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 229 = Polearms

SET
@CHARACTER = 16;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 54, 55, 95, 160, 162, 172, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- ###################################################################################################### Rogue

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 45 = Bows
-- 46 = Guns
-- 54 = Maces
-- 95 = Defense
-- 162 = Unarmed
-- 173 = Daggers
-- 176 = Thrown
-- 226 = Crossbows

SET
@CHARACTER = 9;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 54, 95, 162, 173, 176, 226);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 45, @VALUE, @MAX),
       (@CHARACTER, 46, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 176, @VALUE, @MAX),
       (@CHARACTER, 226, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 45 = Bows
-- 46 = Guns
-- 54 = Maces
-- 95 = Defense
-- 162 = Unarmed
-- 173 = Daggers
-- 176 = Thrown
-- 226 = Crossbows

SET
@CHARACTER = 13;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 54, 95, 162, 173, 176, 226);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 45, @VALUE, @MAX),
       (@CHARACTER, 46, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 176, @VALUE, @MAX),
       (@CHARACTER, 226, @VALUE, @MAX);

-- ###################################################################################################### Priest

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 54 = Maces
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 173 = Daggers
-- 228 = Wands

SET
@CHARACTER = 10;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (54, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 228, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 54 = Maces
-- 95 = Defense
-- 136 = Staves
-- 162 = Unarmed
-- 173 = Daggers
-- 228 = Wands

SET
@CHARACTER = 20;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (54, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 228, @VALUE, @MAX);

-- ###################################################################################################### Deathknight

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 54 = Maces
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 229 = Polearms

SET
@CHARACTER = 11;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 54, 55, 95, 160, 162, 172, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);

-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 43 = Swords
-- 44 = Axes
-- 54 = Maces
-- 55 = Two-Handed Swords
-- 95 = Defense
-- 160 = Two-Handed Maces
-- 162 = Unarmed
-- 172 = Two-Handed Axes
-- 229 = Polearms

SET
@CHARACTER = 21;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 54, 55, 95, 160, 162, 172, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);
