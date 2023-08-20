#!/bin/sh -l

exec docker run \
  --mount type=bind,src="$PWD",dst=/work \
  --rm \
  ghcr.io/sakkke/rustreleaser:main
