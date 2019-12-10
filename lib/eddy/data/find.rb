module Eddy
  module Data
    module Find

      # Return a hash of data about the Element with the given id.
      #
      # For a more lightweight alternative, see {element_name_by_id}.
      #
      # @param id [String] ID of the Element to look up.
      # @return [Hash]
      def self.element_data_by_id(id)
        data = Eddy::Data.raw_element_data()
        id.upcase!
        result = data.find { |el| el[:id] == id }
        raise Eddy::Errors::Error, "No element found with id #{id}" if result.nil?
        return result
      end

      # Return the full name of an Element with the given id.
      #
      # For fetching more data, see {element_data_by_id}.
      #
      # @param id [String] ID of the Element to look up.
      # @return [Hash]
      def self.element_name_by_id(id)
        data = Eddy::Data.element_ids()
        return data[id] if data.key?(id)
        raise Eddy::Errors::Error, "No element found with id #{id}"
      end

      # Return the full name of a Segment with the given id.
      #
      # @param id [String] ID of the Segment to look up.
      # @return [Hash]
      def self.segment_name_by_id(id)
        data = Eddy::Data.segment_ids()
        return data[id] if data.key?(id)
        raise Eddy::Errors::Error, "No segment found with id #{id}"
      end

    end
  end
end
