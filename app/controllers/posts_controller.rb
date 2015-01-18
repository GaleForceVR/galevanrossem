class PostsController < ApplicationController
  def show
    @posts_all = Post.all 
    # @posts = @posts_all.category_posts("post")
    # @posts = Post.hello
    @categories = Category.all
    @category = Category.find_by(name: "blog_post")
    # raise @category.inspect
    @posts = @category.posts
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
    params.require(:post).permit(:title, :content, :feature_caption, :image)
  end
end
