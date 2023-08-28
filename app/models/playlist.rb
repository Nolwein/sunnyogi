class Playlist < ApplicationRecord
  belongs_to :lesson
  belongs_to :video
end
