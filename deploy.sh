#!/bin/sh
JEKYLL_ENV=production bundle exec jekyll build
rsync -avr --rsh='ssh -p25000' --delete-after --delete-excluded _site/ matt@162.243.234.162:/var/www/offtherecord