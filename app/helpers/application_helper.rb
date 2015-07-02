module ApplicationHelper
	class HTMLwithPygments < Redcarpet::Render::HTML
    include Redcarpet::Render::SmartyPants
    def block_code(code, language)
      Pygments.highlight(code, :lexer => language, :options => {:lineanchors => "line"})
    end
  end

  def markdown(text)
    renderer = HTMLwithPygments.new(prettify: true,
      hard_wrap: true,
      filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
      highlight: true,
      quote: true,
      footnotes: true,
      tables: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end


  def error_messages_for(object_name, options = {})
    options = options.symbolize_keys
    object = instance_variable_get("@#{object_name}")
    unless object.errors.empty?
      items = []
      object.errors.each { |attribute, message| items << content_tag("dd", message) }
      content_tag("dl",
        content_tag("dt", "Para prosseguir, verifique os itens abaixo:") +
        items.join(""),
        "id" => options[:id] || "error", "class" => options[:class] || "error"
      )
    end
  end

end
