module Eddy
  module Util
    # @!group Normalize

    # Given an Element Id (positive number under 1688, or I01-I64), returns a string sutable for use as a Ruby class name.
    #
    # @param id [String]
    # @return [String]
    def self.normalize_id(id)
      name_regex = /\A(?<prefix>[iI]{1})?(?<numbers>\d+)\Z/
      res = ""
      if matches = id.match(name_regex)
        if matches[:prefix]
          res << "I"
        else
          res << "E"
        end
        res << matches[:numbers]
      else
        raise Eddy::Errors::BuildError, "invalid element id"
      end
    end

    # Convert a string to [*PascalCase*](http://wiki.c2.com/?PascalCase), or *UpperCamelCase*
    # Remove dashes, slashes, underscores, spaces, periods, and parens from a string then titleize it.
    #
    # @param name [String]
    # @return [String]
    def self.normalize_name(name)
      return name.gsub(/\s*\(.*\)|[']/, "")
                 .gsub(%r{[.,_\-/]}, " ")
                 .split(" ")
                 .map(&:capitalize)
                 .join("")
    end

    # Convert a string to [*snake_case*](https://en.wikipedia.org/wiki/Snake_case)
    #
    # @param name [String]
    # @return [String]
    def self.snake_case(name)
      return name.gsub(/\s*\(.*\)|['.]/, "")
                 .gsub(%r{[,_\-/]}, " ")
                 .split(" ")
                 .map(&:downcase)
                 .join("_")
    end

    # @!endgroup Normalize
  end
end
