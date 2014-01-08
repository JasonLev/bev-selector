class BevMailer < ActionMailer::Base
  default :from => "contact@bev-selector.com"

  def bev_confirmation(user)
    @user = current_user
    @friend = current_user.friends.last
    mail :to => "#{@friend.name} <#{@friend.email}>", :subject => "#{@user} ordered a drink with Bev Selector!"
  end
end