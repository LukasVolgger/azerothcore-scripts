/***************************************************************************************************
Faction:            Alliance
DB:                 characters
DB Version:         2023-04-23
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Get all available pets
- Adds all dependent achievements
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
-- *************************************************************************************************

-- Achievements
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1017, UNIX_TIMESTAMP()); -- [2] "Can I Keep Him?"
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 15, UNIX_TIMESTAMP()); -- [3] "Plenty of Pets"
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1248, UNIX_TIMESTAMP()); -- [4] "Plethora of Pets"
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1250, UNIX_TIMESTAMP()); -- [5] "Shop Smart, Shop Pet...Smart"
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2516, UNIX_TIMESTAMP()); -- [6] "Lil' Game Hunter"

-- Sold by dealer
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10673, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10674, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10676, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10677, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10678, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10679, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10680, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10683, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10684, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10685, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10688, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10703, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10704, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10706, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10707, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10709, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10711, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10713, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10714, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10716, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10717, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35156, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35239, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35907, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35909, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35910, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35911, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 36027, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 36028, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 36029, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 36031, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 53316, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62491, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62508, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62510, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62513, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62516, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62542, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62562, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62564, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62674, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63712, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65358, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67417, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 75134, 255);

-- Rare
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10675, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10682, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10695, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10696, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10697, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10698, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 25162, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 33050, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 36034, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 40990, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 43918, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 45082, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 46599, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 51716, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 51851, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59250, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61348, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61349, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61350, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61351, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61357, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61472, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61773, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61855, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61991, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 66096, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67413, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67414, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67415, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67416, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67418, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67419, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 67420, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 69002, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 69452, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 70613, 255);

-- Promotional
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17707, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17708, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17709, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 24696, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 24988, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 27241, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 30156, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32298, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 40549, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 45125, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 45127, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 48406, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 49964, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 52615, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 53082, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 55068, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63318, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65682, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 66030, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 68767, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 68810, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 78381, 255);

-- Quest / Crafted
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 4055, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 12243, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 13548, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 15048, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 15049, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 15067, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 15999, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 16450, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 19772, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23811, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26010, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39181, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 43697, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 43698, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 46425, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 46426, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62561, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 62609, 255);

-- World events
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26045, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26529, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26533, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26541, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 27570, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 28738, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 28739, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 28740, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 28871, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39709, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 40613, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 40614, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 40634, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 42609, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 44369, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 45890, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 54187, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61725, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65381, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65382, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 71840, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 74932, 255);

-- Pet store
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 69535, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 69536, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 69541, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 69677, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 75906, 255);
