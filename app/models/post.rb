class Post < ActiveRecord::Base
  # attr_accessible :categories, :category_assignments
  has_many :category_assignments, inverse_of: :post
  has_many :categories, through: :category_assignments
  # attr_accessible :image
  mount_uploader :image, ImageUploader

  accepts_nested_attributes_for :category_assignments
  default_scope {order(created_at: "DESC")}
end
