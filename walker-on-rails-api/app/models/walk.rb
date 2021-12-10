class Walk < ApplicationRecord
  belongs_to :user

  def steps
    
    if user.height.to_f / user.height.to_f >= 0.5 
      puts "5000"
    else
      puts "7000"
    end
  end

  
end
