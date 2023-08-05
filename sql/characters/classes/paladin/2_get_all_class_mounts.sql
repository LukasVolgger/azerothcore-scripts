SET @CHARACTER = 1;

-- Summon Warhorse
REPLACE
INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34769, 255);

-- Summon Charger
REPLACE
INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 34767, 255);

-- Argent Charger
REPLACE
INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 66906, 255);
