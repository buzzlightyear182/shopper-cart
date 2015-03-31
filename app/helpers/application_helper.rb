module ApplicationHelper
  def hidden_li_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("li", attributes, &block)
  end

  def sidebar
    if user_signed_in? && current_user.admin?
      show_product_index
    else
      show_cart
    end
  end

  def show_cart
    unless @cart.line_items.empty?
      render @cart
    end
  end

  def show_product_index
    content_tag(:li, view_products)
  end

  def go_back
    link_to "Back", :back, :class => "btn btn-primary"
  end

  def new_product
    link_to "Add product", new_product_path, :class => "btn btn-primary"
  end

  def view_products
    link_to "View products", products_path
  end

end
