class PostsController < ApplicationController
  def show
    @posts = Post.all
  end

  def create
    @post = Post.new(posts_creation_params)
    if (@post.save)
      redirect_to post_path(@post.id)
    else
      render :action => :new
    end
  end

  private
  def posts_creation_params
    params.require(:post).permit(:title, :content, :image)
  end
end
