class CreateTidalServiceConnections < ActiveRecord::Migration[8.0]
  def change
    create_table :tidal_service_connections do |t|
      t.timestamps
    end
  end
end
