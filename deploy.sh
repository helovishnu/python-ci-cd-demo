#!/bin/bash
cd /home/ubuntu/python-ci-cd-demo

source venv/bin/activate

pip install -r requirements.txt

pkill -f app.py || true

nohup python app.py > app.log 2>&1 &
