#! /bin/sh -


if [ "X$1" = "X-h" ];
then
  tee <<EOF
usage: /bin/sh -c "\$(curl -fsSL https://raw.githubusercontent.com/albaropereyra22/WSL2Scripts/HEAD/installEverything.sh)"
EOF
  exit 0;
fi
# TODO determine WSL
if [ ! -e ~/.ssh/id_ed25519.pub ];
then
  printf "Enter your email address:";
  read email
  ssh-keygen -t ed25519 -C "$email";
fi
ssh -T git@github.com;
if [ $? -eq 0 ];
then
  #TODO add ssh test to determine if key has been added to github.
  cat ~/.ssh/id_ed25519.pub;
  echo "Go to GitHub → Settings → SSH and GPG keys → New SSH key.";
fi
cd;
mkdir -p opt;
cd opt;
rm -rf ~/opt/WSL2Scripts;
rm -rf ~/bin/WSL2DevEnv.sh;
git clone git@github.com:albaropereyra22/WSL2Scripts.git
mkdir -p ~/bin;
cp ~/WSL2Scripts/WSL2DevEnv.sh ~/bin/
chmod u+x ~/bin/WSL2DevEnv.sh
sh ~/bin/WSL2DevEnv.sh
