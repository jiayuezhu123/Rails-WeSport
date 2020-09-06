class CreateWorkoutSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.integer :length
      t.integer :total_calories

      t.timestamps
    end
  end
end
