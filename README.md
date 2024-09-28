# Gem ConfirmDestroyAll 

A Rails gem that overrides ActiveRecord's destroy_all method to ask for confirmation before deleting all records using `.destroy_all`.

The purpose of the gem is to provide you with a confirmation screen to avoid deleting all records from the database. The idea is to prevent the .destroy_all command from being executed in a *PRODUCTION* environment.




## Installation

Add this line to your Gemfile:

```ruby
group :production do
  gem 'confirm_destroy_all'
end
```

And then execute:

```bash
$ bundle
```
## Usage

When you are in a Ruby console and need to destroy multiple records, run `rails console`: 

```
$ rails console
```

```
Loading production environment (Rails 7.0.6)

irb(main):001> MyModel.destroy_all

You are in the PRODUCTION environment:
Are you sure you want to destroy all records for MyModel? Type 'yes' to proceed:

```

This will prevent you from running .destroy_all in a production environment without first confirming that this is what you really want.

## Test
To run all rspec tests:

```
$ spec
``` 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/leonidasamorim/confirm_destroy_all. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.



## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
