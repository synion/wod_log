class AddDifferentWodTypesToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :strength, :text
    add_column :workouts, :weightlifting, :text
    add_column :workouts, :gymnastics, :text
    add_column :workouts, :mobility, :text
    add_column :workouts, :other, :text
  end
end
