$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nofly/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nofly"
  s.version     = Nofly::VERSION
  s.authors     = ["Josh Dean", "Chalkle.com"]
  s.email       = ["jdbdean@gmail.com"]
  s.homepage    = "https://github.com/Jdbdean/nofly"
  s.summary     = "Nofly - don't write notifications on the fly. Nofly wraps communications about a particular event on an object so you can write managable code."
  s.description = "When we send communications to users it is usually in response to an event. Users often have their own communications preferences (when/how/what). This logic can easily become complicated and so I developed Nofly to abstract it and let the core application only worry about knowing what event happened to which object/record."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency 'bundler'
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"

end
