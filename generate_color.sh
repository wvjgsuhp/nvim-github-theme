#!/usr/bin/env bash
rm -r ./lua

colorgen-nvim ./github.toml
mv ./github/lua ./
mv ./lua/github ./lua/github-theme

rm -r ./github
