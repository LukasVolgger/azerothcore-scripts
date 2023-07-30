-- creates 3 accounts with gmlevel 3
-- 1. admin
-- 2. allianceadmin
-- 3. hordeadmin
-- dont forget to set a password in worldserver console:
-- account set password 'accountname' 'password' 'password'

-- create accounts
DELETE FROM `account` WHERE `id` IN (1, 2, 3);
INSERT INTO `account` (`id`, `username`, `salt`, `verifier`, `session_key`, `totp_secret`, `email`, `reg_mail`, `joindate`, `last_ip`, `last_attempt_ip`, `failed_logins`, `locked`, `lock_country`, `last_login`, `online`, `expansion`, `mutetime`, `mutereason`, `muteby`, `locale`, `os`, `recruiter`, `totaltime`) VALUES (1, 'ADMIN', 'salt', 'verifier', NULL, NULL, '', '', CURRENT_TIMESTAMP(), '127.0.0.1', '127.0.0.1', 0, 0, '00', NULL, 0, 2, 0, '', '', 0, '', 0, 0);
INSERT INTO `account` (`id`, `username`, `salt`, `verifier`, `session_key`, `totp_secret`, `email`, `reg_mail`, `joindate`, `last_ip`, `last_attempt_ip`, `failed_logins`, `locked`, `lock_country`, `last_login`, `online`, `expansion`, `mutetime`, `mutereason`, `muteby`, `locale`, `os`, `recruiter`, `totaltime`) VALUES (2, 'ALLIANCEADMIN', 'salt', 'verifier', NULL, NULL, '', '', CURRENT_TIMESTAMP(), '127.0.0.1', '127.0.0.1', 0, 0, '00', NULL, 0, 2, 0, '', '', 0, '', 0, 0);
INSERT INTO `account` (`id`, `username`, `salt`, `verifier`, `session_key`, `totp_secret`, `email`, `reg_mail`, `joindate`, `last_ip`, `last_attempt_ip`, `failed_logins`, `locked`, `lock_country`, `last_login`, `online`, `expansion`, `mutetime`, `mutereason`, `muteby`, `locale`, `os`, `recruiter`, `totaltime`) VALUES (3, 'HORDEADMIN', 'salt', 'verifier', NULL, NULL, '', '', CURRENT_TIMESTAMP(), '127.0.0.1', '127.0.0.1', 0, 0, '00', NULL, 0, 2, 0, '', '', 0, '', 0, 0);

-- set accounts access to gmlevel 3
DELETE FROM `account_access` WHERE `id` IN (1, 2, 3);
INSERT INTO `account_access` (`id`, `gmlevel`, `RealmID`, `comment`) VALUES (1, 3, 1, '');
INSERT INTO `account_access` (`id`, `gmlevel`, `RealmID`, `comment`) VALUES (2, 3, 1, '');
INSERT INTO `account_access` (`id`, `gmlevel`, `RealmID`, `comment`) VALUES (3, 3, 1, '');

-- misc
DELETE FROM `realmcharacters` WHERE `acctid` IN (1, 2, 3);
INSERT INTO `realmcharacters` (`realmid`, `acctid`, `numchars`) VALUES (1, 1, 0);
INSERT INTO `realmcharacters` (`realmid`, `acctid`, `numchars`) VALUES (1, 2, 0);
INSERT INTO `realmcharacters` (`realmid`, `acctid`, `numchars`) VALUES (1, 3, 0);
