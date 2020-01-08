require "ginny"

module Eddy
  module Build
    module Elements

      # @param el [Eddy::Summary::Element]
      # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
      # @return [void]
      def self.id(el, test: false)
        code_list = self.build_code_list(el.id)
        return nil if code_list.nil?
        c = self.ginny_class(
          el,
          ("\n" + self.default_constructor(el) + "\n\n" + code_list + "\n"),
          # "\n#{self.default_constructor(el)}\n\n#{code_list}\n",
        )
        return c.render if test
        c.generate(
          File.join(Eddy::Util.root_dir, "build", "elements"),
          file: "#{el.id}.#{Eddy::Util.snake_case(el.name)}.rb",
        )
        return nil
      end

      # @param id [String]
      # @return [String]
      def self.build_code_list(id)
        file = File.join(Eddy::Util.data_dir, "code-lists", "#{id}.tsv")
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
end
