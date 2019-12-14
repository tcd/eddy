require "yaml"
require "json"

namespace :misc do
  desc "Convert a YAML file to JSON"
  task :yaml2json, [:path] do |_, arg|
    path = File.expand_path(arg[:path])
    ext = case File.extname(path).downcase
          when ".yml"  then ".yml"
          when ".yaml" then ".yaml"
          else ""
          end
    base_name = File.basename(path, ext)
    dir = File.dirname(path)
    out_file = File.join(dir, "#{base_name}.json")
    input = YAML.load_file(path)
    output = JSON.pretty_generate(input)
    File.open(out_file, "a") { |f| f.write(output) }
  end
end
