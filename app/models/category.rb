class Category < ActiveRecord::Base
  has_many :category_assignments
  has_many :posts, through: :category_assignments

  accepts_nested_attributes_for :category_assignments, :posts
end
