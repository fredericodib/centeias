module ApplicationHelper
	def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end

  # TODO: refactor
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
end
