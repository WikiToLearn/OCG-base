#!/bin/bash
cd "$(dirname "$(readlink "$0" || printf %s "$0")")"

docker build -t wikitolearn/ocg-base:0.4 .
