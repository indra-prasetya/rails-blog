class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.integer :category_id
      t.text :content
      t.boolean :is_published

      t.timestamps null: false
    end
    
    create_join_table :posts, :tags
  end
end
