# frozen_string_literal: true

require_relative 'router.rb'

class Phlexite::Site < Phlexite::Router
  attr_accessor :build_dir, :base_url

  def initialize
    super("/", self)
    @build_dir = "_build"
    @base_url = "/"
    yield self
  end
end
