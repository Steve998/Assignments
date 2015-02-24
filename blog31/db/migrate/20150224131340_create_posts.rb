class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.text :post_body
      t.date :post_date
      t.string :post_author

      t.timestamps null: false
    end
  end
end
