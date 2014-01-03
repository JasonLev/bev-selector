class BeveragesController < ApplicationController
  before_filter :authenticate_user!


  def index
    @beverages = Beverage.all
  end

  def new
    @user = current_user
  end

  def create
    Beverage.create(params[:beverage])
    redirect_to '/beverages/:id'
  end

  def show
    @beverage = Beverage.last
  end

  def destory
  end
end
