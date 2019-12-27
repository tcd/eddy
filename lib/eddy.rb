# EDI Toolkit.
module Eddy; end

require "eddy/version"
require "eddy/errors"
require "eddy/util"
require "eddy/config"
require "eddy/data"

Dir.glob(File.join(__dir__, "eddy", "schema", "*.rb")).sort.each { |file| require file }

require "eddy/models/element"
require "eddy/models/segment"
require "eddy/models/loop"
require "eddy/models/transaction_set"

require "eddy/write/interchange"
require "eddy/write/simple_interchange"
require "eddy/write/functional_group"

require "eddy/parse"

require "eddy/build/build"

# Dir.glob(File.join(__dir__, "definitions", "elements", "manual", "**", "*.rb")).sort.each         { |file| require file }
# Dir.glob(File.join(__dir__, "definitions", "segments", "manual", "**", "*.rb")).sort.each         { |file| require file }
# Dir.glob(File.join(__dir__, "definitions", "transaction_sets", "manual", "**", "*.rb")).sort.each { |file| require file }

Dir.glob(File.join(__dir__, "definitions", "elements", "**", "*.rb")).sort.each         { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "segments", "**", "*.rb")).sort.each         { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "transaction_sets", "**", "*.rb")).sort.each { |file| require file }

require "eddy/cli/cli"
