class CreateMasterMenus < ActiveRecord::Migration[7.2]
  def change
    create_table :master_menus do |t|
      t.string :title
      t.integer :genre
      t.text :ingredients

      t.timestamps
    end
  end
end
