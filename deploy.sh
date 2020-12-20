#!/bin/bash

set -Eexuo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "${DIR}/bfallik.github.io"
git add -A
git commit -m 'generated by Hugo'
git push origin HEAD:master