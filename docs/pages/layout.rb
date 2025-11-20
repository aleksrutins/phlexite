module Phlexite::Docs::Pages
  class Layout < ::Phlex::HTML
    def view_template(&block)
      doctype
      html do
        head do
          meta charset: 'utf-8'

          meta name: 'viewport', content: 'width=device-width, initial-scale=1.0'
          title { 'Phlexite' }

          link rel: 'stylesheet', href: '/site.css'
        end
        body(class: 'flex flex-row w-screen h-screen p-0 m-0 dark:bg-gray-900 dark:text-gray-50') do
          aside(class: 'p-5 min-w-[15%] border-r border-gray-200 dark:border-gray-700') do
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
