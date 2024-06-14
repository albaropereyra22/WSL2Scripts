#! /bin/sh -


if [ "X$1" = "X-h" ];
then
  tee <<EOF
usage: /bin/sh -c "\$(curl -fsSL https://raw.githubusercontent.com/albaropereyra22/WSL2Scripts/HEAD/installEverything.sh)"
EOF
  exit 0;
fi
# TODO determine WSL
# TODO determine if git is installed
cd;
git clone git@github.com:albaropereyra22/WSL2Scripts.git
mkdir -p ~/bin;
mv ~/WSL2Scripts/WSL2DevEnv.sh ~/bin/
chmod u+x ~/bin/WSL2DevEnv.sh
sh ~/bin/WSL2DevEnv.sh
