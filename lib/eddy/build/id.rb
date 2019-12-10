require "ginny"

module Eddy
  module Build

    # @param el [Hash]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.id(el, test: false)
      code_list = self.build_code_list(el[:id])
      return nil if code_list.nil?
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el[:id]}"
          @name = "#{el[:raw_name]}"
          super(min: #{el[:min]}, max: #{el[:max]})
        FUNC_BODY
      }).render()
      data = {
        name: el[:name],
        description: el[:description],
        parent: "Eddy::Element::ID",
        modules: ["Eddy", "Elements"],
        body: constructor + "\n\n" + code_list + "\n",
        file_prefix: "#{el[:id]}.id.",
      }
      c = Ginny::Class.create(data)
      return c.render if test
      c.generate(File.join(Eddy.root_dir, "build", "elements", "id"))
      return nil
    end

    # @param id [String]
    # @return [String]
    def self.build_code_list(id)
      file = File.join(Eddy.data_dir, "004010", "code-lists", "#{id}.tsv")
      begin
        data = Eddy.parse_tsv(file)
      rescue Errno::ENOENT
        puts("Missing code-list for element #{id}")
        return nil
      rescue CSV::MalformedCSVError => e
        puts("Error reading csv file '#{file}':#{e}")
        return nil
      end
      # body = "return [\n" + data.map { |c| %("#{c[:id]}").indent(2) }.join(",\n") + "\n]\n"
      body = ""
      body << "return [\n"
      data.each do |c|
        body << %("#{c[:id]}", # #{c[:definition]}\n).indent(2)
      end
      body << "]\n"
      return Ginny::Func.create({
        name: "code_list",
        return_type: "Array<String>",
        body: body,
      }).render()
    end

  end
end
