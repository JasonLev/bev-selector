class FriendsController < ApplicationController
  def index
    @friends = current_user.friends.all
  end

  def new
    @user = current_user
  end

  def create
    Friend.create(params[:friend])
    redirect_to '/friends/:id'
  end

  def show
    @friend = current_user.friends.last
  end

  def destory
  end

end
