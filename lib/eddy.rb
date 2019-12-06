# EDI Toolkit.
module Eddy; end

require "eddy/version"
require "eddy/error"
require "eddy/helpers"
require "eddy/element"
require "eddy/segment"
require "eddy/transaction_set"
require "eddy/data"
require "eddy/build"

Dir.glob(File.join(__dir__, "definitions", "elements", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "elements", "test", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "segments", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "transaction_sets", "*.rb")).each { |file| require file }

# Dir.glob(File.join(__dir__, "edi", "**/*.rb")).each { |file| require file }
