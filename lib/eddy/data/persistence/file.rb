require "fileutils"
require "json"
require "pathname"

module Eddy
  module Data
    module Persistence
      # Persist data to a local JSON file.
      class File < Base

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

        # @return [Hash]
        def data()
          if self.path.file?()
            return JSON.parse(File.read(self.path), symbolize_names: symbolize)
          else
            return self.default_data()
          end
        end

        # Write `data` out to the JSON file. This will overwrite the file's contents.
        #
        # @param data [Hash]
        # @return [void]
        def write(data)
          FileUtils.mkdir_p(self.path.dirname())
          File.open(self.path(), "w+") { |f| f.write(data.to_json) }
        end

        # @return [Array<Integer>]
        def interchange_control_numbers()
          return self.data[:interchange_control_numbers]
        end

        # @param functional_group [String]
        # @return [Array<Integer>]
        def functional_group_control_numbers(functional_group)
          data = self.data()
          unless data[:functional_group_control_numbers].key?(functional_group)
            data[:functional_group_control_numbers][functional_group] = []
          end
          return data[:functional_group_control_numbers][functional_group]
        end

        # @param transaction_set_id [String]
        # @return [Array<Integer>]
        def transaction_set_control_numbers(transaction_set_id)
          data = self.data()
          unless data[:transaction_set_control_numbers].key?(transaction_set_id)
            data[:transaction_set_control_numbers][transaction_set_id] = []
          end
          return data[:transaction_set_control_numbers][transaction_set_id]
        end

        # @param new_ctrl_num [Integer]
        # @return [void]
        def add_interchange_control_number(new_ctrl_num)
          data = self.data()
          data[:interchange_control_numbers].append(new_ctrl_num)
          self.write(data)
          return nil
        end

        # @param functional_group [String]
        # @param new_ctrl_num [Integer]
        # @return [void]
        def add_functional_group_control_number(functional_group, new_ctrl_num)
          data = self.data()
          unless data[:functional_group_control_numbers].key?(functional_group)
            data[:functional_group_control_numbers][functional_group] = []
          end
          data[:functional_group_control_numbers][functional_group].append(new_ctrl_num)
          self.write(data)
          return nil
        end

        # @param transaction_set_id [String]
        # @param new_ctrl_num [Integer]
        # @return [void]
        def add_transaction_set_control_number(transaction_set_id, new_ctrl_num)
          data = self.data()
          unless data[:transaction_set_control_numbers].key?(transaction_set_id)
            data[:transaction_set_control_numbers][transaction_set_id] = []
          end
          data[:transaction_set_control_numbers][transaction_set_id].append(new_ctrl_num)
          self.write(data)
          return nil
        end

        protected

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
