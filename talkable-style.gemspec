# coding: utf-8
lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "talkable/style/version"

Gem::Specification.new do |spec|
  spec.name          = "talkable-style"
  spec.version       = Talkable::Style::VERSION
  spec.authors       = ["Talkable"]
  spec.email         = ["dev@talkable.com"]

  spec.summary       = "Talkable style guides and shared style configs."
  spec.homepage      = "https://github.com/talkable/talkable-style"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
    spec.metadata["homepage_uri"]      = spec.homepage
    spec.metadata["source_code_uri"]   = spec.homepage
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.11.0"
  spec.add_dependency "rubocop-performance", "~> 1.10.0"
  spec.add_dependency "rubocop-rails", "~> 2.9.1"
  spec.add_dependency "rubocop-rake", "~> 0.5.1"
  spec.add_dependency "rubocop-rspec", "~> 2.2.0"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
