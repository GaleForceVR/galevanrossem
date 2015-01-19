class StaticPagesController < ApplicationController
  def admin
  end
  def web
    @category = Category.find_by(name: "web")
    @web_posts = @category.posts.order(:created_at) if @category
  end
end
