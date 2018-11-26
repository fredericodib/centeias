class MarkdownRenderer < Redcarpet::Render::HTML

  # Add possibility to set size
  def image(link, title, alt_text)
    if title =~ /=(\d+)x(\d+)/
      %(<img src="#{link}" width="#{$1}" height="#{$2}" alt="#{alt_text}>")
    else
      %(<img src="#{link}" title="#{title}" alt="#{alt_text}" width="100%" height="100%" >)
    end
  end

end

module ApplicationHelper
	def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true,
      tables: true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      tables: true,
      disable_indented_code_blocks: true
    }

    renderer = MarkdownRenderer.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end

  def search_word(text, word)
    if text.to_s.empty? or word.to_s.empty?
      return nil
    end

    text.downcase!
    word.downcase!

    offset = text.index(word)

    if offset.nil?
       nil
    end

    a = [0, offset-40].max
    b = [text.length, offset + word.length + 40].min

    result = text[a..b]

    return "...#{result}..."
  end

  def textShow(text)
    if text.to_s.empty?
      return nil
    end

    if text.length <= 300
      return text[0..300]
    end

    return "#{text[0..300]}..."
  end
end
