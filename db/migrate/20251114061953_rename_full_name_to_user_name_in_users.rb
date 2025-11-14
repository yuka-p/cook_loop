class RenameFullNameToUserNameInUsers < ActiveRecord::Migration[7.2]
  def change
    rename_column :users, :full_name, :user_name
  end
end
