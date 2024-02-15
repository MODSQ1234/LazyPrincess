if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/lazyindu/test1.git /LazyPrincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LazyPrincess
fi  # <-- Ensure this fi closes the if block

cd /LazyPrincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
