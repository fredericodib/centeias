class CreateAccessLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :access_logs do |t|
      t.references :user, foreign_key: true
      t.datetime :access_date

      t.timestamps
    end
  end
end
