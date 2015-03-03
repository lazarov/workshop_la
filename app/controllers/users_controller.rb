class UsersController < ApplicationController

  expose(:review)
  expose_decorated(:review)

  def profile
    current_user
  end

end
