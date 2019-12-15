# EDI Toolkit.
module Eddy
  # Generate Ruby classes for modeling Semgents & Data Element logic, notes, and validation.
  module Build; end
end

require "eddy/version"
require "eddy/errors"
require "eddy/util"
Dir.glob(File.join(__dir__, "eddy", "schema", "*.rb")).each { |file| require file }
require "eddy/models/store"
require "eddy/models/element"
require "eddy/models/segment"
require "eddy/models/loop"
require "eddy/models/transaction_set"
Dir.glob(File.join(__dir__, "eddy", "build", "elements", "*.rb")).each { |file| require file }
require "eddy/build/elements"
require "eddy/build/segments"

Dir.glob(File.join(__dir__, "definitions", "elements", "manual", "**", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "segments", "manual", "**", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "transaction_sets", "*.rb")).each { |file| require file }
