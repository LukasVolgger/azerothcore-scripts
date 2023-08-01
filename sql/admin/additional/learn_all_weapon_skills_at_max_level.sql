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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 228, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 228, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 228, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 45, 1275, 1275),
       (@CHARACTER, 46, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 176, 1275, 1275),
       (@CHARACTER, 226, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 45, 1275, 1275),
       (@CHARACTER, 46, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 176, 1275, 1275),
       (@CHARACTER, 226, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 45, 1275, 1275),
       (@CHARACTER, 46, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 176, 1275, 1275),
       (@CHARACTER, 226, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 45, 1275, 1275),
       (@CHARACTER, 46, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 176, 1275, 1275),
       (@CHARACTER, 226, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 228, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 228, 1275, 1275);

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
VALUES (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275);

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
VALUES (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 45, 1275, 1275),
       (@CHARACTER, 46, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 176, 1275, 1275),
       (@CHARACTER, 226, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 45, 1275, 1275),
       (@CHARACTER, 46, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 176, 1275, 1275),
       (@CHARACTER, 226, 1275, 1275);

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
VALUES (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 228, 1275, 1275);

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
VALUES (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 136, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 173, 1275, 1275),
       (@CHARACTER, 228, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);

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
VALUES (@CHARACTER, 43, 1275, 1275),
       (@CHARACTER, 44, 1275, 1275),
       (@CHARACTER, 54, 1275, 1275),
       (@CHARACTER, 55, 1275, 1275),
       (@CHARACTER, 95, 1275, 1275),
       (@CHARACTER, 160, 1275, 1275),
       (@CHARACTER, 162, 1275, 1275),
       (@CHARACTER, 172, 1275, 1275),
       (@CHARACTER, 229, 1275, 1275);
