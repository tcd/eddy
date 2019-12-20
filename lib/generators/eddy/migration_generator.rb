require "rails/generators"

module Eddy
  module Generators
    # Generate migrations to set up database tables for use by Eddy.
    #
    # See:
    #
    # - https://api.rubyonrails.org/classes/Rails/Generators/Migration.html
    class MigrationGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path("templates", __dir__)

    end
  end
end
