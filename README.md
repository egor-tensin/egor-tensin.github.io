# Egor Tensin

This is my website hosted on [GitHub Pages](https://pages.github.com) at https://egor-tensin.github.io/.

## Installation

[Jekyll](http://jekyllrb.com/) is used to build a set of static HTML pages from a collection of templates and resources.
Jekyll doesn't support Windows, however at the moment of writing one can get it to work using the excellent tutorial at http://jekyll-windows.juthilo.com/.

I'm using [Bundler](http://bundler.io/) to set up a development environment.
After the `bundler` gem is installed, project dependencies can be installed by running

    bundle install

in the project's root directory.

## Development

To run a local web server, run

    bundle exec jekyll serve --watch

from the project's root directory.
You can then review your changes at http://localhost:4000/.

Please note that the support for `--watch`ing for modification on Windows is kind of iffy at the moment of writing.
One possible workaround is to add `--force_polling` to `jekyll`s options:

    bundle exec jekyll serve --watch --force_polling

It might still not work though, so you might end up having to re-run `jekyll` manually.
For details, refer to http://jekyll-windows.juthilo.com/4-wdm-gem/.

## Licensing

This project, including all of the files and their contents, is licensed under the terms of the MIT License.
See LICENSE.txt for details.

This website is build upon the Twitter Bootstrap framework, which is also MIT Licensed and copyright 2015 Twitter.
