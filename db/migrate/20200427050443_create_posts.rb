class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.text :body
      t.integer :post_type

      t.timestamps
    end
  end
end
