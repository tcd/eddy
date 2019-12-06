require "ginny"

module Eddy
  module Build

    # @param e [Hash]
    # @return [void]
    def self.id(e)
      code_list = self.build_code_list(e[:id])
      return nil if code_list.nil?
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{e[:id]}"
          @name = "#{e[:name]}"
          @type = "ID"
          self.min = #{e[:min]}
          self.max = #{e[:max]}
        FUNC_BODY
      }).render()
      data = {
        name: e[:name],
        description: e[:description],
        parent: "Eddy::Element::ID",
        modules: ["Eddy", "Elements"],
        body: constructor + "\n\n" + code_list + "\n",
        file_prefix: "#{e[:id]}.",
      }
      c = Ginny::Class.create(data)
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
      body = "return [\n" + data.map { |c| %("#{c[:id]}").indent(2) }.join(",\n") + "\n]\n"
      return Ginny::Func.create({
        name: "code_list",
        return_type: "Array<String>",
        body: body,
      }).render()
    end

  end
end
