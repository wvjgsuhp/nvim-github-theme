#!/usr/bin/env bash
rm -r ./lua

colorgen-nvim ./github.toml
mv ./github/lua ./
# mv ./lua/github ./lua/github-theme

# sed -i "s/require('github.palette')/require('github-theme.palette')/" ./lua/github-theme/theme.lua
# sed -i "s/require('github.theme')/require('github-theme.theme')/" ./lua/github-theme/init.lua

rm -r ./github
