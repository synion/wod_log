class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.date :date
      t.text :wod
      t.string :mood
      t.string :food
      t.string :weather

      t.timestamps
    end
  end
end
