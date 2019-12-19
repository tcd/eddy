# EDI Toolkit.
module Eddy; end

require "eddy/version"
require "eddy/errors"
require "eddy/util"
require "eddy/anyway_config"
require "eddy/data"

Dir.glob(File.join(__dir__, "eddy", "schema", "*.rb")).each { |file| require file }

require "eddy/models/element"
require "eddy/models/segment"
require "eddy/models/loop"
require "eddy/models/transaction_set"

require "eddy/write/methods"
require "eddy/write/store"
require "eddy/write/interchange"
require "eddy/write/simple_interchange"
require "eddy/write/functional_group"

require "eddy/build/build"

Dir.glob(File.join(__dir__, "definitions", "elements", "manual", "**", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "segments", "manual", "**", "*.rb")).each { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "transaction_sets", "*.rb")).each { |file| require file }

require "eddy/cli/cli"
