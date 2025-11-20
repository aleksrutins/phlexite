require 'kramdown'
require 'phlexite'
require 'phlexite/content'
require 'tailwindcss/phlexite'
require 'phlex'

module Phlexite
  module Docs end
end

require_relative 'pages/markdown_page'
require_relative 'pages/layout'

Phlexite::Site.new do |s|
  s.mount 'assets', on: '/'
  Tailwindcss::Phlexite.build(s, 'tailwind.css', 'site.css')

  pages = Phlexite::Content::Collection.new('pages/docs/*.md', Phlexite::Docs::Pages::MarkdownPage, prefix: 'pages/docs')

  pages.build(s)
end
