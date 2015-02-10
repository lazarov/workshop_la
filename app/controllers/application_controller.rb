class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]

  def require_admin
    if !current_user.admin?
      redirect_to('/users/sign_in')
    end
  end


  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception
  add_flash_types :error
end
