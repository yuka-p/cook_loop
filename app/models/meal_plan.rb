class MealPlan < ApplicationRecord
  belongs_to :user
  has_many :meal_items
end
