$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "better_routes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "better_routes"
  s.version     = BetterRoutes::VERSION
  s.authors     = ["msroz"]
  s.email       = ["masaru95__at__gmail.com"]
  s.homepage    = "https://github.com/msroz/better_routes"
  s.summary     = "Print rails routes with formats for development;)"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "actionpack", ">= 5.0.0"
  s.add_dependency "activesupport", ">= 5.0.0"
  s.add_dependency "railties", ">= 5.0.0"

end
