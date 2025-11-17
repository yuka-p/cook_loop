class MealItem < ApplicationRecord
  belongs_to :meal_plan
  belongs_to :my_menu
end
