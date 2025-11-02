class ServiceConnection < ApplicationRecord
  belongs_to :user
  encrypts :access_token
  encrypts :refresh_token

  # Handle the OAuth connections for the user.
end
