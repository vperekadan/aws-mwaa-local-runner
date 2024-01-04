#!/bin/sh
# startup script for Amazon MWAA
# https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html

# echo "Updating operating system"
# sudo yum update -y
# epel is supported on amazon linux 2 but not amazon linux 2023, so we are screwed if they upgrade
sudo amazon-linux-extras install epel -y
sudo yum install which gdal gdal-devel -y
which gdal-config; gdal-config --version