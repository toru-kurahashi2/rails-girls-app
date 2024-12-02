#!/bin/bash
sudo apt-get update
sudo apt-get install -y imagemagick
bundle install
rails db:migrate