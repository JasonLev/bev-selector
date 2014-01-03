class Beverage < ActiveRecord::Base
  attr_accessible :selection, :user_id

  belongs_to :user
end
