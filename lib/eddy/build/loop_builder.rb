require "ginny"

module Eddy
  module Build
    # Generate Ruby code from JSON/YAML EDI definitions.
    class LoopBuilder

      # @return [Eddy::Schema::LoopSummary]
      attr_accessor :summary
      # @return [String] (nil)
      attr_accessor :folder
      # @return [Boolean] (false)
      attr_accessor :headers
      # Namespace the Loop is within.
      # @return [String]
      attr_accessor :t_set_id

      # @param folder [String] (nil)
      # @param headers [Boolean] (false)
      # @param t_set_id [Boolean] ("")
      # @return [void]
      def initialize(folder: nil, headers: false, t_set_id: "")
        self.folder   = folder
        self.headers  = headers
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
          parent: "Eddy::Loop::Base",
          name: self.summary.loop_id,
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
          if comp.key?(:loop_id)
            # comps << "  Eddy::TransactionSets::#{t_set_id}::Loops::#{comp[:loop_id].upcase},"
            comps << "  #{comp[:loop_id].upcase},"
          else
            comps << "  Eddy::Segments::#{comp[:id].upcase},"
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
          if comp.key?(:loop_id)
            yield_params << "#   @yieldparam [Eddy::TransactionSets::#{t_set_id}::Loops::#{comp[:loop_id].upcase}] l_#{comp[:loop_id].downcase}"
          else
            yield_params << "#   @yieldparam [Eddy::Segments::#{comp[:id].upcase}] #{comp[:id].downcase}"
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
