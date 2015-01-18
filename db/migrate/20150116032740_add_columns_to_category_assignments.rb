class AddColumnsToCategoryAssignments < ActiveRecord::Migration
  def change
    add_column :category_assignments, :post_id, :integer
    add_column :category_assignments, :category_id, :integer
  end
end
