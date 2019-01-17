class CreateOperationLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :operation_logs do |t|
      t.references :user, foreign_key: true
      t.references :article, foreign_key: true
      t.references :folder, foreign_key: true
      t.references :sub_article, foreign_key: true
      t.references :request, foreign_key: true
      t.string :operation

      t.timestamps
    end
  end
end
