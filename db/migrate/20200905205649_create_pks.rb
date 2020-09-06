class CreatePks < ActiveRecord::Migration[6.0]
  def change
    create_table :pks do |t|
      t.integer :user_one_id
      t.integer :user_two_id
      t.string :winner
      t.string :description

      t.timestamps
    end
  end
end
