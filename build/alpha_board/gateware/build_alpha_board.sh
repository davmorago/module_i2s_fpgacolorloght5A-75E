# Autogenerated by LiteX / git: 02277680
set -e
yosys  -l alpha_board.rpt alpha_board.ys
nextpnr-ecp5 --json alpha_board.json --lpf alpha_board.lpf --textcfg alpha_board.config  --25k --package CABGA256 --speed 6 --timing-allow-fail --seed 1 
ecppack  --bootaddr 0   --compress  alpha_board.config --svf alpha_board.svf --bit alpha_board.bit 
