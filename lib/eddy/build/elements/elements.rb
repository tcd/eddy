require "eddy/build/elements/element"
require "eddy/build/elements/n"
require "eddy/build/elements/id"

module Eddy
  # Generate Ruby classes for modeling Data Element logic, notes, and validation.
  module Build
    module Elements

      # Generate `Eddy::Element` classes for all data elements defined in `data/elements.tsv`
      #
      # @param elements [Array<Eddy::Summary::Element>]
      # @return [void]
      def self.generate_elements(elements = self.generate_element_data())
        existing = (Eddy::Util.list_element_classes() + Eddy::Util.list_built_elements()).uniq()
        elements.each do |el|
          next if existing.include?(el.id)
          existing.append(el.id)
          case el.edi_type()
          when "B"  then next
          when "ID" then self.id(el)
          when "N"  then self.n(el)
          when "AN" then self.element(el)
          when "DT" then self.element(el)
          when "R"  then self.element(el)
          when "TM" then self.element(el)
          end
        end
        return nil
      end

      # Generate usable data from `data/elements.tsv`.
      #
      # @return [Array<Eddy::Summary::Element>]
      def self.generate_element_data()
        data = Eddy::Util.raw_element_data()
        elements = data.map do |el|
          next if el[:type].nil? || el[:description].nil?
          Eddy::Summary::Element.create(el)
        end
        return elements.compact
      end

    end
  end
end
