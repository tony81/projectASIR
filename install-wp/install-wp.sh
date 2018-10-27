#!/bin/bash

curl -O -L http://wordpress.org/latest.zip
unzip latest.zip 
mv wordpress/* ../code/
rm -rf latest.zip wordpress/
