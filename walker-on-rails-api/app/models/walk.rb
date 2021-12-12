class Walk < ApplicationRecord
  belongs_to :user

  def miles
    steps.to_f / 2000.to_f
  end
  
end
