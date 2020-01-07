require "ginny"

module Eddy
  module Build
    module Loop
      # Generate Ruby code from JSON/YAML EDI definitions.
      class Repeat

        # @return [Eddy::Summary::Loop]
        attr_accessor :summary
        # Namespace the Loop is within.
        # @return [String]
        attr_accessor :t_set_id

        # @param summary [Eddy::Summary::Loop]
        # @param t_set_id [String]
        # @return [void]
        def initialize(summary, t_set_id)
          self.summary  = summary
          self.t_set_id = t_set_id
        end

        # @return [String]
        def render()
          return self.ginny_class.render()
        end

        # @return [Ginny::Class]
        def ginny_class()
          return Ginny::Class.create({
            classify_name: false,
            parent: "Eddy::Models::Loop::Repeat",
            name: "Repeat",
            description: "(see Eddy::TransactionSets::#{t_set_id}::Loops::#{self.summary.id}::Base)",
            body: <<~STR.strip,
              # @param store [Eddy::Data::Store]
              # @return [void]
              def initialize(store)
              #{self.declarations()}
                super(
                  store,
                #{self.super_call()}
                )
              end

              #{self.accessors()}
            STR
          })
        end

        # @return [String]
        def super_call()
          return self.summary.components.map do |comp|
            case comp
            when Eddy::Summary::Segment then "  @#{comp.id.downcase},"
            when Eddy::Summary::Loop    then "  @#{comp.var_name},"
            end
          end.compact.join("\n  ")
        end

        # @return [String]
        def declarations()
          self.summary.components.map do |comp|
            case comp
            when Eddy::Summary::Segment then "  @#{comp.id.downcase} = Eddy::Segments::#{comp.id.upcase}.new(store)"
            when Eddy::Summary::Loop    then "  @#{comp.var_name} = Eddy::TransactionSets::#{t_set_id}::Loops::#{comp.id.upcase}::Base.new(store)"
            end
          end.compact.join("\n")
        end

        # @return [String]
        def accessors()
          defs = self.summary.components.map do |comp|
            if comp.is_a?(Eddy::Summary::Loop) && comp.repeat_limit > 1
              Eddy::Build::TransactionSetBuilder.loop_accessor(comp, self.t_set_id)
            else
              Eddy::Build::TransactionSetBuilder.segment_accessor(comp.id)
            end
          end
          return defs.join("\n\n")
        end

      end
    end
  end
end
