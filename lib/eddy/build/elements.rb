module Eddy
  # Generate Ruby classes for modeling Data Element logic, notes, and validation.
  module Build

    # Generate `Eddy::Element` classes for all data elements defined in `data/004010/elements.tsv`
    #
    # @param elements [Array<Eddy::Schema::ElementSummary>]
    # @return [void]
    def self.generate_elements(elements = self.generate_element_data())
      elements.each do |el|
        case el.type
        when "AN"   then self.an(el)
        when "B"    then next
        when "DT"   then self.dt(el)
        when "ID"   then self.id(el)
        when /N\d*/ then self.n(el)
        when "R"    then self.r(el)
        when "TM"   then self.tm(el)
        else
          raise Eddy::Errors::Error, "unable to determine element type"
        end
      end
      return nil
    end

    # Generate usable data from `data/004010/elements.tsv`.
    #
    # @return [Array<Eddy::Schema::ElementSummary>]
    def self.generate_element_data()
      data = Eddy::Util.raw_element_data()
      elements = data.map do |el|
        next if el[:type].nil? || el[:description].nil?
        Eddy::Schema::ElementSummary.create(el)
      end
      return elements.compact
    end

  end
end
