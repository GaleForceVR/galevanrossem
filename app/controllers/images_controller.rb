class ImagesController < ApplicationController

  def index
    @images = Image.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
  end

  def new
    @gallery_images = Image.all
    @image = Image.new
  end

  def create
    @image = Image.new(images_creation_params)
    if (@image.save)
      redirect_to new_image_path
    else
      render :action => :new
    end
  end

  def edit
  end

  def update
  end

  private
  def images_creation_params
    params.require(:image).permit(:image, :title, :caption)
  end

end
