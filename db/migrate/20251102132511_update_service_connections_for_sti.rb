class UpdateServiceConnectionsForSti < ActiveRecord::Migration[8.0]
  def change
    # Rename service_type to type for STI
    rename_column :service_connections, :service_type, :type
    add_index :service_connections, :type

    # Add PKCE fields
    add_column :service_connections, :code_verifier, :string
    add_column :service_connections, :code_challenge, :string
    add_column :service_connections, :state, :string
    add_column :service_connections, :pkce_created_at, :datetime

    # Ensure token columns are text for encryption overhead
    change_column :service_connections, :access_token, :text
    change_column :service_connections, :refresh_token, :text
  end
end
