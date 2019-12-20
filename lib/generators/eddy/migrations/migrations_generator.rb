require "rails/generators"
require "rails/generators/active_record"

module Eddy
  module Generators
    # Generate migrations to set up database tables for use by Eddy.
    #
    # See:
    #
    # - [Rails Guides - Generators](https://edgeguides.rubyonrails.org/generators.html)
    # - [`Rails::Generators::Migration`](https://api.rubyonrails.org/classes/Rails/Generators/Migration.html)
    # - [StackOverflow Question](https://stackoverflow.com/questions/53212961/how-to-make-a-custom-generator-which-also-generates-a-migration-in-rails)
    # - ["index: true" in Rails migrations does not work as you'd expect](https://makandracards.com/makandra/32353-psa-index-true-in-rails-migrations-does-not-work-as-you-d-expect)
    class MigrationsGenerator < Rails::Generators::Base

      include Rails::Generators::Migration
      desc "This generator creates a migration file in db/migrate that will set up database tables for use by Eddy"
      source_root File.expand_path("templates", __dir__)

      # @return [void]
      def generate_migration
        migration_template(
          "migration.rb.erb",
          "db/migrate/#{self.migration_file_name()}",
          migration_version: self.migration_version(),
        )
      end

      # @return [String]
      def migration_file_name()
        return "create_eddy_tables.rb"
        # return "#{self.timestamp()}_create_eddy_tables.rb"
      end

      # @return [String]
      def timestamp()
        return Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      # @return [String]
      def migration_version()
        return "[#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}]"
      end

      # for generating a timestamp when using `create_migration`
      # Sole from - https://github.com/thoughtbot/clearance/blob/master/lib/generators/clearance/install/install_generator.rb#L116
      def self.next_migration_number(dir)
        ActiveRecord::Generators::Base.next_migration_number(dir)
      end

    end
  end
end
