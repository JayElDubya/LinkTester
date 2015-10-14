#######################################################################################
# Read config file, ensure it only has NAME=value or comments
# (no executable code) & load it if clean or after cleaning 

#[ -r ./lib/libtests ] && . ./lib/libtests

source ./lib/libtests

loadconfig
loadiperflibs


#
#######################################################################################

#add code to check for dependancies:
#   iperf3
#   pv
#   python-pip
#
# ensure /root/.bashrc exists and contains the following"
# or just add this to run before any iperf test or iperf server launch
#
# LD_LIBRARY_PATH=/usr/local/lib
# LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/libiperf.so.0
# export LD_LIBRARY_PATH
#
#
# create installers for client and server
# move config, move daemon, set to autostart
#
#
#
# consider adding dropbox ip option
#
# sudo pip install speedtest-cli
# 
#######################################################################################
# Prompt/setup variables
#

SITENAME="test"
TESTTIME=$(timestamp)
mkdir -p "data/"$SITENAME"_data_"$TESTTIME


#mainmenu
clear

runtests () {
pingtest
speedtestdotnet
tcpiperftest 128k 256k 512k 1024k 1280k 1518k


}

#pingtest | pv -N "Overall progress..." -ceplWs 40 >/dev/null


runtests | pv -N "Overall testing progress..." -eptls 14 >/dev/null

echo "Testing complete!"


# won't let me do 64k test for some reason

exit 0



