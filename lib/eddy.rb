# EDI Toolkit.
module Eddy; end

require "eddy/version"
require "eddy/error"
require "eddy/helpers"
require "eddy/element"
require "eddy/segment"
require "eddy/transaction_set"
require "eddy/build/build_elements"
Dir.glob(File.join(__dir__, "eddy", "definitions", "manual", "**/*.rb")).each { |file| require file }
