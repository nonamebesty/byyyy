if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nonamebesty/byyyy /byyyy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /byyyy
fi
cd /byyyy
pip3 install -U -r requirements.txt
echo "Starting Bypass Bot...."
python3 main.py
