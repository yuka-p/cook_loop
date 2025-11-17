class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :my_menus, dependent: :destroy
  has_many :meal_plans
  has_many :user_genres, dependent: :destroy

  after_create :create_default_genres

  private

  def create_default_genres
    %w[主食 主菜 副菜 汁物].each do |name|
    self.user_genres.create!(name: name)
    end
  end
end
