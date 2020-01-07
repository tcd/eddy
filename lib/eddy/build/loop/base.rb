require "ginny"

module Eddy
  module Build
    module Loop
      # Generate Ruby code from JSON/YAML EDI definitions.
      class Base

        # @return [Eddy::Summary::Loop]
        attr_accessor :summary
        # @return [String] (nil)
        attr_accessor :folder
        # Namespace the Loop is within.
        # @return [String]
        attr_accessor :t_set_id

        # @param summary [Eddy::Summary::Loop]
        # @param t_set_id [String]
        # @param folder [String] (nil)
        # @return [void]
        def initialize(summary, t_set_id, folder: nil)
          self.summary  = summary
          self.t_set_id = t_set_id
          self.folder   = folder
        end

        # @return [String]
        def render()
          return self.ginny_class.render()
        end

        # @return [Ginny::Class]
        def ginny_class()
          return Ginny::Class.create({
            classify_name: false,
            parent: "Eddy::Models::Loop::Base",
            name: "Base",
            description: summary.doc_comment(header: true),
            body: <<~STR.strip,
              # @param store [Eddy::Data::Store]
              # @return [void]
              def initialize(store)
                @repeat_limit = #{self.summary.repeat_limit}
                super(store, Repeat)
              end

              # @yieldparam [Eddy::TransactionSets::#{self.t_set_id}::Loops::#{self.summary.id}::Repeat]
              # @return [void]
              def repeat(&block)
                super(&block)
              end
            STR
          })
        end

      end
    end
  end
end
