class CreateCategoryAssignments < ActiveRecord::Migration
  def change
    create_table :category_assignments do |t|

      t.timestamps null: false
    end
  end
end
