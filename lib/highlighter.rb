require "redcarpet"
require "rouge"
require "rouge/plugins/redcarpet"

module Highlighter
  class HighlightedHTML < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet

    def header(text, level)
      "<h#{level} class='anchorable-toc js-anchorable-toc' id='#{anchorify(text)}'>#{text}</h#{level}>"
    end

    private

    def anchorify(text)
      slug = text.gsub(/&#?\w+;/, '-').gsub(/\W+/, '-').gsub(/^-|-$/, '').downcase
      suffix = Digest::SHA256.hexdigest(text)[0, 7]

      return suffix if slug.blank?
      "#{slug}-#{suffix}"
    end
  end
end
