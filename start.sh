if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kopaing12/KP-EVA.git /KP-EVA
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KP-EVA
fi
cd /KP-EVA
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
