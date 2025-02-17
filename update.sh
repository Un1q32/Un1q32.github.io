#!/bin/sh -e
cd "${0%/*}"
dpkg-scanpackages -m ./debs > Packages
gzip -fkn Packages
bzip2 -fk Packages
