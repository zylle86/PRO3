#!/bin/bash

#set INPUT and OUTPUT pins for export
INPUT_1=66
INPUT_2=67
INPUT_3=69

OUTPUT_1=45
OUTPUT_2=44
OUTPUT_3=23

#set path for pin setup
SETUP_PATH=/sys/class/gpio/export

#export pins
echo $INPUT_1 > "$SETUP_PATH" #PIN NR 7
echo $INPUT_2 > "$SETUP_PATH" #PIN NR 8
echo $INPUT_3 > "$SETUP_PATH" #PIN NR 9

echo $OUTPUT_1 > "$SETUP_PATH" #PIN NR 11
echo $OUTPUT_2 > "$SETUP_PATH" #PIN NR 12
echo $OUTPUT_3 > "$SETUP_PATH" #PIN NR 13


#set output pins direction
OUTPUT_PATH=/sys/class/gpio/gpio
echo "out" > "$OUTPUT_PATH"$OUTPUT_1/direction
echo "out" > "$OUTPUT_PATH"$OUTPUT_2/direction
echo "out" > "$OUTPUT_PATH"$OUTPUT_3/direction
