class AddValuesToUser < ActiveRecord::Migration
  def change
  	  	add_column :users, :age, :integer
  	  	add_column :users, :date_of_birth, :string
  	  	add_column :users, :gender, :string
  	  	add_column :users, :height, :string
  	  	add_column :users, :weight, :string
  end
end
