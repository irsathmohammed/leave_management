class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :name, :string
  	add_column :users, :mobile, :bigint
  	add_column :users, :is_admin, :boolean
  	remove_column :leave_managements, :approved, :boolean
  	remove_column :leave_managements, :rejected, :boolean
  	add_column :leave_managements, :reason, :string
  end
end
