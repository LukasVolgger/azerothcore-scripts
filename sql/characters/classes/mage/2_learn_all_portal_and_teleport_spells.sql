/***************************************************************************************************
Faction:            Horde
DB:                 2023-04-23
DB Version:         2023-08-05
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Learns all available portal and teleportation spells
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
-- *************************************************************************************************

DELETE
FROM `character_spell`
WHERE `guid` = @CHARACTER
  AND `spell` IN (3563, 3566, 3567, 11417, 11418, 11420, 32267, 32272, 35715, 35717, 49358, 49361, 53140, 53142);

INSERT INTO `character_spell` (`guid`, `spell`, `specMask`)
VALUES (@CHARACTER, 3563, 255),
       (@CHARACTER, 3566, 255),
       (@CHARACTER, 3567, 255),
       (@CHARACTER, 11417, 255),
       (@CHARACTER, 11418, 255),
       (@CHARACTER, 11420, 255),
       (@CHARACTER, 32267, 255),
       (@CHARACTER, 32272, 255),
       (@CHARACTER, 35715, 255),
       (@CHARACTER, 35717, 255),
       (@CHARACTER, 49358, 255),
       (@CHARACTER, 49361, 255),
       (@CHARACTER, 53140, 255),
       (@CHARACTER, 53142, 255);
