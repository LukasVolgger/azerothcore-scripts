SET @CHARACTER = 1;

-- Level 255
UPDATE `characters` SET `level`=255 WHERE  `guid`=@CHARACTER;

-- Money 
UPDATE `characters` SET `money`=999999999 WHERE  `guid`=@CHARACTER;

-- Bank slots
UPDATE `characters` SET `bankSlots`=7 WHERE  `guid`=@CHARACTER;


-- Achievements - General
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 6, UNIX_TIMESTAMP()); -- Level 10
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 7, UNIX_TIMESTAMP()); -- Level 20
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 8, UNIX_TIMESTAMP()); -- Level 30
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 9, UNIX_TIMESTAMP()); -- Level 40
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 10, UNIX_TIMESTAMP()); -- Level 50
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 11, UNIX_TIMESTAMP()); -- Level 60
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 12, UNIX_TIMESTAMP()); -- Level 70
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 13, UNIX_TIMESTAMP()); -- Level 80
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 16, UNIX_TIMESTAMP()); -- Did Somebody Order a Knuckle Sandwich?
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 546, UNIX_TIMESTAMP()); -- Safe Deposit
REPLACE INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES (@CHARACTER, 705, UNIX_TIMESTAMP()); -- Master of Arms
