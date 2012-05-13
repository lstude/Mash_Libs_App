class Game < ActiveRecord::Base
  attr_accessible :name
  
  has_many :sheets
  has_many :players, :through => :sheets
  
  def mashup
    mashup = {}
    q_who = sheets.map do |s|
      s.q_who
    end
    
    q_what = sheets.map do |s|
      s.q_what
    end
    
    q_where = sheets.map do |s|
      s.q_where
    end
    
    q_when = sheets.map do |s|
      s.q_when
    end
    
    q_why = sheets.map do |s|
      s.q_why
    end
    
    a_who = sheets.map do |s|
      s.a_who
    end
    
    a_what = sheets.map do |s|
      s.a_what
    end
    
    a_where = sheets.map do |s|
      s.a_where
    end
    
    a_when = sheets.map do |s|
      s.a_when
    end
    
    a_why = sheets.map do |s|
      s.a_why
    end
    
    mashup[:q_who] = q_who.shuffle.first
    mashup[:q_what] = q_what.shuffle.first
    mashup[:q_where] = q_where.shuffle.first
    mashup[:q_when] = q_when.shuffle.first
    mashup[:q_why] = q_why.shuffle.first
    
    
    mashup[:a_who] = a_who.shuffle.first
    mashup[:a_what] = a_what.shuffle.first
    mashup[:a_where] = a_where.shuffle.first
    mashup[:a_when] = a_when.shuffle.first
    mashup[:a_why] = a_why.shuffle.first
    
    return mashup
  end
  
  
  
end
