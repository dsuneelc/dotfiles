#!/usr/bin/bash

set -o nounset  # error when referencing undefined variable
set -o errexit  # exit when command fails

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ] 
then
    echo '{"dependencies": {}}' > package.json
fi

# Extensions to be installed
npm install \
    coc-snippets coc-pyright coc-json coc-yaml coc-explorer \
    coc-vimlsp coc-prettier \
    --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
