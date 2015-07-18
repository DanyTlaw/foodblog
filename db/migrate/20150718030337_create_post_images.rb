class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.string :image_url
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
