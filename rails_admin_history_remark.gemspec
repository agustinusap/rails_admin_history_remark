$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_admin_history_remark/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_history_remark"
  s.version     = RailsAdminHistoryRemark::VERSION
  s.authors     = ["Agustinus AP"]
  s.email       = ["agustinus.ap@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminHistoryRemark."
  s.description = "TODO: Description of RailsAdminHistoryRemark."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
end
