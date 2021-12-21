class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :walks

  def optimal_steps
    formula = height.to_f / weight.to_f

    if formula >=  0.49
      5200
    elsif formula >= 0.39 && formula < 0.49
      6300
    elsif formula >= 0.29 && formula < 0.39
      7600
    else
      8800
    end
  end

  def total_steps
    user_walks = walks
    total_steps = 0
    user_walks.each do |walk|
      total_steps +=  walk["steps"]
    end
    return total_steps
  end

  def total_miles
    total_steps.to_f/2000
  end

end
