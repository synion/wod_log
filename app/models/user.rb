class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :workouts, dependent: :destroy
  has_many :personal_bests, dependent: :destroy
  
  def how_many?(type)
    eval("workouts.where.not(#{type}: \"\").count")
  end
end
