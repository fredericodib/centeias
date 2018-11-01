class AddAdminFieldToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin_flag, :boolean
  end
end
