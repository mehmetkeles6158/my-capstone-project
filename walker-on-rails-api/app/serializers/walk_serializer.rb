class WalkSerializer < ActiveModel::Serializer
  attributes :id, :optimal_steps, :miles, :status, :date, :user_id, :steps
  belongs_to :user
end
