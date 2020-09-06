class WorkoutSession < ApplicationRecord
  belongs_to :user
  belongs_to :exercise

  validates :length, presense: true
end
