class UserController < ApplicationController
  def index
    @users = User.all.order(:username => :asc)
    render(:template => "user_templates/index")
  end

  def show
    @the_user = params.fetch("user_name")
    @user = User.where(:username => @the_user).at(0)
    render(:template => "user_templates/show")
  end

  def create_user
    @user = User.new
    @user.username = params.fetch("input_username")
    @user.save
    redirect_to("/users/#{@user.username}")
  end

  def update_user
    @username = params.fetch("user_name")
    @new_name = params.fetch("input_username")
    @updated_user_name = User.where(:username => @username).at(0)
    @updated_user_name.username = @new_name
    @updated_user_name.save
    
    redirect_to("/users/#{@new_name}")
  end
end
