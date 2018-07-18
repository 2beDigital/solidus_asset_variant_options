Solidus Asset Variant Options
=============================

Adds the ability for admins to use the same image asset for multiple variants.
Originally a fork of [jpdesigndev/spree_asset_variant_options](https://github.com/jpdesigndev/spree_asset_variant_options).

[![Build Status](https://travis-ci.org/solidusio/solidus_asset_variant_options.svg?branch=master)](https://travis-ci.org/solidusio/solidus_asset_variant_options)

Installation
------------

Add solidus_asset_variant_options to your Gemfile:

```ruby
gem "solidus_asset_variant_options"
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_asset_variant_options:install
```

Since this extension changes the way images are associated, if you've got any
existing ones you'll need to add the association back in. This can be
accomplished by running:

```ruby
Spree::Image.find_each do |image|
  if image.viewable_type == "Spree::Variant"
    image.variants << image.viewable
  end
end
```

Afterwards it is recommended to consolidate the images in the admin.

Testing
-------

PENDING UPDATE TEST

First bundle your dependencies, then run `rake`. `rake` will default to
building the dummy app if it does not exist, then it will run specs. The dummy
app can be regenerated by using `rake test_app`.

```shell
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require "spree_asset_variant_options/factories"
```
