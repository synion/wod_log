class CreatePersonalBests < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_bests do |t|
      t.date :date
      t.string :exercise
      t.string :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
