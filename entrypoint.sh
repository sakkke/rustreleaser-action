#!/bin/sh -l

# Need hardcoding for GitHub Actions
. /home/build/.cargo/env

exec /entrypoint.nu
