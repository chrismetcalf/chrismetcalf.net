---
layout: post
title: Automated PGP-encrypted MySQL backups
author: Chris Metcalf
date: 2005/04/16
slug: automated-pgp-encrypted-mysql-backups
category: 
tags: [ code, gmail, hacks, linux, tools, web-design, wordpress ]
---

I've been bad. Until recently I haven't been backing up my MySQL database. Bad things could have happened.
Today I finally hacked up a simple script to run from cron that will automatically dump, zip, and mail backups of my MySQL tables to an email address I specify. I set up a Gmail account to send the dumps to because they're about 8 meg each. The dumps are also encrypted using my PGP 1024-bit public key to give me a bit of security.
Since I didn't manage to find anything similar in my Googling, I decided to post it.
<blockquote>
<code>
#!/bin/sh
# Performs a backup of MySQL, encrypts it using PGP, and mails it to a particular user
# The user to mail the backup to. Should have a public key in the above user's keyring...
MAIL_TO="your-backup-account@gmail.com"
MAIL_TO_KEY="Your PGP key ID"
# Subject of the mail. A date stamp will be appended to it
MAIL_SUBJECT="[mysqldump] MySQL Backup for "
######################################
DATESTAMP=`date  %Y-%m-%d`
FILENAME="/tmp/mysqldump-$DATESTAMP.gz"
# Generate the dump
mysqldump --all-databases | gzip > "$FILENAME"
# Encrypt it
gpg --encrypt --recipient "$MAIL_TO_KEY" "$FILENAME"
# Mail it!
mpack -s "$MAIL_SUBJECT $DATESTAMP" -c application/octet-stream $FILENAME.gpg" "$MAIL_TO"
# Remove the backups
rm -f $FILENAME $FILENAME.gpg
</code>
</blockquote>
