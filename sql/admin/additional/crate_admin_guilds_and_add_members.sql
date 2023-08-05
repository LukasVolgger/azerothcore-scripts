/***************************************************************************************************
Faction:            Alliance / Horde / Both
DB:                 characters
DB Version:         2023-08-05
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Creates all admin guilds with max money (214k)
- Adds all admin characters to guilds
- Unlocks all guild bank tabs
- Create a standard guild emblem
- All event logs were also added
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @ADMINGUILDNAME = 'Administrators';
SET @ALLISNCEADMINGUILDNAME = 'Alliance Administrators';
SET @HORDEADMINGUILDNAME = 'Horde Administrators';
SET @CREATEDATE = 1691263014;
SET @BANKMONEY = 2140000000;
SET @GUILDRANK0 = 'Gildenmeister';
SET @GUILDRANK1 = 'Offizier';
SET @GUILDRANK2 = 'Veteran';
SET @GUILDRANK3 = 'Mitglied';
SET @GUILDRANK4 = 'Anfänger';

-- guild
DELETE FROM `guild` WHERE `guildid` IN (1, 2, 3);
INSERT INTO `guild` (`guildid`, `name`, `leaderguid`, `EmblemStyle`, `EmblemColor`, `BorderStyle`, `BorderColor`, `BackgroundColor`, `info`, `motd`, `createdate`, `BankMoney`) VALUES (1, @ADMINGUILDNAME, 1, 20, 16, 0, 16, 35, '', 'No message set.', @CREATEDATE, @BANKMONEY);
INSERT INTO `guild` (`guildid`, `name`, `leaderguid`, `EmblemStyle`, `EmblemColor`, `BorderStyle`, `BorderColor`, `BackgroundColor`, `info`, `motd`, `createdate`, `BankMoney`) VALUES (2, @ALLISNCEADMINGUILDNAME, 2, 20, 10, 0, 10, 32, '', 'No message set.', @CREATEDATE, @BANKMONEY);
INSERT INTO `guild` (`guildid`, `name`, `leaderguid`, `EmblemStyle`, `EmblemColor`, `BorderStyle`, `BorderColor`, `BackgroundColor`, `info`, `motd`, `createdate`, `BankMoney`) VALUES (3, @HORDEADMINGUILDNAME, 12, 20, 1, 0, 0, 44, '', 'No message set.', @CREATEDATE, @BANKMONEY);

-- guild_bank_eventlog
DELETE FROM `guild_bank_eventlog` WHERE `guildid`=1 AND `LogGuid`=0 AND `TabId`=100;
INSERT INTO `guild_bank_eventlog` (`guildid`, `LogGuid`, `TabId`, `EventType`, `PlayerGuid`, `ItemOrMoney`, `ItemStackCount`, `DestTabId`, `TimeStamp`) VALUES (1, 0, 100, 4, 1, 2140000000, 0, 0, @CREATEDATE);
-- Alliance
DELETE FROM `guild_bank_eventlog` WHERE `guildid`=2 AND `LogGuid`=0 AND `TabId`=100;
INSERT INTO `guild_bank_eventlog` (`guildid`, `LogGuid`, `TabId`, `EventType`, `PlayerGuid`, `ItemOrMoney`, `ItemStackCount`, `DestTabId`, `TimeStamp`) VALUES (2, 0, 100, 4, 2, 2140000000, 0, 0, @CREATEDATE);
-- Horde
DELETE FROM `guild_bank_eventlog` WHERE `guildid`=3 AND `LogGuid`=0 AND `TabId`=100;
INSERT INTO `guild_bank_eventlog` (`guildid`, `LogGuid`, `TabId`, `EventType`, `PlayerGuid`, `ItemOrMoney`, `ItemStackCount`, `DestTabId`, `TimeStamp`) VALUES (3, 0, 100, 4, 12, 2140000000, 0, 0, @CREATEDATE);

-- guild_bank_right
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=0 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 0, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=0 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 0, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=0 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 0, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=0 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 0, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=0 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 0, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=1 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 1, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=1 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 1, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=1 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 1, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=1 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 1, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=1 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 1, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=2 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 2, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=2 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 2, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=2 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 2, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=2 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 2, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=2 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 2, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=3 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 3, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=3 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 3, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=3 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 3, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=3 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 3, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=3 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 3, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=4 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 4, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=4 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 4, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=4 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 4, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=4 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 4, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=4 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 4, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=5 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 5, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=5 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 5, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=5 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 5, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=5 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 5, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=1 AND `TabId`=5 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (1, 5, 4, 0, 0);
-- Alliance
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=0 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 0, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=0 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 0, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=0 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 0, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=0 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 0, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=0 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 0, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=1 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 1, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=1 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 1, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=1 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 1, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=1 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 1, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=1 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 1, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=2 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 2, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=2 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 2, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=2 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 2, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=2 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 2, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=2 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 2, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=3 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 3, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=3 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 3, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=3 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 3, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=3 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 3, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=3 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 3, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=4 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 4, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=4 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 4, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=4 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 4, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=4 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 4, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=4 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 4, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=5 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 5, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=5 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 5, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=5 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 5, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=5 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 5, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=2 AND `TabId`=5 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (2, 5, 4, 0, 0);
-- Horde
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=0 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 0, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=0 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 0, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=0 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 0, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=0 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 0, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=0 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 0, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=1 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 1, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=1 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 1, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=1 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 1, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=1 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 1, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=1 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 1, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=2 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 2, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=2 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 2, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=2 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 2, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=2 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 2, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=2 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 2, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=3 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 3, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=3 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 3, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=3 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 3, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=3 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 3, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=3 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 3, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=4 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 4, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=4 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 4, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=4 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 4, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=4 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 4, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=4 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 4, 4, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=5 AND `rid`=0;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 5, 0, 255, 4294967295);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=5 AND `rid`=1;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 5, 1, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=5 AND `rid`=2;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 5, 2, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=5 AND `rid`=3;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 5, 3, 0, 0);
DELETE FROM `guild_bank_right` WHERE `guildid`=3 AND `TabId`=5 AND `rid`=4;
INSERT INTO `guild_bank_right` (`guildid`, `TabId`, `rid`, `gbright`, `SlotPerDay`) VALUES (3, 5, 4, 0, 0);

-- guild_bank_tab
DELETE FROM `guild_bank_tab` WHERE `guildid`=1 AND `TabId`=0;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (1, 0, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=1 AND `TabId`=1;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (1, 1, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=1 AND `TabId`=2;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (1, 2, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=1 AND `TabId`=3;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (1, 3, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=1 AND `TabId`=4;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (1, 4, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=1 AND `TabId`=5;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (1, 5, '', '', NULL);
-- Alliance
DELETE FROM `guild_bank_tab` WHERE `guildid`=2 AND `TabId`=0;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (2, 0, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=2 AND `TabId`=1;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (2, 1, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=2 AND `TabId`=2;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (2, 2, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=2 AND `TabId`=3;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (2, 3, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=2 AND `TabId`=4;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (2, 4, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=2 AND `TabId`=5;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (2, 5, '', '', NULL);
-- Horde
DELETE FROM `guild_bank_tab` WHERE `guildid`=3 AND `TabId`=0;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (3, 0, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=3 AND `TabId`=1;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (3, 1, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=3 AND `TabId`=2;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (3, 2, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=3 AND `TabId`=3;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (3, 3, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=3 AND `TabId`=4;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (3, 4, '', '', NULL);
DELETE FROM `guild_bank_tab` WHERE `guildid`=3 AND `TabId`=5;
INSERT INTO `guild_bank_tab` (`guildid`, `TabId`, `TabName`, `TabIcon`, `TabText`) VALUES (3, 5, '', '', NULL);

-- guild_eventlog
DELETE FROM `guild_eventlog` WHERE `guildid`=1 AND `LogGuid`=0;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (1, 0, 2, 1, 0, 0, @CREATEDATE);
-- Alliance
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=0;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 0, 2, 2, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=1;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 1, 2, 3, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=2;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 2, 2, 4, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=3;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 3, 2, 5, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=4;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 4, 2, 6, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=5;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 5, 2, 7, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=6;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 6, 2, 8, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=7;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 7, 2, 9, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=8;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 8, 2, 10, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=2 AND `LogGuid`=9;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (2, 9, 2, 11, 0, 0, @CREATEDATE);
-- Horde
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=0;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 0, 2, 12, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=1;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 1, 2, 13, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=2;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 2, 2, 14, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=3;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 3, 2, 15, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=4;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 4, 2, 16, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=5;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 5, 2, 17, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=6;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 6, 2, 18, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=7;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 7, 2, 19, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=8;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 8, 2, 20, 0, 0, @CREATEDATE);
DELETE FROM `guild_eventlog` WHERE `guildid`=3 AND `LogGuid`=9;
INSERT INTO `guild_eventlog` (`guildid`, `LogGuid`, `EventType`, `PlayerGuid1`, `PlayerGuid2`, `NewRank`, `TimeStamp`) VALUES (3, 9, 2, 21, 0, 0, @CREATEDATE);

-- guild_member - Guild
DELETE FROM `guild_member` WHERE `guid` IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21);
-- Leaders
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (1, 1, 0, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 2, 0, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 12, 0, '', '');
-- Members Alliance
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 3, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 4, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 5, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 6, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 7, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 8, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 9, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 10, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (2, 11, 1, '', '');
-- Members Horde
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 13, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 14, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 15, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 16, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 17, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 18, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 19, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 20, 1, '', '');
INSERT INTO `guild_member` (`guildid`, `guid`, `rank`, `pnote`, `offnote`) VALUES (3, 21, 1, '', '');

-- guild_rank
DELETE FROM `guild_rank` WHERE `guildid`=1 AND `rid`=0;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (1, 0, @GUILDRANK0, 1962495, 4294967295);
DELETE FROM `guild_rank` WHERE `guildid`=1 AND `rid`=1;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (1, 1, @GUILDRANK1, 1962495, 0);
DELETE FROM `guild_rank` WHERE `guildid`=1 AND `rid`=2;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (1, 2, @GUILDRANK2, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=1 AND `rid`=3;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (1, 3, @GUILDRANK3, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=1 AND `rid`=4;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (1, 4, @GUILDRANK4, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=2 AND `rid`=0;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (2, 0, @GUILDRANK0, 1962495, 4294967295);
DELETE FROM `guild_rank` WHERE `guildid`=2 AND `rid`=1;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (2, 1, @GUILDRANK1, 1962495, 0);
DELETE FROM `guild_rank` WHERE `guildid`=2 AND `rid`=2;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (2, 2, @GUILDRANK2, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=2 AND `rid`=3;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (2, 3, @GUILDRANK3, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=2 AND `rid`=4;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (2, 4, @GUILDRANK4, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=3 AND `rid`=0;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (3, 0, @GUILDRANK0, 1962495, 4294967295);
DELETE FROM `guild_rank` WHERE `guildid`=3 AND `rid`=1;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (3, 1, @GUILDRANK1, 1962495, 0);
DELETE FROM `guild_rank` WHERE `guildid`=3 AND `rid`=2;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (3, 2, @GUILDRANK2, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=3 AND `rid`=3;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (3, 3, @GUILDRANK3, 67, 0);
DELETE FROM `guild_rank` WHERE `guildid`=3 AND `rid`=4;
INSERT INTO `guild_rank` (`guildid`, `rid`, `rname`, `rights`, `BankMoneyPerDay`) VALUES (3, 4, @GUILDRANK4, 67, 0);
