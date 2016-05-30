$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'certbot/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'certbot'
  s.version     = Certbot::VERSION
  s.authors     = ['BetterUp Developers']
  s.email       = ['developers@betterup.co']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of Certbot.'
  s.description = 'TODO: Description of Certbot.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.2.6'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
end
