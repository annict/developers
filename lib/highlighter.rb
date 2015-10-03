require "redcarpet"
require "rouge"
require "rouge/plugins/redcarpet"

module Highlighter
  class HighlightedHTML < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end
end
