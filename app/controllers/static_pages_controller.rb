class StaticPagesController < ApplicationController
  def admin
  end
  def web
    @category = Category.find_by(name: "web")
    @web_posts = @category.posts.order(:created_at).reverse_order if @category
  end

  def design
    @category = Category.find_by(name: "design")
    @design_posts = @category.posts.order(:created_at).reverse_order if @category
  end

  def connect
  end

  def resume
  end
end
