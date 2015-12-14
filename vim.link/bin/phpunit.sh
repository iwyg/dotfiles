#!/usr/bin/env sh

phpv=`sh ~/.vim/bin/whichphp.sh`"-xdebug" 
so=`brew list "$phpv" | tail -n1`

echo "/usr/local/bin/php -dzend_extension=$so ./vendor/bin/phpunit" | xargs
