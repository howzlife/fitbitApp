class CreateActivities < ActiveRecord::Migration
  def up
    drop_table 'activities' if ActiveRecord::Base.connection.table_exists? 'activities'
    create_table :activities do |t|
      t.belongs_to :user, index: true
      t.string :type
      t.integer :time
      t.string :time_unit
      t.string :date
      t.integer :calories
      t.string :with_user

      t.timestamps null: false
    end
  end
end
