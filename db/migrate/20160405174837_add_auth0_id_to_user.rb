class AddAuth0IdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :auth0_id, :string
  end
end
