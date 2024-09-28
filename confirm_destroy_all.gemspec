# frozen_string_literal: true

require_relative "lib/confirm_destroy_all/version"

Gem::Specification.new do |spec|
  spec.name = "confirm_destroy_all"
  spec.version = ConfirmDestroyAll::VERSION
  spec.authors = ["Leônidas Amorim"]
  spec.email = ["leonidasamorim@gmail.com"]

  spec.summary = "A Rails gem to confirm before running destroy_all"
  spec.description   = "A Rails gem that overrides ActiveRecord's destroy_all method to ask for confirmation before deleting records."
  spec.homepage = "https://github.com/leonidasamorim/confirm_destroy_all"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/leonidasamorim/confirm_destroy_all"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/leonidasamorim/confirm_destroy_all"
  spec.metadata["changelog_uri"] = "https://github.com/leonidasamorim/confirm_destroy_all"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib/**/*"] # Inclui todos os arquivos dentro da pasta lib
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activerecord", "~> 6.0" # ou a versão que você deseja
  spec.add_development_dependency "sqlite3", "~> 1.4" # Ou a versão que você deseja, mas assegure-se de que é compatível
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  # build: gem build confirm_destroy_all.gemspec

end
