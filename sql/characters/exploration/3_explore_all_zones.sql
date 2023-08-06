/***************************************************************************************************
Faction:            Both
DB:                 characters
DB Version:         2023-04-23
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Explore all zones for a specific character
- Adds all dependent achievements
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
-- *************************************************************************************************

-- Explored zones
UPDATE `characters` SET `exploredZones`='4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 ' WHERE  `guid`=@CHARACTER;

-- Achievements
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 42, UNIX_TIMESTAMP()); -- Explore Eastern Kingdoms
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 43, UNIX_TIMESTAMP()); -- Explore Kalimdor
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 44, UNIX_TIMESTAMP()); -- Explore Outland
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 45, UNIX_TIMESTAMP()); -- Explore Northrend
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 46, UNIX_TIMESTAMP()); -- World Explorer
-- Eastern Kingdoms
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 627, UNIX_TIMESTAMP()); -- Explore Dun Morogh
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 760, UNIX_TIMESTAMP()); -- Explore Alterac Mountains
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 761, UNIX_TIMESTAMP()); -- Explore Arathi Highlands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 765, UNIX_TIMESTAMP()); -- Explore Badlands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 766, UNIX_TIMESTAMP()); -- Explore Blasted Lands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 768, UNIX_TIMESTAMP()); -- Explore Tirisfal Glades
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 769, UNIX_TIMESTAMP()); -- Explore Silverpine Forest
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 770, UNIX_TIMESTAMP()); -- Explore Western Plaguelands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 771, UNIX_TIMESTAMP()); -- Explore Eastern Plaguelands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 772, UNIX_TIMESTAMP()); -- Explore Hillsbrad Foothills
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 773, UNIX_TIMESTAMP()); -- Explore The Hinterlands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 774, UNIX_TIMESTAMP()); -- Explore Searing Gorge
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 775, UNIX_TIMESTAMP()); -- Explore Burning Steppes
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 776, UNIX_TIMESTAMP()); -- Explore Elwynn Forest
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 777, UNIX_TIMESTAMP()); -- Explore Deadwind Pass
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 778, UNIX_TIMESTAMP()); -- Explore Duskwood
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 779, UNIX_TIMESTAMP()); -- Explore Loch Modan
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 780, UNIX_TIMESTAMP()); -- Explore Redridge Mountains
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 781, UNIX_TIMESTAMP()); -- Explore Stranglethorn Vale
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 782, UNIX_TIMESTAMP()); -- Explore Swamp of Sorrows
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 802, UNIX_TIMESTAMP()); -- Explore Westfall
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 841, UNIX_TIMESTAMP()); -- Explore Wetlands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 858, UNIX_TIMESTAMP()); -- Explore Ghostlands
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 859, UNIX_TIMESTAMP()); -- Explore Eversong Woods
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 868, UNIX_TIMESTAMP()); -- Explore Isle of Quel'Danas
-- Kalimdor
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 728, UNIX_TIMESTAMP()); -- Explore Durotar
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 736, UNIX_TIMESTAMP()); -- Explore Mulgore
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 750, UNIX_TIMESTAMP()); -- Explore The Barrens
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 842, UNIX_TIMESTAMP()); -- Explore Teldrassil
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 844, UNIX_TIMESTAMP()); -- Explore Darkshore
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 845, UNIX_TIMESTAMP()); -- Explore Ashenvale
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 846, UNIX_TIMESTAMP()); -- Explore Thousand Needles
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 847, UNIX_TIMESTAMP()); -- Explore Stonetalon Mountains
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 848, UNIX_TIMESTAMP()); -- Explore Desolace
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 849, UNIX_TIMESTAMP()); -- Explore Feralas
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 850, UNIX_TIMESTAMP()); -- Explore Dustwallow Marsh
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 851, UNIX_TIMESTAMP()); -- Explore Tanaris Desert
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 852, UNIX_TIMESTAMP()); -- Explore Azshara
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 853, UNIX_TIMESTAMP()); -- Explore Felwood
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 854, UNIX_TIMESTAMP()); -- Explore Un'Goro Crater
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 855, UNIX_TIMESTAMP()); -- Explore Moonglade
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 856, UNIX_TIMESTAMP()); -- Explore Silithus
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 857, UNIX_TIMESTAMP()); -- Explore Winterspring
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 860, UNIX_TIMESTAMP()); -- Explore Azuremyst Isle
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 861, UNIX_TIMESTAMP()); -- Explore Bloodmyst Isle
-- Outland
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 843, UNIX_TIMESTAMP()); -- Explore Netherstorm
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 862, UNIX_TIMESTAMP()); -- Explore Hellfire Peninsula
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 863, UNIX_TIMESTAMP()); -- Explore Zangarmarsh
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 864, UNIX_TIMESTAMP()); -- Explore Shadowmoon Valley
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 865, UNIX_TIMESTAMP()); -- Explore Blade's Edge Mountains
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 866, UNIX_TIMESTAMP()); -- Explore Nagrand
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 867, UNIX_TIMESTAMP()); -- Explore Terokkar Forest
-- Northrend
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1263, UNIX_TIMESTAMP()); -- Explore Howling Fjord
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1264, UNIX_TIMESTAMP()); -- Explore Borean Tundra
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1265, UNIX_TIMESTAMP()); -- Explore Dragonblight
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1266, UNIX_TIMESTAMP()); -- Explore Grizzly Hills
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1267, UNIX_TIMESTAMP()); -- Explore Zul'Drak
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1268, UNIX_TIMESTAMP()); -- Explore Sholazar Basin
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1269, UNIX_TIMESTAMP()); -- Explore Storm Peaks
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1270, UNIX_TIMESTAMP()); -- Explore Icecrown
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 1457, UNIX_TIMESTAMP()); -- Explore Crystalsong Forest
