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
@CHARACTER = 1;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 54, 55, 95, 160, 162, 172, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, 400, 400),
       (@CHARACTER, 44, 400, 400),
       (@CHARACTER, 54, 400, 400),
       (@CHARACTER, 55, 400, 400),
       (@CHARACTER, 95, 400, 400),
       (@CHARACTER, 160, 400, 400),
       (@CHARACTER, 162, 400, 400),
       (@CHARACTER, 172, 400, 400),
       (@CHARACTER, 229, 400, 400);
