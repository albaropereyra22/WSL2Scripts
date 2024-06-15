#! /bin/sh -
echo $(uname -a)
uname=$(uname -a)
tmpWSL2=${uname##*-}
WSL2=${tmpWSL2%% *}
echo $WSL2

