module RailsAdminHistoryRemark
  class Engine < ::Rails::Engine
    initializer "RailsAdminHistoryRemark precompile hook" do |app|
      app.config.assets.precompile += [
        'rails_admin/ra.history.js',
        'rails_admin/ra.history.scss'
      ]
    end
  end
end
