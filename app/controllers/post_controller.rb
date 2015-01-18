class PostController < ApplicationController
  def show
    @user = current_user if current_user
    @post = Post.find(params[:id])
    @image = @post.image
  end

  def new
    @post = Post.new
    @category_assignment = CategoryAssignment.new
  end

  # def create
  #   @post = Post.new(params[:post])
  #   if (@post.save)
  #     redirect_to :action => :index
  #   else
  #     render :action => :new
  #   end
  # end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(posts_creation_params)
      redirect_to post_path(@post.id)
    else
      render :action => :edit
    end
  end

  private
  # def post_creation_params
  #   params.require(:post).permit(:title, :content, :image,
  #     images_attributes: [:image_url] )
  # end
  def posts_creation_params
    params.require(:post).permit(:title, :content, :feature_caption, :image)
  end
end
