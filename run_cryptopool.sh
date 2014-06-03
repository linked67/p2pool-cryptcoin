#!/bin/sh
SERVICE='python ./run_p2pool.py --net cryptcoin'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen -d -m -S screencrypt python ./run_p2pool.py --net cryptcoin --give-author 0 --disable-upnp -f 1 -a EpcZmX4roNoiip5FiQ74k9hpWM74zshKzM

	wait
fi

