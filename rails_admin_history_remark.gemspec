$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_admin_history_remark/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_history_remark"
  s.version     = RailsAdminHistoryRemark::VERSION
  s.authors     = ["Agustinus AP"]
  s.email       = ["agustinus@bocistudio.com"]
  s.homepage    = "https://github.com/agustinusap/rails_admin_history_remark"
  s.summary     = "History remark with paper_trail for rails_admin"
  s.description = "Enable user to add remark into versions and see changes in a better view."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0"
  s.add_dependency "rails_admin", ">= 1.3"
  s.add_dependency "paper_trail", ">= 1.6.5"
end
