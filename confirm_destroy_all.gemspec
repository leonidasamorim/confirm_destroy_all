# frozen_string_literal: true

require_relative 'lib/confirm_destroy_all/version'

Gem::Specification.new do |spec|
  spec.name = 'confirm_destroy_all'
  spec.version = ConfirmDestroyAll::VERSION
  spec.authors = ['Leônidas Amorim']
  spec.email = ['leonidasamorim@gmail.com']

  spec.summary = 'A Rails gem to confirm before running destroy_all'
  spec.description = "A Rails gem that overrides ActiveRecord's destroy_all method to ask for confirmation before deleting records."
  spec.homepage = 'https://github.com/leonidasamorim/confirm_destroy_all'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.license = 'MIT'

  spec.files = Dir['lib/**/*'] 
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_development_dependency 'activerecord', '~> 6.0' # ou a versão que você deseja
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'sqlite3', '~> 1.4' # Ou a versão que você deseja, mas assegure-se de que é compatível
end
