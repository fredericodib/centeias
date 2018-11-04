class AddUserToRequest < ActiveRecord::Migration[5.1]
  def change
    add_reference :requests, :users, foreign_key: true
  end
end
