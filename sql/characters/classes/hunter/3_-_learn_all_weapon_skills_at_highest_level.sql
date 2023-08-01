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
@CHARACTER = 1;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 55, 95, 136, 162, 172, 173, 176, 226, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, 400, 400),
       (@CHARACTER, 44, 400, 400),
       (@CHARACTER, 45, 400, 400),
       (@CHARACTER, 46, 400, 400),
       (@CHARACTER, 55, 400, 400),
       (@CHARACTER, 95, 400, 400),
       (@CHARACTER, 136, 400, 400),
       (@CHARACTER, 162, 400, 400),
       (@CHARACTER, 172, 400, 400),
       (@CHARACTER, 173, 400, 400),
       (@CHARACTER, 176, 400, 400),
       (@CHARACTER, 226, 400, 400),
       (@CHARACTER, 229, 400, 400);
