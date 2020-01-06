require "ginny"

module Eddy
  module Build
    # Generate Ruby code from JSON/YAML EDI definitions.
    class LoopBuilder

      # @return [Eddy::Schema::LoopSummary]
      attr_accessor :summary
      # @return [String] (nil)
      attr_accessor :folder
      # Namespace the Loop is within.
      # @return [String]
      attr_accessor :t_set_id

      # @param folder [String] (nil)
      # @param t_set_id [Boolean] ("")
      # @return [void]
      def initialize(folder: nil, t_set_id: "")
        self.folder   = folder
        self.t_set_id = t_set_id
      end

      # @param summary [Eddy::Schema::LoopSummary]
      # @param (see #initialize)
      # @return [Eddy::Build::LoopBuilder]
      def self.from_summary(summary, **kwargs)
        lb = Eddy::Build::LoopBuilder.new(**kwargs)
        lb.summary = summary
        return lb
      end

      # @return [Ginny::Class]
      def ginny_class()
        return Ginny::Class.create({
          classify_name: false,
          parent: "Eddy::Models::Loop::Base",
          name: self.summary.id,
          description: summary.doc_comment(header: true),
          body: <<~STR.strip,
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store)
              @repeat = #{self.summary.repeat}
              @components = [
              #{self.components(self.t_set_id)}
              ]
            end

            #{self.class.add_ideration(self.summary, self.t_set_id)}
          STR
        })
      end

      # @param t_set_id [Integer]
      # @return [String]
      def components(t_set_id)
        comps = []
        self.summary.components.each do |comp|
          case comp
          when Eddy::Schema::SegmentSummary
            comps << "  Eddy::Segments::#{comp.id.upcase},"
          when Eddy::Schema::LoopSummary
            comps << "  Eddy::TransactionSets::#{t_set_id}::Loops::#{comp.id.upcase},"
          end
        end
        return comps.join("\n  ")
      end

      # @param summary [Eddy::Schema::LoopSummary]
      # @param t_set_id [String]
      # @return [String]
      def self.add_ideration(summary, t_set_id)
        yield_params = []
        summary.components.each do |comp|
          case comp
          when Eddy::Schema::SegmentSummary
            yield_params << "#   @yieldparam [Eddy::Segments::#{comp.id.upcase}] #{comp.id.downcase}"
          when Eddy::Schema::LoopSummary
            yield_params << "#   @yieldparam [Eddy::TransactionSets::#{t_set_id}::Loops::#{comp.id.upcase}] l_#{comp.id.downcase}"
          end
        end
        return <<~YARD.strip
          # @!method add_iteration(&block)
          #{yield_params.join("\n")}
          #   @return [void]
        YARD
      end

    end
  end
end
