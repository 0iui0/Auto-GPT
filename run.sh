#!/bin/bash
PYTHON_CMD=/usr/bin/python3

$PYTHON_CMD scripts/check_requirements.py requirements.txt
if [ $? -eq 1 ]
then
    echo Installing missing packages...
    $PYTHON_CMD -m pip install -r requirements.txt
fi
$PYTHON_CMD -m autogpt $@
read -p "Press any key to continue..."