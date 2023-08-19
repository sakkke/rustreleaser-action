#!/bin/sh -l

# Need hardcoding for GitHub Actions

# rustup shell setup
# affix colons on either side of $PATH to simplify matching
case ":${PATH}:" in
  *:"/home/build/.cargo/bin":*)
    ;;
  *)
    # Prepending path in case a system-installed rustc needs to be overridden
    export PATH="/home/build/.cargo/bin:$PATH"
    ;;
esac

exec /entrypoint.nu
