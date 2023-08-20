#!/bin/sh -l

exec docker run \
  --mount type=bind,src="$GITHUB_WORKSPACE",dst=/work \
  --rm \
  ghcr.io/sakkke/rustreleaser:main
