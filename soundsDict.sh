#!/bin/bash -x

declare -A sound

sound[dog]="bark"
sound[cow]="moo"
sound[bird]="tweet"
sound[wolf]="howl"

echo "Dog sound" ${sound[dog]}
echo "All animal sound" ${sound[*]}
echo "All animals" ${!sound[@]}
echo "Number of animals" ${#sound[@]}



