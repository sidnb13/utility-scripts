#!/bin/bash

if ps aux | grep spotikill; then
    pkill -f spotikill
fi

nohup spotikill &