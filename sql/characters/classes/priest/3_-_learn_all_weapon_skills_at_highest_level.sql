-- Sets all possible weapon skills (also the learnable ones) to the highest level
-- 54 = Maces
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
  AND `skill` IN (54, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 54, 400, 400),
       (@CHARACTER, 95, 400, 400),
       (@CHARACTER, 136, 400, 400),
       (@CHARACTER, 162, 400, 400),
       (@CHARACTER, 173, 400, 400),
       (@CHARACTER, 228, 400, 400);
