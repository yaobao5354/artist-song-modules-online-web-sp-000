module Test 
 
  module Findable
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end 
  end 
  
  module Memorable
  
    def reset_all
      self.all.clear 
    end 
  
    def count
      self.all.count
    end 
  
  end 
  
  module Paramable
  
    def to_param
      name.downcase.gsub(' ', '-')
    end 
  end 
  
end 