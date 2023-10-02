class UserController < ApplicationController
  def index
    render(:template => "user_templates/index")
  end

  def show
    render(:template => "user_templates/show")
  end
end
