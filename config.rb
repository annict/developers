require "active_support"
require "active_support/core_ext"
require "pry"
require "redcarpet"
require "slim"

Dir["./lib/*"].each { |f| require f }

activate :directory_indexes

set :css_dir, "stylesheets"
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :markdown_engine, :redcarpet
set :markdown,
  layout_engine: :slim,
  fenced_code_blocks: true,
  lax_html_blocks: true,
  renderer: Highlighter::HighlightedHTML.new

with_layout :api do
  page "/api/*"
end
