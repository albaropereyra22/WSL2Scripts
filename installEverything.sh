#! /bin/sh -


if [ "X$1" = "X-h" ];
then
  tee <<EOF
usage: /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/albaropereyra22/WSL2Scripts/HEAD/installEverything.sh)"
EOF
fi
# TODO determine WSL
# TODO determine if git is installed
cd;
git clone git@github.com:albaropereyra22/WSL2Scripts.git
echo "Hello from script."
