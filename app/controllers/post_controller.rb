class PostController < ApplicationController
  def show
    @user = current_user if current_user
    @post = Post.find(params[:id])
  end
end
