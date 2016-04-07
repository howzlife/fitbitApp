class AddActivityToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :activity, :integer
  end
end
