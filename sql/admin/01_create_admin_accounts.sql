/***************************************************************************************************
Faction:            Alliance / Horde
DB:                 auth
DB Version:         2023-04-24
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Created 3 game accounts which are meant to hold administrator characters
- Dont forget to set a password in worldserver console:
- account set password 'accountname' 'password' 'password'
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @ACCOUNTNAME1 = 'ADMIN';
SET @GMLEVELACCOUNT1 = 3;
SET @ACCOUNTNAME2 = 'ALLIANCEADMIN';
SET @GMLEVELACCOUNT2 = 3;
SET @ACCOUNTNAME3 = 'HORDEADMIN';
SET @GMLEVELACCOUNT3 = 3;

-- account
DELETE FROM `account` WHERE `id` IN (1, 2, 3);
INSERT INTO `account` (`id`, `username`, `salt`, `verifier`, `session_key`, `totp_secret`, `email`, `reg_mail`, `joindate`, `last_ip`, `last_attempt_ip`, `failed_logins`, `locked`, `lock_country`, `last_login`, `online`, `expansion`, `mutetime`, `mutereason`, `muteby`, `locale`, `os`, `recruiter`, `totaltime`) VALUES (1, @ACCOUNTNAME1, 'salt', 'verifier', NULL, NULL, '', '', CURRENT_TIMESTAMP(), '127.0.0.1', '127.0.0.1', 0, 0, '00', NULL, 0, 2, 0, '', '', 0, '', 0, 0);
INSERT INTO `account` (`id`, `username`, `salt`, `verifier`, `session_key`, `totp_secret`, `email`, `reg_mail`, `joindate`, `last_ip`, `last_attempt_ip`, `failed_logins`, `locked`, `lock_country`, `last_login`, `online`, `expansion`, `mutetime`, `mutereason`, `muteby`, `locale`, `os`, `recruiter`, `totaltime`) VALUES (2, @ACCOUNTNAME2, 'salt', 'verifier', NULL, NULL, '', '', CURRENT_TIMESTAMP(), '127.0.0.1', '127.0.0.1', 0, 0, '00', NULL, 0, 2, 0, '', '', 0, '', 0, 0);
INSERT INTO `account` (`id`, `username`, `salt`, `verifier`, `session_key`, `totp_secret`, `email`, `reg_mail`, `joindate`, `last_ip`, `last_attempt_ip`, `failed_logins`, `locked`, `lock_country`, `last_login`, `online`, `expansion`, `mutetime`, `mutereason`, `muteby`, `locale`, `os`, `recruiter`, `totaltime`) VALUES (3, @ACCOUNTNAME3, 'salt', 'verifier', NULL, NULL, '', '', CURRENT_TIMESTAMP(), '127.0.0.1', '127.0.0.1', 0, 0, '00', NULL, 0, 2, 0, '', '', 0, '', 0, 0);

-- account_access
DELETE FROM `account_access` WHERE `id` IN (1, 2, 3);
INSERT INTO `account_access` (`id`, `gmlevel`, `RealmID`, `comment`) VALUES (1, @GMLEVELACCOUNT1, 1, '');
INSERT INTO `account_access` (`id`, `gmlevel`, `RealmID`, `comment`) VALUES (2, @GMLEVELACCOUNT2, 1, '');
INSERT INTO `account_access` (`id`, `gmlevel`, `RealmID`, `comment`) VALUES (3, @GMLEVELACCOUNT3, 1, '');

-- realmcharacters
DELETE FROM `realmcharacters` WHERE `acctid` IN (1, 2, 3);
INSERT INTO `realmcharacters` (`realmid`, `acctid`, `numchars`) VALUES (1, 1, 0);
INSERT INTO `realmcharacters` (`realmid`, `acctid`, `numchars`) VALUES (1, 2, 0);
INSERT INTO `realmcharacters` (`realmid`, `acctid`, `numchars`) VALUES (1, 3, 0);
