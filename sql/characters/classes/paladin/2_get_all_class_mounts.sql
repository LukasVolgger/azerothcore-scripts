/***************************************************************************************************
Faction:            Horde
DB:                 characters
DB Version:         2023-04-23
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Get all available paladin mounts
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
-- *************************************************************************************************

-- Summon Warhorse
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34769, 255);

-- Summon Charger
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34767, 255);

-- Argent Charger
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 66906, 255);
