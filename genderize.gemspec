$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "genderize/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "genderize"
  s.version     = Genderize::VERSION
  s.authors     = ["Bodacious"]
  s.email       = ["bodacious@katanacode.com"]
  s.homepage    = "http://katanacode.github.io/genderize/"
  s.license     = "MIT"
  s.summary     = "A helpful class for gender-specific models in Ruby applications"
  s.description = "A helpful class for gender-specific models in Ruby applications. Genderize adds useful helper methods for various pronouns and other written forms of male and female genders."
  
  s.files = Dir["{app,config,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 3.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "spring"  
  s.add_development_dependency "rspec-rainbow"
  s.add_development_dependency "pry"
end
