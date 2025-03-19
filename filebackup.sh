#!/bin/bash
src="/home/ubuntu/repo"
dest="/home/ubuntu_$(date +%F).tar.gz"
tar -czf $dest $src
echo "backup completed : $dest"


