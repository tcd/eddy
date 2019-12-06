module Eddy
  module Data
    # Return the full name of an element with the given id.
    #
    # @param id [String] ID of the Element to look up.
    # @return [Hash]
    def self.find_element_by_id(id)
      data = Eddy::Data.element_ids()
      return data[id] if data.key?(id)
      raise Eddy::Errors::Error, "No element found with id #{id}"
    end
  end
end
