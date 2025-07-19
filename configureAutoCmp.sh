#!/bin/bash

sudo apt install python3-full python3-pynvim

sudo rm /usr/bin/nvim

sudo ln -s /opt/nvim-linux64/bin/nvim /usr/bin/nvim
