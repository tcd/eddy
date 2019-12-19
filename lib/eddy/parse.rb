module Eddy
  module Parse
    # Wrapper around an interchange file or string.
    class Interchange

      # Raw content of the interchange.
      # @return [String]
      attr_accessor :document
      # Component Element Separator
      # @return [String] (">")
      attr_accessor :component_separator
      # @return [String] ("~")
      attr_accessor :segment_separator
      # Data Element Separator
      # @return [String] ("*")
      attr_accessor :element_separator

      # @param doc [String] EDI document.
      # @param component_separator [String] (">")
      # @param segment_separator [String] ("~")
      # @param element_separator [String] ("*")
      # @return [void]
      def initialize(doc, component_separator: ">", segment_separator: "~", element_separator: "*")
        self.document = doc
        self.component_separator = component_separator
        self.segment_separator = segment_separator
        self.element_separator = element_separator
      end

      # @param path [String]
      # @return [self]
      def self.from_file(path, **kwargs)
        return self.new(File.read(path), **kwargs)
      end

      # @return [Array<Hash>]
      def parse()
        doc = self.document.gsub(/\n/, "")
        segments = doc.split(self.segment_separator)
        segments.map { |seg| self.parse_segment(seg) }
      end

      # @param seg [String]
      # @return [Hash]
      def parse_segment(seg)
        name, *elements = seg.split(self.element_separator)
        res = { name: name, elements: {} }
        elements.each_with_index do |value, index|
          next if value == ""
          key = sprintf("%s%02d", name, index + 1)
          res[:elements][key.to_sym] = value
        end
        return res
      end

    end
  end
end
