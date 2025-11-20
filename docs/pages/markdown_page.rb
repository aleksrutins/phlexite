module Phlexite::Docs::Pages
  class MarkdownPage < ::Phlex::HTML
      def initialize
      end

      def view_template
          render Layout.new do
            div(class: 'prose dark:prose-invert') do
              raw safe Kramdown::Document.new(@content).to_html
            end
          end
      end
  end
end
