#!/bin/sh
# Check available space on a partition (arg1), and if it is greater than X% (arg2), send an email to the server admin (arg3) 

part=$1 # Must exactly match column 1 of the df output. E.g. /dev/mapper/vg01-lv.var
alert_thresh=$2 # e.g. 90
admin=$3 # e.g. judson.belmont@mssm.edu

server=$(hostname -A) # could use nslookup [ip_addr] instead to full domain name. This may not work on the pi...

# Get df -h output and parse it to get the percentage 
use_perc=$(df -h $part | tail -n1 | tr -s ' ' | cut -d' ' -f5)
use_perc_rstrip=${use_perc%*%}

# If percentage used is greater than the alert threshold, send email 
if [ $use_perc_rstrip -gt $alert_thresh ]
then
  echo "Disk is $use_perc full. Sending alert to $admin..."
  echo -e "Subject:$part on $server is $use_perc_rstrip% full\nPartition $part on $server is $use_perc_rstrip% full. You should delete some files." | sendmail $admin
fi
