class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :parent_category_id
      t.boolean :is_public, default: true
      t.string :title

      t.timestamps
    end
  end
end
