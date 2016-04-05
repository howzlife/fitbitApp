class CreateBurnedCalories < ActiveRecord::Migration
  def change
    create_table :burned_calories do |t|
      t.string :uid
      t.string :day
      t.integer :calories

      t.timestamps null: false
    end
  end
end
