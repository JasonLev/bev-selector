class Beverage < ActiveRecord::Base
  attr_accessible :selection, :user_id

  belongs_to :user

  validates_presence_of :user_id
end
