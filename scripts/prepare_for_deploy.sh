#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="${__dir}/.." # <-- change this as it depends on your app


cd ${__root}/_result/html
git init
git add .
git commit -m "Generated from source branch: `cd ${__root} && git log -1 --oneline`"
git remote add origin "https://$MY_TOKEN@github.com/samakhov/esug-ecstatic.git"
git fetch
echo "GH PAGES Setup finished"
