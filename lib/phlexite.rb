# frozen_string_literal: true

module Phlexite
  class Error < StandardError; end
end

require_relative "phlexite/version"
require_relative "phlexite/router"
require_relative "phlexite/site"
