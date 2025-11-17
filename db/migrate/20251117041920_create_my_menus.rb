class CreateMyMenus < ActiveRecord::Migration[7.2]
  def change
    create_table :my_menus do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :genre
      t.text :ingredients
      t.string :reference_url
      t.text :note
      t.date :last_cooked_at

      t.timestamps
    end
  end
end
