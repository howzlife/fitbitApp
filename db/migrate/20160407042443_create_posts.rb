class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.text :content
      t.string :activity
      t.integer :with_user

      t.timestamps null: false
    end
  end
end
