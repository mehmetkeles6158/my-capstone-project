class WalkSerializer < ActiveModel::Serializer
  attributes :id, :optimal_steps, :miles, :status, :date, :user_id
  belongs_to :user
end
