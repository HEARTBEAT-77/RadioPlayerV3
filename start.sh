if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning Repo, Please Wait..."
  git clone https://github.com/HEARTBEAT-77/RadioPlayerV3.git /RadioPlayerV3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RadioPlayerV3
fi
cd /RadioPlayerV3
pip3 install -U -r requirements.txt
echo "Starting Bot, Please Wait..."
python3 main.py
