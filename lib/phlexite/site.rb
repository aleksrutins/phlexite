# frozen_string_literal: true

require_relative 'router.rb'

class Phlexite::Site < Phlexite::Router
  attr_accessor :build_dir, :base_url

  def initialize
    super("/", self)
    base_url = "/"
    yield self
  end
end
