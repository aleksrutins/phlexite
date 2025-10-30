module Phlexite::Docs::Pages
  class Layout < ::Phlex::HTML
    def view_template(&block)
      doctype
      html do
        head do
          meta charset: 'utf-8'

          meta name: 'viewport', content: 'width=device-width, initial-scale=1.0'
          title { 'Phlexite' }

          link rel: 'stylesheet', href: '/pico.amber.min.css'
        end
        body(style: 'padding: 0; margin: 0; display: flex; flex-direction: row; height: 100vh; width: 100vw;') do
          aside(style: 'padding: 30px; min-width: 15%; border-right: 1px solid #6F7887;') do
            nav(style: 'display: flex; flex-direction: column; justify-content: space-between; height: 100%;') do
              ul do
                li { a(href: '/') { 'Home' } }
              end
              ul do
                li(style: 'padding:0') { a(href: 'https://sr.ht/~aleksrutins/phlexite' ) { 'SourceHut' } }
              end
            end
          end
          div(class: 'container', style: 'padding: 20px', &block)
        end
      end
    end
  end
end
