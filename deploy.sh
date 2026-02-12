#!/bin/bash
set -e

cd /home/ubuntu/python-ci-cd-demo

rm -rf venv

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

pkill -f app.py || true

nohup python3 app.py > app.log 2>&1 &


