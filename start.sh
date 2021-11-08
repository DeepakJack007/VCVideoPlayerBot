echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning master branch...."
  git clone https://github.com/shukurenaibotcreate/VCVideoPlayerBot /VCVideoplayer
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/shukurenaibotcreate/VCVideoPlayerBot -b $BRANCH /VCVideoPlayerBot
fi
cd /VCVideoplayer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
