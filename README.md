## Installation

Add this line to your application's Gemfile:

```ruby
gem 'toshl-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install toshl-ruby

## Usage

```ruby
# Configuration
Toshl.configure do |c|
  c.token = 'e7dy87xd-32h4n2...'
end
```

# Get All Entries

```ruby
response = Toshl::Entry.list()
```

... you get array of hashes back, so you can play around

```ruby
funky_export = Toshl::Entry.list("2017-09-01".to_date.."2017-09-30".to_date).
  map{ |e| e.slice("amount", "date", "desc", "category", "account", "completed", "deleted").
  map{ |k, v| v}.join(",") }.
  join("\n")
```

# Get All Accounts

```ruby
response = Toshl::Account.list()
```

# Get All Categories

```ruby
response = Toshl::Category.list()
```

## Development

After checking out the repo, run `bundle install`. Use `bundle console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Visit [Poviolabs Github](https://github.com/poviolabs) and [Poviolabs](https://www.poviolabs.com)
