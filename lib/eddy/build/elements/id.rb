require "ginny"

module Eddy
  module Build

    # @param el [Eddy::Schema::ElementSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.id(el, test: false)
      code_list = self.build_code_list(el.id)
      return nil if code_list.nil?
      constructor = Ginny::Func.create({
        name: "initialize",
        params: [{ name: "val", type: el.yard_type, optional: true }],
        body: <<~FUNC_BODY,
          @id = "#{el.id}"
          @name = "#{el.name}"
          @description = "#{el.description}"
          super(min: #{el.min}, max: #{el.max}, val: val)
        FUNC_BODY
      }).render()
      c = Ginny::Class.create({
        classify_name: false,
        name: Eddy::Util.normalize_id(el.id),
        description: el.doc_comment,
        parent: "Eddy::Element::ID",
        modules: ["Eddy", "Elements"],
        body: "\n" + constructor + "\n\n" + code_list + "\n",
        file_prefix: "#{el.id}.id.",
      })
      return c.render if test
      c.generate(File.join(Eddy::Util.root_dir, "build", "elements"))
      return nil
    end

    # @param id [String]
    # @return [String]
    def self.build_code_list(id)
      file = File.join(Eddy::Util.data_dir, "004010", "code-lists", "#{id}.tsv")
      begin
        data = Eddy::Util.parse_tsv(file)
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
