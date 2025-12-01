class AddGenreTypeToMyMenus < ActiveRecord::Migration[7.2]
  def change
    add_column :my_menus, :genre_type, :integer
  end
end
