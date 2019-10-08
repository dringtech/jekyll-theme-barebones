# jekyll-theme-barebones

Stupidly barebones (but secretly not...) Jekyll theme.

## Installation

If you're running on Github Pages, or have the [Jekyll Remote Theme](https://github.com/benbalter/jekyll-remote-theme)
plugin installed, you can simply add the following to your `_config.yml` file to use the theme:

```yaml
remote_theme: dringtech/jekyll-theme-barebones
```

Alternatively (and only after I get round to it!), add this line to your Jekyll site's
`Gemfile`:

```ruby
gem "jekyll-theme-barebones"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: barebones
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install barebones

## Usage

The theme is very plain to look at, but designed to be highly extensible.

### Layouts

There is a deep nesting of layouts: mostly, you'll want to use either `page` or `post` layouts.
These both extend from `default`, which defines the header, section/main, and footer elements.
This resolves the `header` and `footer` includes in the relevant places, so if you want to override
those, better to inject your new code there. If you want to completely alter the way the site renders
the body, this is the place to do it. This layout extends `base`, so if you continue to do so, and drop
in `{{ content }}` somewhere, it should all continue to work.

The `base` layout drops in the html head elements, including the `seo` tag, and renders `{{ content }}`
directly within the `body` tag. At the root of everything is the [`compress` layout](https://github.com/penibelst/jekyll-compress-html)
courtesy Anatol Broder. This ensures that the HTML is nice and efficient. Operation of `compress` can be controlled
through the config file. Please refer to the [excellent documentation](http://jch.penibelst.de/).

### Includes

There are a couple of includes which may be usefully overriden:

* `header.html` Defines the inner content of the header block  
   Defaults to the site title as set in `_config.yml`
* `footer.html` Defines the inner content of the footer block  
   Defaults to blank.
* `head.html` Defines content which will be inserted into the HTML head block. Stylesheets, javascripts, etc.  
   Defaults to blank.

The `header` and `footer` elements are owned by the default layout.

### Assets

The only asset is `assets\style.scss`. This is the very simple entry point to all the css generation. It imports
two partials: `reset` and `style`. The reset is a Meyerweb 2.0 vanilla. `style` is what you should override and
use as the entrypoint for all your configuration.

### Styles

The styles imported by the main asset are:

* `reset` Meyerweb Reset 2.0
* `style` Entrypoint for theme customisation

These are all located in and can be overridden in the `_sass` folder.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dringtech/jekyll-theme-barebones. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `barebones.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

