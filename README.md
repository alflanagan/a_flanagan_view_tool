# AFlanaganViewTool

> A copy of the Devcamp View Tool from Dissecting RoR course (udemy.com)

Various view specific methods for applications I use.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'a_flanagan_view_tool'
```

And then execute:

> $ bundle

Or install it yourself as:

> $ gem install a_flanagan_view_tool

## Usage

```ruby
  def set_copyright
    @copyright = AFlanaganDevcampViewTool::Renderer.copyright(
      'A Lloyd Flanagan',
      'All rights reserved'
    )
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/alflanagan/a_flanagan_view_tool](https://github.com/alflanagan/a_flanagan_view_tool).
