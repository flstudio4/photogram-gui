class PhotoController < ApplicationController
  def index
    @pictures = Photo.all.order(:created_at => :desc)
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
    @the_id = params.fetch("photo_id")
    @pic = Photo.where(:id => @the_id).at(0)
    @pic.image = params.fetch("input_image")
    @pic.caption = params.fetch("input_caption")
    @pic.save
    redirect_to("/photos/#{@the_id}")
  end

  def add_photo
    @image = Photo.new
    @image.image = params.fetch("input_image")
    @image.caption = params.fetch("input_caption")
    @image.owner_id = params.fetch("input_owner_id")
    @image.save
    redirect_to("/photos/#{@image.id}")
  end

  def delete
    the_id = params.fetch("photo_id")
    @photo = Photo.where({ :id => the_id }).at(0)

    @photo.destroy

    redirect_to("/photos")
  end
end
