class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :gender, :weight, :height
  has_many :walks
end
