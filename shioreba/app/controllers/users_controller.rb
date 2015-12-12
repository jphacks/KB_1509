class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_records = Record.where(user_id: params[:id]).order(read_date: :desc, id: :desc)
  end
end
