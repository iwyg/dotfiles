#!/usr/bin/env sh
set -e

current=$PWD
cd '/usr/local/bin'

v=`dirname \`readlink -n /usr/local/bin/php | xargs\``
v=`dirname \`dirname $v | xargs\``
v=`basename $v`

echo "$v" | xargs

cd $current
