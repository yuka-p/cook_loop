class MyMenusController < ApplicationController
  before_action :authenticate_user!
  before_action :set_my_menu, only: [:show, :destroy]

  def index
    @my_menus = current_user.my_menus.order(created_at: :desc)
  end

  def show
    @my_menu = MyMenu.find(params[:id])
  end

  def new
    @my_menu = MyMenu.new
  end

  def edit
    @my_menu = MyMenu.find(params[:id])
  end

   def destroy
    @my_menu.destroy
    redirect_to my_menus_path, notice: "削除しました"
  end

  private

  def set_my_menu
    @my_menu = current_user.my_menus.find(params[:id])
  end

  # create, update, destroy も必要に応じて追加
end
