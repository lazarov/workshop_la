class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_admin
    if !current_user.admin?
      redirect_to('/users/sign_in')
    end
  end

  def allowed?
    if signed_in? && current_user.id == product.user_id || current_user.admin?
    end
  end


  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception
  add_flash_types :error

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:firstname, :lastname, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password) }
  end
end
