#!/bin/sh
amixer -c 1 cset name='I2S2 Mux' ADMAIF1
#amixer -c 1 cset name='I2S4 Mux' off
amixer -c 1 cset name='ADMAIF1 Mux' I2S2
amixer -c 1 cset name='CVB-RT LOUT MIX DAC L1 Switch' on
amixer -c 1 cset name='CVB-RT LOUT MIX DAC R1 Switch' on
amixer -c 1 cset name='CVB-RT LOUT MIX OUTVOL L Switch' off
amixer -c 1 cset name='CVB-RT LOUT MIX OUTVOL R Switch' off
amixer -c 1 cset name='CVB-RT Stereo DAC MIXL DAC L1 Switch' on
amixer -c 1 cset name='CVB-RT Stereo DAC MIXR DAC R1 Switch' on
