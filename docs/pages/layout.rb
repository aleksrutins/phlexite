module Phlexite::Docs::Pages
    class Layout < ::Phlex::HTML
        def view_template
            doctype
            html {
                head {
                    meta charset: 'utf-8'

                    meta name: 'viewport', content: 'width=device-width, initial-scale=1.0'
                    title { "Phlexite" }

                    link rel: 'stylesheet', href: 'https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css'
                }
                body(style: "padding: 0; margin: 0; display: flex; flex-direction: row; height: 100vh; width: 100vw;") {
                    aside(style: 'padding: 30px; min-width: 15%; border-right: 1px solid #6F7887;') {
                        nav {
                            ul {
                                li { a(href: '/') { 'Home' } }
                            }
                        }
                    }
                    div(class: 'container', style: 'padding: 20px') {
                        yield
                    }
                }
            }
        end
    end
end