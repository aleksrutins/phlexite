# frozen_string_literal: true

require "test_helper"

class TestPhlexite < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Phlexite::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_that_site_is_defined
    assert ::Phlexite::Site != nil
  end

  def test_that_router_is_defined
    assert ::Phlexite::Router != nil
  end
end
