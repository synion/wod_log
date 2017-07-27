class Workout < ApplicationRecord
   #validates :wod, presence: true
  belongs_to :user
end
