class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :parent_category_id
      t.boolean :is_public
      t.string :title

      t.timestamps
    end
  end
end
