#!/bin/bash
# Sasha Dolgy <sasha@dolgy.com>
# http://twitter.com/sdolgy

numNodes=4
if [ -z $1 ]; then
    echo "[INFO]: using default number of $numNodes nodes"
else 
    numNodes=$1
    echo "[INFO]: using $numNodes number of nodes"
fi

for nodes in `seq 1 $numNodes`;
do
    nodeKey=`echo "$nodes*(2^127/($numNodes))" | bc`;
    echo "[INFO]:  node-$nodes - $nodeKey"
done
