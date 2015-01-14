class AddFeatureCaptionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :feature_caption, :string
  end
end
