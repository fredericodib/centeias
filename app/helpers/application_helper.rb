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

  def search_word(text, word)
    text.downcase!
    word.downcase!
    array_after_before = text.split("#{word}")
    before = array_after_before[0]
    after = array_after_before[1]
    before = before.split(' ')
    after = after.split(' ')
    size = before.length
    string = "...#{before[size-3]} #{before[size-2]} #{before[size-1]} #{word} #{after[0]} #{after[1]} #{after[2]}..."
    return string
  end
end
