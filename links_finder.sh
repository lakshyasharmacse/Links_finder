#!/bin/bash

echo "╔══════════════════════════════════════════════╗"
echo "║                 LINK'S FINDER                ║"
echo "║                             BY Lakshay Sharma║"
echo "║  HELP How to Use {https://www.example.com/}  ║"
echo "╚══════════════════════════════════════════════╝"
echo -n "Enter Full URL/Domain: "
read domain
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
curl $domain > URL
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cat URL | grep -Eoi '<a [^>]+>' |  grep -Eo 'href="[^\"]+"' |  grep -Eo '(http|https)://[^/"]+' | sort -u
