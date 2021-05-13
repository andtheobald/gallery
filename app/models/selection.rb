class Selection < ApplicationRecord
  belongs_to :exhibit
  #validates :exhibitID, presence: true#, uniqueness: true
end
