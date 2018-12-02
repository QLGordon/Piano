class Artist < ApplicationRecord
  has_many :events
  has_many :instrument
end
