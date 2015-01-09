class WelcomeController < ApplicationController
  def index
    @posts = Post.all
    # @user = User.first
    # raise user_session.inspect
    # @user = User.find(user_session) if user_session
    @user = current_user
  end
end
