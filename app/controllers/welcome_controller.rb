class WelcomeController < ApplicationController
  def index
    @posts = Post.all
    @category = Category.find_by(name: "blog_post")
    @blog_posts = @category.posts.order(:created_at).reverse_order if @category
    # @user = User.first
    # raise user_session.inspect
    # @user = User.find(user_session) if user_session
    @user = current_user
    @category = Category.find_by(name: "feature")
    @feature_post = @category.posts.order(:created_at).first if @category
    if @feature_post
      @post = @feature_post
    else
      @post = @blog_posts.first
    end
  end
end
