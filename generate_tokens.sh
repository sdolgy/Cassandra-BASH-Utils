#!/bin/bash
# Sasha Dolgy <sasha@dolgy.com>
# http://twitter.com/sdolgy

numNodes=6

for nodes in {0..5};
do
    echo "$nodes*(2^127/($numNodes-1))" | bc;
done
