# EDI Toolkit.
module Eddy; end

require "eddy/version"
require "eddy/errors"
require "eddy/util"
require "eddy/config"
require "eddy/data"
require "eddy/summary"
require "eddy/models"
require "eddy/parse"
require "eddy/build"

Dir.glob(File.join(__dir__, "definitions", "elements", "**", "*.rb")).sort.each         { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "segments", "**", "*.rb")).sort.each         { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "transaction_sets", "**", "*.rb")).sort.each { |file| require file }

require "eddy/cli"
