
 #!/bin/bash 


PINGINTERVAL=0.2
PINGCOUNT=100
let TOTALLINES=$PINGCOUNT+5
clear
#echo -n "Running ping test.  "
ping 8.8.8.8 -i $PINGINTERVAL -c $PINGCOUNT -D -v | pv -N "Running ping test...." -e -p -l -s $TOTALLINES -w 80 > testdata

#until [  $PINGSCOMPLETED -gt $PINGCOUNT ]; do
#    ping 8.8.8.8 -c 1 -D -v | grep 
#    let COUNTER-=1
#    sleep $PINGINTERVAL
#done


#ping 8.8.8.8 -i 0.5 -c 10 -D -v | pv -s 937 > ./testdata

