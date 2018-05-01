#!/bin/sh
#================================================================================
# dlwp.sh
#
# version 1.11
#
# A little script to download the latest WordPress version.
#
# by Sergiu Negara <sergiu@negara.pro>
#
# Changelog:
#
# Version 1.0
# - First version. Download via wget
#
# Version 1.10
# - Download via curl (wget is not available by default)
#
# Version 1.11
# - Add curl -L flag so it follows redirects
#
#================================================================================

echo " - Downloading..."
curl -sOL "http://wordpress.org/latest.tar.gz"

echo " - Unpacking..."
tar -xzf latest.tar.gz

mv wordpress/* .
rm -rf wordpress
rm latest.tar.gz

echo " - Done"
