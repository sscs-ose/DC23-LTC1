set NAME [cellname list self];
select top cell;
# (Flattening improves resistance extraction)
flatten "[list $NAME]_flat"
load "[list $NAME]_flat"
select top cell;
extract no resistance;
extract no capacitance;
extract all;
ext2sim labels on;
ext2sim;
extresist tolerance 10;
extresist;
ext2spice lvs;
ext2spice cthresh 0;
ext2spice extresist on;
ext2spice -o "pex_C_[list $NAME].spice";
