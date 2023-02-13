#!/bin/bash

t=0.2
for i in {0..4..1}
do
    for i in {1475..0..-5}
    do
        sleep 5
        clear
        echo "Productive Seconds Left: $i"
    done
    for i in {0..49..1}
    do
        playerctl pause
        sleep $t
        playerctl play
        sleep $t
    done
    for i in {275..0..-5}
    do
        sleep 5
        clear
        echo "Relaxing Seconds Left: $i"
    done
    for i in {0..49..1}
    do
        playerctl pause
        sleep $t
        playerctl play
        sleep $t
    done
done
