#!/bin/sh
# List any available updates/upgrades & send an email to the sysadmin's email (arg1)
# NOTE: look into apticron to do this instead (https://www.unixmen.com/how-to-get-email-notifications-for-new-updates-on-debianubuntu/)
admin=$1 # e.g. judson.belmont@mssm.edu

apt list --upgradeable # TODO mail output to $admin
