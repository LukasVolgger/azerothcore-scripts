/***************************************************************************************************
Faction:            Both
DB:                 characters
DB Version:         2023-08-05
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Learn all available warlock mounts
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
-- *************************************************************************************************

-- Felsteed
REPLACE
INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 5784, 255);

-- Dreadsteed
REPLACE
INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23161, 255);
