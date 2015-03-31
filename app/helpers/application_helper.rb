module ApplicationHelper
  def hidden_li_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("li", attributes, &block)
  end

  def sidebar
    if user_signed_in? && current_user.admin?
      show_admin_panel
    else
      show_cart
    end
  end

  def show_cart
    unless @cart.line_items.empty?
      render @cart
    end
  end

  def show_admin_panel
    render 'admin/panel'
  end

  def go_back
    link_to "Back", :back
  end

  def new_product
    link_to "Add product", new_product_path
  end

  def view_products
    link_to "View products", products_path
  end

  def view_orders
    link_to "View orders", orders_path
  end

end
