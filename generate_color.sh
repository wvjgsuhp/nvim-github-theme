#!/usr/bin/env bash
rm -r ./lua

colorgen-nvim ./github.toml
mv ./github/lua ./

rm -r ./github
