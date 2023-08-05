SET
@CHARACTER = 1;

-- Flight Form
REPLACE
INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 33943, 255);

-- Swift Flight Form
REPLACE
INTO `character_spell` (`guid`, `spell`, `specMask`) VALUES (@CHARACTER, 40120, 255);
