#!/bin/sh
#================================================================================
# dlwp.sh
# 
# version 1.00
#
# A little script to download the latest WordPress version.
#
# by Sergiu Negara <contact@n-e-s.info>
#================================================================================

_url="http://wordpress.org/latest.tar.gz"
_echo="/bin/echo"

$_echo " - Downloading..."
wget $_url -o /dev/null

$_echo " - Unpacking..."
tar -xzf latest.tar.gz

mv wordpress/* ./
rm -rf wordpress
rm latest.tar.gz

$_echo " - Done"
