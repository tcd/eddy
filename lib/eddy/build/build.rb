module Eddy
  # Generate Ruby classes for modeling Semgents & Data Element logic, notes, and validation.
  module Build; end
end

require "eddy/build/elements/an"
require "eddy/build/elements/dt"
require "eddy/build/elements/id"
require "eddy/build/elements/n"
require "eddy/build/elements/r"
require "eddy/build/elements/tm"

require "eddy/build/elements"
require "eddy/build/segment_builder"
require "eddy/build/transaction_set_builder"
