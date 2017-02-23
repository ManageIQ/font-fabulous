# Font Fabulous

Font Fabulous is a suite of pictographic icons for scalable vector graphics designed for the ManageIQ open-source Management Platform but available to everyone. Font Fabulous fills a gap not covered by other popular icon collections.

## Installation

The package is available as a Rubygem, a Bower and an NPM package. The package name is for each the same: `font-fabulous`.

## Usage

Simply include the (S)CSS file in your HTML code and create `<i>` elements with the desired CSS classes:

```html
<i class="ff ff-tenant"></i>
```

You can find the supported icons under `assets/images/font-fabulous`, all the CSS classes are generated from the filenames.

### Ruby on Rails

If installed as a gem, it is possible to include it to the Rails Asset Pipeline by adding the following lines into an scss file:

```scss
@import "font-fabulous-rails";
```

## Development

After checking out the repo, run `bundle install` to install dependencies. You might have to take a look at the [installation instructions](https://github.com/FontCustom/fontcustom#installation) for the `fontcustom` gem. Unfortunately, the gem requires Python2 support and it might fail if Python3 is installed on your machine. To bypass this issue, we created a Docker container that contains all the correct dependencies. You can build this container by calling `rake docker:init`, but be careful as it removes all orphaned and untagged containers from your system.

You can add new icons as svg files into the `assets/images/font-fabulous` folder and run `rake compile` or `rake docker:compile` to generate the fonts.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `lib/font-fabulous/version.rb`, `bower.json` and `package.json`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, push the `.gem` file to [rubygems.org](https://rubygems.org) and publish the NPM package.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ManageIQ/Font-Fabulous. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [Apache License 2.0](http://opensource.org/licenses/Apache-2.0).
