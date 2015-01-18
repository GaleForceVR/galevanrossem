class CategoryAssignment < ActiveRecord::Base
  belongs_to :category 
  belongs_to :post, inverse_of: :category_assignments
  accepts_nested_attributes_for :post
end
