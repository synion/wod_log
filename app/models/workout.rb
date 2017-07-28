class Workout < ApplicationRecord
  #validates :date, presence: true
  belongs_to :user
  
  
  def self.search(search)
     if search
        where("weightlifting LIKE ? OR strength LIKE ? OR gymnastics LIKE ? OR wod LIKE ? OR mobility LIKE ? OR other LIKE ?",
        "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
     else
        Workout.all
     end
  end
  
  def display_workout
    t = Array.new
    t << "weightlifting" unless weightlifting.blank?
    t << "strength" unless strength.blank?
    t << "gymnastics" unless gymnastics.blank?
    t << "wod" unless wod.blank?
    t << "mobility" unless mobility.blank?
    t << "other" unless other.blank?
    t.join(", ").to_s
  end
  
  
end
