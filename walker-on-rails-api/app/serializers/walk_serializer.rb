class WalkSerializer < ActiveModel::Serializer
  attributes :id, :steps, :date, :user_id, :miles
  belongs_to :user
end

