class BeveragesController < ApplicationController
  before_filter :authenticate_user!


  def index
    @beverages = current_user.beverages.all
  end

  def new
    @user = current_user
  end

  def create
    Beverage.create(params[:beverage])
    redirect_to '/beverages/:id'
  end

  def show
    @beverage = current_user.beverages.last
  end

  def destory
  end
end
