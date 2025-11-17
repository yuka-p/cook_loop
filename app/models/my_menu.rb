class MyMenu < ApplicationRecord
  belongs_to :user
  belongs_to :master_menu, optional: true
  belongs_to :genre, class_name: "UserGenre", foreign_key: "genre_id"

  has_many :meal_items, dependent: :destroy

  validates :title, presence: true, length: { maximum: 15 }
  validates :genre, presence: true
end
