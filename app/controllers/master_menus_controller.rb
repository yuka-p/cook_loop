# app/controllers/master_menus_controller.rb
class MasterMenusController < ApplicationController
  def index
    @master_menus = MasterMenu.order(:genre)
  end
end
