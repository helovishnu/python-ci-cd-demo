#!/bin/bash
cd /home/ubuntu/python-ci-cd-demo

# Activate virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Stop old app if running
pkill -f app.py || true

# Start app using python3
nohup python3 app.py > app.log 2>&1 &
