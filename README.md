# talkable-style

Talkable shared style configs.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem "talkable-style"
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency "talkable-style"
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  talkable-style:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. Talkable-style will include a specific version of `rubocop` and `rubocop-*` that is shared across all projects.
