[![Build Status](https://travis-ci.org/a-b/hall.png?branch=master)](https://travis-ci.org/a-b/hall) [![Code Climate](https://codeclimate.com/github/a-b/hall.png)](https://codeclimate.com/github/a-b/hall)
# Hall

Simple client for corporate chat [Hall.com](https://hall.com)

## Installation

Add this line to your application's Gemfile:

    gem 'hall'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hall

## Usage

```ruby

require 'hall'

  # Grab your room token at https://hall.com/docs/integrations/generic/

hall = Hall::Client.new('room token goes here', 'integration name', 'url to the picture')
hall.post_message('my message')

```

## TODO

1. Add html message support
2. Add picture support *done*
3. Add Rake task (require configuration)
4. Add Capistrano

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
