class Exhibit < ApplicationRecord
  validates :img_url, presence: true
  validates :artwork_name, presence: true
  validates :artist_name, presence: true
  validates :information, presence: true
end
