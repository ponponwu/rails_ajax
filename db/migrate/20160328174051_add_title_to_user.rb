
class AddTitleToUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :job, :string
  	add_column :users, :description, :string
  end
end
