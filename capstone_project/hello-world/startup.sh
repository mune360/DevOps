#!/bin/bash
set -e

echo "Starting SSH ..."
service ssh start

echo "Starting node app ..."
service nginx start

echo "verify services..."
service --status-all

echo "tail logs"
tail -f /dev/null