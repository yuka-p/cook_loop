class CreateMealItems < ActiveRecord::Migration[7.2]
  def change
    create_table :meal_items do |t|
      t.references :meal_plan, null: false, foreign_key: true
      t.references :my_menu, null: false, foreign_key: true
      t.boolean :cooked
      t.datetime :cooked_at

      t.timestamps
    end
  end
end
