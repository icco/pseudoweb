module Jekyll
  class JekyllVersionTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} #{Jekyll::VERSION}"
    end
  end
end

Liquid::Template.register_tag('jekyll_version', Jekyll::JekyllVersionTag)
