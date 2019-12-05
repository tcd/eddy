# EDI Toolkit.
module Eddy; end

require "eddy/version"
require "eddy/error"
require "eddy/helpers"
require "eddy/element"
require "eddy/segment"
require "eddy/transaction_set"
require "eddy/build/build_elements"

Dir.glob(File.join(__dir__, "edi", "elements", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "edi", "elements", "test", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "edi", "segments", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "edi", "transaction_sets", "*.rb")).each { |file| require file }

# Dir.glob(File.join(__dir__, "edi", "**/*.rb")).each { |file| require file }
