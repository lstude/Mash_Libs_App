class Player < ActiveRecord::Base
  attr_accessible :name
  
  has_many :sheets
  has_many :games, :through => :sheets
end
