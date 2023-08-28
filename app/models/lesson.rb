class Lesson < ApplicationRecord
  belongs_to :user
  has_many :playlists
  has_many :videos, through: :playlists

  validates :name, presence: true, uniqueness: true
  # validates :duration, lenght: { minimum: 1 }

  validates :breathing, inclusion: [true, false]
  validates :posture, inclusion: [true, false]
  validates :meditation, inclusion: [true, false]

  validates :level, inclusion: { in: %w(beginner intermediate advanced), message: "%{value} is not a valid level" }

  validates :boost, inclusion: { in: %w(Neck Chest Backbend Hips Hamstring Twits), message: "%{value} is not a valid boost" }

end
