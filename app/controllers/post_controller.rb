class PostController < ApplicationController
  def show
    @user = current_user if current_user
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if (@post.save)
      redirect_to :action => :index
    else
      render :action => :new
    end
  end

  def edit
  end

  def update
  end

  private
  def post_creation_params
    params.require(:post).permit(:title, :content)
  end
end
