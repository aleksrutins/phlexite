module Phlexite::Docs::Pages
    class Index < ::Phlex::HTML
        def view_template
            render Layout.new {
                h1 { 'Phlexite' }
                p { 'Phlexite is a simple static site generator for Ruby.' }
            }
        end
    end
end