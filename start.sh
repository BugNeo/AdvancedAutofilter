if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RealGaurv/AdvancedAutofilter.git /AdvancedAutoFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AdvancedAutoFilter
fi
cd /AdvancedAutoFilter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
