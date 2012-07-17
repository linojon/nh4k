module ApplicationHelper
  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title?
    @show_title
  end
  
  def body_id(id)
    content_for(:body_id) { id }
  end
  
  def markdown(text)
    Redcarpet.new(text).to_html.html_safe
  end
  
  # def iff(obj, &block)
  #   debugger
  #   with_output_buffer(&block) if obj.present?
  # end
end
