module Eddy
  module Element
    # Base class for EDI Data Element types.
    class Base

      # Positive number under 1688, or I01-I64
      # @return [String]
      attr_reader :id
      # @return [String]
      attr_reader :name
      # @return [String]
      attr_reader :description
      # One of: AN, B, DT, ID, N, R, or TM
      # @return [String]
      attr_reader :type
      # Minimum length for a valid value
      # @return [Integer]
      attr_reader :min
      # Maximum length for a valid value
      # @return [Integer]
      attr_reader :max

      # @note Classes inheriting from `Eddy::Element::Base` must define the method `value`.
      # @return [void]
      def value(*)
        raise NotImplementedError, "Classes inheriting from `Eddy::Element::Base` must define a `value` method."
      end

      # @note Classes inheriting from `Eddy::Element::Base` must define the method `value=`.
      # @return [void]
      def value=(*)
        raise NotImplementedError, "Classes inheriting from `Eddy::Element::Base` must define a `value=` method."
      end

      # Indicates whether the value must be present in its segment.
      #
      # | code  | description |  official  |
      # | ----- | ----------- | ---------- |
      # | **M** | Mandatory   | yes        |
      # | **O** | Optional    | yes        |
      # | **C** | Conditional | yes        |
      # | F     | Floating    | deprecated |
      # | R     | Required    | no         |
      # | S     | Situational | no         |
      # | A     | Advised     | no         |
      # | N     | Not Advised | no         |
      # | N     | Not Used    | no         |
      # | X     | Not Used    | no         |
      # | X     | Conditional | no         |
      #
      # See:
      #
      # - [The Data Segment - EDIdEv](https://secure.edidev.net/edidev-ca/help/Using/Using_EDI/Using_AscX12/DataStructures/DataSegment/DataSegment.htm)
      # - [Required vs Mandatory in Code Descriptions - X12 RFI](http://www.x12.org/rfis/Required%20vs%20Mandatory%20in%20Code%20Descriptions.pdf)
      #
      # @return [String]
      def req
        return @req
      end

      # (see #req)
      #
      # @param req [String, nil]
      # @return [void]
      def req=(req)
        if req.nil?
          @req = "O"
          return
        end
        raise ArgumentError, req.to_s unless req.is_a?(String)
        case req.upcase
        when "M", "R" then @req = "M"
        when "O"      then @req = "O"
        when "C", "X" then @req = "C"
        when "F" then raise Eddy::Errors::Error, "Req value 'F' not supported"
        else raise Eddy::Errors::Error, "Invalid argument for `req=`: #{req}"
        end
      end

      # Generate a description to use as a doc comment for an element.
      #
      # @param header [Boolean] (true)
      # @return [Hash]
      def doc_comment(header: true)
        if header
          return <<~END.strip
            ### Element Summary:

            - Id: #{self.id}
            - Name: #{self.name}
            - Type: #{self.type}
            - Min/Max: #{self.min}/#{self.max}
            - Description: #{self.description}
          END
        else
          return <<~END.strip
            - Id: #{self.id}
            - Name: #{self.name}
            - Type: #{self.type}
            - Min/Max: #{self.min}/#{self.max}
            - Description: #{self.description}
          END
        end
      end

      # @return [String]
      def normalized_name
        return "" if self.name.nil? # For testing base elements.
        return Eddy::Util.normalize_name(self.name)
      end

    end
  end
end
