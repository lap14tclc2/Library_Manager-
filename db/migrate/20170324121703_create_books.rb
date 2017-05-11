class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|

      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.integer :pages

      t.timestamps null: false
    end
  end
end
