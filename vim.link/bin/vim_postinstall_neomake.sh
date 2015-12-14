#!/usr/bin/env sh

# Install Javascript Linter:
npm install -g eslint jsxhint jscs || true

# install php linter
composer global require squizlabs/php_codesniffer --no-interaction || true
