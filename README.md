[![Build Status](https://travis-ci.org/denmarkmeralpis/api_queries.svg?branch=master)](https://travis-ci.org/denmarkmeralpis/api_queries) [![Maintainability](https://api.codeclimate.com/v1/badges/93675db98a1701fb4686/maintainability)](https://codeclimate.com/github/denmarkmeralpis/api_queries/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/93675db98a1701fb4686/test_coverage)](https://codeclimate.com/github/denmarkmeralpis/api_queries/test_coverage) [![Gem Version](https://badge.fury.io/rb/api_queries.svg)](https://badge.fury.io/rb/dm_filter)
# DmFilter

DmFilter is a very light weight Rails plugin that makes it easy to fetch your ActiveRecord lists using date or text as a parameter.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dm_filter', '~> 0.0.3'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dm_filter -v 0.0.3

include this into your model(example Invoice)
##### invoice.rb
```ruby
include DmFilter::Base
```

## Usage
#### Values for `duration`
1. `all` (default)
2. `today`
3. `yesterday`
4. `this_week`
5. `this_month`
6. `last_month`
7. `period`

#### Available options
1. `duration`(default is `all`)
2. `from`(if `day` is equal to `period`)
3. `to`(if `day` is equal to `period`)
4. `column_date` (default is `created_at`)

#### Example
```ruby
Invoice.dm_get({ duration: 'today', column_date: 'paid_at' })
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/denmarkmeralpis/dm_filter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
