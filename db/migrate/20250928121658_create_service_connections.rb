class CreateServiceConnections < ActiveRecord::Migration[8.0]
  def change
    create_table :service_connections do |t|
      t.references :user, null: false, foreign_key: true
      t.string :service_type
      t.text :access_token
      t.text :refresh_token
      t.datetime :expires_at
      t.string :service_user_id

      t.timestamps
    end
  end
end
