class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :title
      t.text :caption

      t.timestamps null: false
    end
  end
end
