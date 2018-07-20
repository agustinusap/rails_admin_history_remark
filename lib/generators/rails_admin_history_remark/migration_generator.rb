require 'rails/generators'
require 'rails/generators/active_record'

module RailsAdminHistoryRemark
  class MigrationGenerator < Rails::Generators::Base
    include ActiveRecord::Generators::Migration
    source_root File.expand_path('../templates', __FILE__)

    desc 'RailsAdmin History Remark migration generator'
    def install
      migration_template "migration.rb", "db/migrate/add_remark_to_versions.rb"
    end
  end
end
