SET
@CHARACTER = 2;

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 54, 55, 95, 136, 160, 162, 172, 173, 176, 226, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, 400, 400),
       (@CHARACTER, 44, 400, 400),
       (@CHARACTER, 45, 400, 400),
       (@CHARACTER, 46, 400, 400),
       (@CHARACTER, 54, 400, 400),
       (@CHARACTER, 55, 400, 400),
       (@CHARACTER, 95, 400, 400),
       (@CHARACTER, 136, 400, 400),
       (@CHARACTER, 160, 400, 400),
       (@CHARACTER, 162, 400, 400),
       (@CHARACTER, 172, 400, 400),
       (@CHARACTER, 173, 400, 400),
       (@CHARACTER, 176, 400, 400),
       (@CHARACTER, 226, 400, 400),
       (@CHARACTER, 229, 400, 400);
