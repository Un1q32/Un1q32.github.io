#!/bin/sh
cd "${0%/*}" || exit 1
(
cd arm32 || exit 1
dpkg-scanpackages -m ./debs > Packages
bzip2 -fk Packages
)
(
cd arm64 || exit 1
dpkg-scanpackages -m ./debs > Packages
bzip2 -fk Packages
)
