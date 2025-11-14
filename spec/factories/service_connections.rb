# spec/factories/service_connections.rb
FactoryBot.define do
  factory :service_connection do
    user
    access_token { "encrypted_token_#{SecureRandom.hex}" }
    refresh_token { "encrypted_refresh_#{SecureRandom.hex}" }
    expires_at { 1.hour.from_now }
    service_user_id { "user_#{SecureRandom.hex(8)}" }

    # Subclass factories
    factory :tidal_service_connection, class: 'TidalServiceConnection' do
      # Tidal-specific attributes if needed
    end

    factory :spotify_service_connection, class: 'SpotifyServiceConnection' do
      # Spotify-specific attributes if needed
    end
  end
end