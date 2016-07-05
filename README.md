# DmFilter

DmFilter is a very light weight Rails plugin that makes it easy to fetch your ActiveRecord lists using date or text as a parameter.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dm_filter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dm_filter

## Usage
#### Values for `day`
1. `all` (default)
2. `today`
3. `yesterday`
4. `this_week`
5. `this_month`
6. `last_month`
7. `period`

#### Available options
1. `day`
2. `from`(if `day` is equal to `period`)
3. `to`(if `day` is equal to `period`)
4. `column_name` (default is `created_at`)

#### Example
```ruby
Invoice.dm_filter({ day: 'today', column_name: 'paid_at' })
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/denmarkmeralpis/dm_filter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
