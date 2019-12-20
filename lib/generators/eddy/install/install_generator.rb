require "rails/generators"

module Eddy
  module Generators
    # Generate config & initializer files for Eddy.
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path("templates", __dir__)

      # @return [void]
      def copy_initializer
        template "eddy.rb.erb", "config/initializers/eddy.rb"
      end

      # @return [void]
      def copy_config
        template "eddy.yml.erb", "config/eddy.yml"
      end

    end
  end
end
