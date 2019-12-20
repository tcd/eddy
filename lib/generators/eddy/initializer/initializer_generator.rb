require "rails/generators"

module Eddy
  module Generators
    # Generate an initializer file for Eddy.
    class InitializersGenerator < Rails::Generators::Base
      desc "This generator creates an initializer file at config/initializers/eddy.rb for Eddy"
      source_root File.expand_path("templates", __dir__)

      # @return [void]
      def copy_initializer
        template "eddy.rb.erb", "config/initializers/eddy.rb"
      end

    end
  end
end
