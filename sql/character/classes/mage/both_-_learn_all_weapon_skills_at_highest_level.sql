SET
@CHARACTER = 1;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 95, 136, 162, 173, 228);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, 400, 400),
       (@CHARACTER, 95, 400, 400),
       (@CHARACTER, 136, 400, 400),
       (@CHARACTER, 162, 400, 400),
       (@CHARACTER, 173, 400, 400),
       (@CHARACTER, 228, 400, 400);
