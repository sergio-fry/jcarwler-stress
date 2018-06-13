#!/bin/bash
set -e

if [ "$1" = 'crawl' ]; then
  ./run.sh
  exit 0
fi

exec "$@"
