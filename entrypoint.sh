#!/bin/sh -l

repository="$(basename "$GITHUB_REPOSITORY")"
src="/home/runner/work/$repository/$repository"

exec docker run \
  --mount type=bind,src="$src",dst=/work \
  --rm \
  ghcr.io/sakkke/rustreleaser:main
