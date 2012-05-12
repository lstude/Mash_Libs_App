class Game < ActiveRecord::Base
  attr_accessible :name
  
  has_many :sheets
  has_many :players, :through => :sheets
end
