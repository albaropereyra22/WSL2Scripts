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
# TODO email
# TODO if statement if there is no keys.
#ssh-keygen -t ed25519 -C "albaropereyra22@gmail.com"
#cat ~/.ssh/id_ed25519.pub
#echo "Go to GitHub → Settings → SSH and GPG keys → New SSH key."
cd;
git clone git@github.com:albaropereyra22/WSL2Scripts.git
mkdir -p ~/bin;
cp ~/WSL2Scripts/WSL2DevEnv.sh ~/bin/
chmod u+x ~/bin/WSL2DevEnv.sh
sh ~/bin/WSL2DevEnv.sh
