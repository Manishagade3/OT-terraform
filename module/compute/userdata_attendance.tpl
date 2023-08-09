#!/bin/bash
export CONFIG_FILE=/home/ubuntu/OT-Microservices/attendance/config.yaml
cd /home/ubuntu/OT-Microservices/attendance
gunicorn -b 0.0.0.0:8081 attendance_api:app