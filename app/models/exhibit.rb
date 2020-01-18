class Exhibit < ApplicationRecord
  validates :img_url, presence: true, uniqueness: true
  validates :artwork_name, presence: true
  validates :artist_name, presence: true
  validates :information, presence: true
  validate :image_check

  def image_check
    if !File.exist?("app\\assets\\images\\#{img_url}")
      errors.add(:img_url, "Image not found!")
    end
  end
end
