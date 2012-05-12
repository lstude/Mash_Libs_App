class Sheet < ActiveRecord::Base
  attr_accessible :a_what, :a_when, :a_where, :a_who, :a_why, :game_id, :player_id, :q_what, :q_when, :q_where, :q_who, :q_why

belongs_to :player
belongs_to :game

end
