#!/bin/sh
cd "${0%/*}" || exit 1
dpkg-scanpackages -m ./debs > Packages
gzip -fk Packages
