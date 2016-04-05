class CreateConsumedCalories < ActiveRecord::Migration
  def change
    create_table :consumed_calories do |t|
      t.string :uid
      t.string :day
      t.integer :calories

      t.timestamps null: false
    end
  end
end
