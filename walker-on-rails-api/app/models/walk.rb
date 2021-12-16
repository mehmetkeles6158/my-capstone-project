class Walk < ApplicationRecord
  belongs_to :user

  def miles
    steps.to_f / 2000.to_f
  end

  # def total

  #   total_steps = 0
  #   walks.each do |walk|
  #     total_steps +=  walk["steps"]
  #   end
  #   return total_steps
  # end
     
    
  
  
end
