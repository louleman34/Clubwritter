class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.references :theme, foreign_key: true
      t.references :category, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
