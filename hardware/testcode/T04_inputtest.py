#!/usr/bin/python
import RPi.GPIO as GPIO
import time

#if you put 3.3V(17) to pin18 ,you can check IO.
PIN = 18
OUT_PIN = 23

GPIO.setmode(GPIO.BCM)#set GPIO pin number
GPIO.setup(OUT_PIN, GPIO.OUT)
GPIO.setup(PIN, GPIO.IN)

while True:
    if GPIO.input(PIN):
        GPIO.output(11, True)
        time.sleep(2)
        GPIO.output(11, False)
        time.sleep(2)