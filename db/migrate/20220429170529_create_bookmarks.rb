class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.references :group, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
