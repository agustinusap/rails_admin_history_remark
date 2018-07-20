# RailsAdminHistoryRemark

Add `remark` field to versions table.

## Installation
To enable **rails_admin_history_remark**, add the following to your `Gemfile` ensuring it is added *after* rails_admin:

```ruby
gem 'rails_admin'
gem 'rails_admin_history_remark'
```

It should go without saying that this plugin also requires the paper_trail gem.

E.g. `gem 'paper_trail'`

## Configuration

Enable paper_trail on your model

```bash
$ rails generate paper_trail:install --with-changes
```

In the `rails_admin.rb` initializer, uncomment the following lines to enable auditing:

```ruby
history_index
history_show
```

For activerecord, generate migration:
```bash
$ rails generate rails_admin_history_remark:migration

```

Then migrate:
```bash
$ rails db:migrate
```

## Notes

Inspired by [rails_admin_history_rollback](https://raw.githubusercontent.com/jemcode/rails_admin_history_rollback)

Unfortunately it's not compatible yet to run it side by side.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
