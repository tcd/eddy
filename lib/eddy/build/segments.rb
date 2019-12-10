require "ginny"

module Eddy
  module Build

    # @return [void]
    def self.segment_files()
      segment_file = File.join(Eddy.data_dir, "004010", "segments.tsv")
      segment_data = Eddy.parse_tsv(segment_file)

      headers = [
        "Ref",
        "Id",
        "ElementName",
        "Description",
        "Req",
        "Type",
        "Min",
        "Max",
        "Usage",
        "Default",
      ].join("\t")

      segment_data.each do |segment|
        File.open("tmp/segments/#{segment[:id]}.tsv", "a") { |f| f.write(headers) }
      end
    end

    # @param data [Hash<Symbol>]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.segment(data, test: false)
      c = Ginny::Class.create({
        modules: ["Eddy", "Segments"],
        parent: "Eddy::Segment",
        name: data[:name],
        description: self.segment_description(data),
      })
      return c.render if test
      c.generate(File.join(Eddy.root_dir, "build", "segments"))
      return nil
    end

    # @param data [Hash<Symbol>]
    # @return [String]
    def self.segment_constructor(data)
      declarations = ""
      super_call = "super(\n"

      data[:elements].each do |k, v|
        declarations << "@#{k.to_s.downcase} = Eddy::Elements::#{v.upcase}.new()\n"
        super_call << "  @#{k.to_s.downcase},\n"
      end

      super_call << ")"

      body = ""
      body << %(@id = "#{data[:id]}"\n)
      body << %(@description = "#{data[:description]}"\n)
      body << declarations
      body << "\n"
      body << super_call

      return Ginny::Func.create({
        name: "initialize",
        body: body,
      }).render()
    end

    # @param data [Hash<Symbol>]
    # @return [String]
    def self.segment_description(data)
      return <<~END.strip
        ### Segment Summary:

        - Id: #{data[:id]}
        - Description: #{data[:description]}
        - Purpose: #{data[:purpose]}
      END
    end

  end
end
