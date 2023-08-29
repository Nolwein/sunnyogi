class Video < ApplicationRecord
  has_many :playlists

  has_one_attached :miniature
  has_one_attached :content

  validates :name, presence: true, uniqueness: true

  validates :type, inclusion: { in: %w[breathing posture meditation], message: "%{value} is not a valid type" }
  validates :boost, inclusion: { in: %w[Neck Chest Backbend Hips Hamstring Twits], message: "%{value} is not a valid boost" }
  validates :level, inclusion: { in: %w[beginner intermediate advanced], message: "%{value} is not a valid level" }
end
