# frozen_string_literal: true

require_relative "lib/talkable/style/version"

Gem::Specification.new do |spec|
  spec.name          = "talkable-style"
  spec.version       = Talkable::Style::VERSION
  spec.authors       = ["Talkable"]
  spec.email         = ["dev@talkable.com"]

  spec.summary       = "Talkable style guides and shared style configs."
  spec.homepage      = "https://github.com/talkable/talkable-style"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.59.0"
  spec.add_dependency "rubocop-capybara", "~> 2.20.0"
  spec.add_dependency "rubocop-discourse", "~> 3.6.0"
  spec.add_dependency "rubocop-factory_bot", "~> 2.25.1"
  spec.add_dependency "rubocop-gitlab-security", "~> 0.1.1"
  spec.add_dependency "rubocop-graphql", "~> 1.5.0"
  spec.add_dependency "rubocop-performance", "~> 1.20.2"
  spec.add_dependency "rubocop-rails", "~> 2.23.1"
  spec.add_dependency "rubocop-rake", "~> 0.6.0"
  spec.add_dependency "rubocop-rspec", "~> 2.26.1"
end
