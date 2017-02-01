#!/bin/sh

bundle exec jekyll serve --watch --force_polling --host 0.0.0.0 --config _config.yml,_config_dev.yml
