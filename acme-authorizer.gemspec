$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'acme/authorizer/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'acme-authorizer'
  s.version     = Acme::Authorizer::VERSION
  s.authors     = ['BetterUp Developers']
  s.email       = ['developers@betterup.co']
  s.homepage    = 'http://github.com/betterup/acme-authorizer'
  s.summary     = 'Rails engine for generating SSL certificates with ACME challenges'
  s.description = 'Rails engine for generating SSL certificates using the ACME challenge and response method'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 6.0'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'gitx'
end
