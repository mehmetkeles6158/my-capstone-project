class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :gender, :weight, :height, :optimal_steps, :total_steps, :total_miles
  has_many :walks
end
