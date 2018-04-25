class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :mobile, :number_of_leave	
  end
end
