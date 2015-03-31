module ApplicationHelper
  def hidden_li_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("li", attributes, &block)
  end

end
