class PhotoController < ApplicationController
  def index
    render(:template => "photo_templates/index")
  end

  def show
    @photo_id = params.fetch("id")
    render(:template => "photo_templates/show")
  end

  def add_comment
    @comment = Comment.new
    @comment.author_id = params.fetch("input_author_id")
    @comment.photo_id = params.fetch("input_photo_id")
    @comment.body = params.fetch("input_comment")
    @comment.save
    redirect_to("/photos/#{@comment.photo_id}")
  end

  def update_photo
    redirect_to("/photo/#{@comment.photo_id}")
  end
end
