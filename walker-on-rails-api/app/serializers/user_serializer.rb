class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :gender, :weight, :height, :optimal_steps
  has_many :walks
end
