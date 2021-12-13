class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :walks

  def optimal_steps
    formula = height.to_f / weight.to_f

    if formula >=  0.39
      5200
    elsif formula > 0.29 && formula < 0.39
      6500
    else
      10000
    end
  end

end
