module ApplicationHelper

  def user_admin?
    user_signed_in? && current_user.admin?
  end

  def user_owner?
    user_signed_in? && current_user.id == product.user_id
  end

end
