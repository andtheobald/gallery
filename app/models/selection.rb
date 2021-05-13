class Selection < ApplicationRecord
  validates :exhibitID, presence: true#, uniqueness: true
end
