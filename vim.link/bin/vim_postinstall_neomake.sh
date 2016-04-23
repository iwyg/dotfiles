#!/usr/bin/env sh

# Install Javascript Linter:
npm install -g eslint babel-eslint eslint-plugin-react jsxhint jscs || true

# install php linter
composer global require squizlabs/php_codesniffer --no-interaction || true
