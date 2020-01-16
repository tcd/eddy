require "fileutils"
require "json"
require "pathname"

module Eddy
  module Data
    module Persistence
      # Persist data to a local JSON file.
      class JSONFile < Base

        # @return [Pathname]
        attr_accessor :path

        # @param path [String, Pathname] Path to the JSON file used to hold data.
        # @return [void]
        def initialize(path = self.default_path())
          if !path.is_a?(Pathname)
            self.path = Pathname.new(path)
          else
            self.path = path
          end
        end

        # Clear persisted data.
        #
        # @return [void]
        def reset()
          self.write(self.default_data())
          return nil
        end

        # @return [Hash]
        def data()
          if self.path.file?()
            puts("reading persisted data")
            return JSON.parse(File.read(self.path), symbolize_names: true)
          else
            return self.default_data()
          end
        end

        # @return [Array<Integer>]
        def interchange_control_numbers()
          return self.data[:interchange_control_numbers]
        end

        # @param set_id [String]
        # @return [Array<Integer>]
        def transaction_set_control_numbers(set_id)
          data = self.data()
          unless data[:transaction_set_control_numbers].key?(set_id)
            data[:transaction_set_control_numbers][set_id] = []
          end
          self.write(data)
          return data[:transaction_set_control_numbers][set_id]
        end

        # @param number [Integer]
        # @return [void]
        def add_interchange_control_number(number)
          data = self.data()
          data[:interchange_control_numbers].append(number)
          self.write(data)
          return data[:interchange_control_numbers]
        end

        # @param set_id [String]
        # @param number [Integer]
        # @return [void]
        def add_transaction_set_control_number(set_id, number)
          dat = self.data().dup
          unless dat[:transaction_set_control_numbers].key?(set_id)
            dat[:transaction_set_control_numbers][set_id] = []
          end
          dat[:transaction_set_control_numbers][set_id].append(number)
          self.write(dat)
          return dat[:transaction_set_control_numbers][set_id]
        end

        protected

        # Write `data` out to the JSON file. This will overwrite the file's contents.
        #
        # @param data [Hash]
        # @return [void]
        def write(data)
          FileUtils.mkdir_p(self.path.dirname())
          File.open(self.path(), "w+") { |f| f.write(data.to_json) }
        end

        # @return [Pathname]
        def default_path()
          file = File.join(Eddy.config.tmp_dir, "eddy_persistent_data.json")
          return Pathname.new(file)
        end

        # Return an empty default data hash.
        #
        # @return [Hash]
        def default_data()
          return {
            interchange_control_numbers: [],
            functional_group_control_numbers: {},
            transaction_set_control_numbers: {},
          }
        end

      end
    end
  end
end
