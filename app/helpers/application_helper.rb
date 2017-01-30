module ApplicationHelper

  def markdown(text)
    options = {
        no_intra_emphasis: true, tables: true,
        fenced_code_blocks: true, auto_link: true,
        strikethrough: true, space_after_headers: true,
        superscript: true, with_toc_data: true,
        underline: true, filter_html: true,
        hard_wrap: true, gh_blockcode: true,
        prettify: true, highlight: true,
        link_attributes: { target: '_blank' }
    }


    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer)
    markdown.render(text).html_safe
  end
end
