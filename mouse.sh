#!/usr/bin/env python3

import mouse
import time
import os 
from datetime import datetime

events=[]
mouse.hook(events.append)
while 1:
    for event in events:
        print(event)
        today=datetime.now()
        dt_string = today.strftime("%d%m%Y%H%M%S")
        string = 'scanimage -d "airscan:e0:HP Neverstop Laser MFP 1200a" --format=jpeg>>/mnt/' + dt_string
        string += '.jpeg'
        print(string)
        os.system(string)
    del events[:]
    time.sleep(1)


