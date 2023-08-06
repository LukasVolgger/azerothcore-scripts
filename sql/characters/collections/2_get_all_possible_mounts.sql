/***************************************************************************************************
Faction:            Horde
DB:                 characters
DB Version:         2023-04-23
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Get all available mounts
- Adds all dependent achievements
- Learns all available riding skills
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
-- *************************************************************************************************

-- Achievements - General
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 889, UNIX_TIMESTAMP()); -- Fast and Furious
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 890, UNIX_TIMESTAMP()); -- Into The Wild Blue Yonder
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 891, UNIX_TIMESTAMP()); -- Giddy Up!
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 892, UNIX_TIMESTAMP()); -- The Right Stuff
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2076, UNIX_TIMESTAMP()); -- Armored Brown Bear
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2077, UNIX_TIMESTAMP()); -- Wooly Mammoth
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2078, UNIX_TIMESTAMP()); -- Traveler's Tundra Mammoth
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2097, UNIX_TIMESTAMP()); -- Get to the Choppa!
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2141, UNIX_TIMESTAMP()); -- [2] Stable Keeper
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2142, UNIX_TIMESTAMP()); -- [3] Filling Up The Barn
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2143, UNIX_TIMESTAMP()); -- [4] Leading the Cavalry
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 2537, UNIX_TIMESTAMP()); -- [5] Mountain o' Mounts

-- Riding skills
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 33388, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 33391, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34090, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34091, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 54197, 255);

-- Horde mounts
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 580, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 6653, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 6654, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 8395, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10796, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 10799, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17462, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17463, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17464, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17465, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 18989, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 18990, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23241, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23242, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23243, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23246, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23247, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23248, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23249, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23250, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23251, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23252, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32243, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32244, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32245, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32246, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32295, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32296, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 32297, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 33660, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34795, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34896, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34897, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34898, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34899, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35018, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35020, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35022, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35025, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35027, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39315, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39317, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39318, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39319, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59793, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 60116, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61230, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61447, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 64657, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 64658, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 64659, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 64977, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 66088, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 66091, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 66846, 255);

-- Faction-neutral mounts
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39798, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39800, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39801, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39802, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39803, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 41513, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 41514, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 41515, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 41516, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 41517, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 41518, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 43927, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59797, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59570, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61294, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61469, 255);

-- Rare mounts
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 17481, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 24242, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 24252, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 25953, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26054, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26055, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26056, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 36702, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 40192, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 41252, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 43688, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 46628, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59567, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59568, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59569, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59571, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59650, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59961, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59976, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59996, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 60002, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 60021, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 60024, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 60025, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 60119, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61467, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61997, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63796, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63956, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63963, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 64731, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 68057, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 68187, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 72286, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 73313, 255);

-- World events
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 43899, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 43900, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 48025, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 49379, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63635, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63640, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63641, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63642, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63643, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 63844, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65639, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65641, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65644, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65645, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65646, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 71342, 255);

-- PvP mounts
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 22718, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 22721, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 22722, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 22724, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 23509, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34790, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 35028, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 37015, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 39316, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 44744, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 49193, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 58615, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 59788, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65439, 255);

-- Quest / Promotional / Craftable
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 26656, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 30174, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 42776, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 42777, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 44151, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 44153, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 46197, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 46199, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 49322, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 51412, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 54753, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 55531, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 58983, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61309, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 61451, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 65917, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 74918, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 75596, 255);
REPLACE INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 75973, 255);
