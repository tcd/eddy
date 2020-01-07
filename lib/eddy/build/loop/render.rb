require "ginny"

module Eddy
  module Build
    module Loop
      # Generate Ruby code for an EDI loop.
      #
      # @param summary [Eddy::Summary::Loop]
      # @param t_set_id [String]
      # @return [String]
      def self.render(summary, t_set_id)
        base = Eddy::Build::Loop::Base.new(summary, t_set_id).render()
        repeat = Eddy::Build::Loop::Repeat.new(summary, t_set_id).render()
        return Ginny.mod(("\n" + base + "\n\n" + repeat + "\n"), "Eddy", "TransactionSets", t_set_id, "Loops", summary.id)
      end
    end
  end
end
