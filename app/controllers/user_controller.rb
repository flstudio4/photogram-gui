class UserController < ApplicationController
  def index
    render(:template => "user_templates/index")
  end

  def show
    render(:template => "user_templates/show")
  end

  def create_user
    @user = User.new
    @user.username = params.fetch("input_username")
    @user.save
    redirect_to("/users")
  end
end
