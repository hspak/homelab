#!/bin/bash
#
# (lives under /usr/local/bin)

set -e

rsync -av /mnt/share/Documents /backup/remote/Documents
rsync -av /mnt/share/Documents /second/Documents
