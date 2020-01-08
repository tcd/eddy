module Eddy
  module Models
    module Element
      # Base class for EDI Data Element types.
      # @abstract
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
        # String used to identify a data element within a Segment.
        # @return [String]
        attr_accessor :ref

        # @return [void]
        def initialize()
          @val = nil
          @req = nil
        end

        # @note Classes inheriting from `Eddy::Models::Element::Base` must override the method `#value=`.
        # @return [void]
        def value=(*)
          raise NotImplementedError, "Classes inheriting from `Eddy::Models::Element::Base` must override the method `#value=`"
        end

        # @note Classes inheriting from `Eddy::Models::Element::Base` must override the method `#value`.
        # @return [Object]
        def value()
          if @val == :skip
            return ""
          elsif @val.nil?
            case self.req
            when "M"      then raise Eddy::Errors::ElementNilValueError.new(element: self)
            when "O", "C" then return ""
            else raise Eddy::Errors::Error, "Invalid req value: #{self.req}"
            end
          end
          return self.process_value()
        end

        # Return a valid EDI string representation of `@value`.
        #
        # @note Classes inheriting from `Eddy::Models::Element::Base` must override the method `#process_value`.
        # @return [void]
        def process_value(*)
          raise NotImplementedError, "Classes inheriting from `Eddy::Models::Element::Base` must override the method `#process_value`"
        end

        # Return a valid EDI string representation of `@value`.
        #
        # @note Classes inheriting from `Eddy::Models::Element::Base` must override the class the method `process_value`.
        # @return [void]
        def self.process_value(*)
          raise NotImplementedError, "Classes inheriting from `Eddy::Models::Element::Base` must override the class the method `process_value`"
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

      end
    end
  end
end
