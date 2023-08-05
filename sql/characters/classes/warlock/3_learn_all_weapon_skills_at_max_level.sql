/***************************************************************************************************
Faction:            Both
DB:                 characters
DB Version:         2023-08-05
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Sets all possible weapon skills (also the learnable ones) to the highest level
- 43 = Swords, 95 = Defense, 136 = Staves, 162 = Unarmed, 173 = Daggers, 228 = Wands
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
SET @VALUE = 400;
SET @MAX = 400;
-- *************************************************************************************************

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
