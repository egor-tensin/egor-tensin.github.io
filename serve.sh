#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

script_name="$( basename -- "${BASH_SOURCE[0]}" )"

case "$#" in
    0) ;;
    1)
        dest_dir="$1"
        ;;
    *)
        echo "usage: $script_name [DEST_DIR]" >&2
        exit 1
esac

bundle exec jekyll serve                    \
    --config _config.yml,_config_dev.yml    \
    ${dest_dir+--destination "${dest_dir}"} \
    --force_polling                         \
    --host 0.0.0.0                          \
    --watch
