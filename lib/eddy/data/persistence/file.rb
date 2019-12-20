require "fileutils"
require "json"
require "pathname"

module Eddy
  module Data
    module Persistence
      # Persist data to a local JSON file.
      class File < Memory

        # @return [void]
        def initialize()
          if path.file?
            self.read()
          else
            super()
          end
        end

        # Renturn a [Pathname](https://ruby-doc.org/stdlib-2.5.0/libdoc/pathname/rdoc/Pathname.html) to the JSON file used for storage.
        #
        # See:
        #
        # - [FileTest](https://ruby-doc.org/core-2.5.0/FileTest.html#method-i-file-3F)
        #
        # @return [Pathname]
        def path()
          file = File.join(Eddy.config.tmp_dir, "eddy_persistent_data.json")
          # FileUtils.mkdir_p(File.dirname(file))
          return Pathname.new(file)
        end

        # Read the JSON file into `@data`.
        #
        # @return [void]
        def read()
          @data = JSON.parse(File.read(self.path()), symbolize_names: symbolize)
        end

        # Write `@data` out to the JSON file. This will overwrite the file's contents.
        #
        # @return [void]
        def write()
          File.open(self.path(), "w") do |f|
            f.write(@data.to_json)
          end
        end

      end
    end
  end
end
