#!/bin/sh

set -e

java -jar /swagger2markup-cli/build/libs/swagger2markup-cli-1.3.3.jar convert -i $1 -f tmp
source ~/.bash_profile && asciidoctor -a toc=left tmp.adoc
rm tmp.adoc
mv tmp.html $2
