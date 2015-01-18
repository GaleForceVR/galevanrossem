class Post < ActiveRecord::Base
  # attr_accessible :categories, :category_assignments
  has_many :category_assignments, inverse_of: :post
  has_many :categories, through: :category_assignments
  # attr_accessible :image
  mount_uploader :image, ImageUploader

  accepts_nested_attributes_for :category_assignments

  # def hello
  #   "hello"
  # end

  # def category_posts(name)
  #   # @posts = Post.all
  #   @category_posts = []
  #   @assignments = CategoryAssignment.all
  #   @assignments.each do |assignment|
  #     @category_posts << assignment if assignment.category_id == find_category_id_by(name)
  #   end
  #   @category_posts
  # end

  # def find_category_id_by(name)
  #   @categories = Category.all
  #   found_category_id = nil
  #   @categories.each do |category|
  #     found_category_id = category.id if category.name == name
  #   end
  #   found_category_id
  # end
end
