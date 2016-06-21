Egor Tensin
===========

This is my website hosted using [GitHub Pages] at
https://egor-tensin.github.io/.

[GitHub Pages]: https://pages.github.com

Installation
------------

[Jekyll] is used to build a set of static HTML pages from a collection of
templates and resources.
It might seem like Jekyll doesn't support Windows very well.
However, at the moment of writing one can get it to work using the excellent
tutorial at http://jekyll-windows.juthilo.com/.
I personally had no problems running Jekyll on Windows whatsoever.

I use [Bundler] to manage project's dependencies.
Make sure you have the `bundler` gem installed; project dependencies can then
be installed by executing

    bundle install

in the project's root directory.

[Jekyll]: https://jekyllrb.com/
[Bundler]: http://bundler.io/

Development
-----------

To run a local web server, execute

    bundle exec jekyll serve --watch --config _config.yml,_config_dev.yml

in the project's root directory.
You can then review your changes at http://localhost:4000/.

If you can't get Jekyll to properly `--watch` for file modifications on
Windows, try adding `--force_polling` to `jekyll`s options:

    bundle exec jekyll serve --watch --force_polling --config _config.yml,_config_dev.yml

It might still not work though, but you can always re-run `jekyll` manually.

Note that `_config_dev.yml` is included to rewrite some of the `site` fields
from `_config.yml` during development.
In particular, it

* sets `minified_externals` to `false` so that the properly formatted versions
of external CSS stylesheets and JavaScript files are included instead of the
`min`ified versions.

Accessing via file://
---------------------

Jekyll doesn't provide native support for generating a static website which can
be browsed without running an instance of Jekyll's web server.
One easy workaround is to `wget` the website and convert the links:

    wget --convert-links --recursive http://localhost:4000/

License
-------

This project, including all of the files and their contents, is licensed under
the terms of the MIT License.
See [LICENSE.txt] for details.

This website is build upon the Twitter Bootstrap framework, which is also MIT
Licensed and copyright 2015 Twitter.

[LICENSE.txt]: LICENSE.txt
