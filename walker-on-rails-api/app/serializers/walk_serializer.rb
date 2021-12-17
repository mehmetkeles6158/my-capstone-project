class WalkSerializer < ActiveModel::Serializer
  attributes :id, :steps, :date, :user_id, :miles, :cal
  belongs_to :user
end

