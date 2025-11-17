class AddMasterMenuIdToMyMenus < ActiveRecord::Migration[7.2]
  def change
    add_reference :my_menus, :master_menu,  foreign_key: true
  end
end
