#!/bin/bash
set -e

cd /home/ubuntu/python-ci-cd-demo

# Remove old venv if exists
rm -rf venv

# Create fresh virtual environment
python3 -m venv venv

# Activate venv
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Kill old app
pkill -f app.py || true

# Start app
nohup python3 app.py > app.log 2>&1 &

