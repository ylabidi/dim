#!/usr/bin/bash

rm -rf node_modules/ build yarn.lock .yarn/ .pnp.*
touch yarn.lock
yarn install
yarn run prettier --check --ignore-unknown src
yarn run eslint --ext .js,.jsx,.ts,.tsx src
yarn build

