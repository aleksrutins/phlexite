require 'phlexite'
require 'phlex'

module Phlexite
    module Docs end
end

require_relative 'pages/layout'
require_relative 'pages/index'

Phlexite::Site.new { |s|
    s.page 'index.html', Phlexite::Docs::Pages::Index.new
}