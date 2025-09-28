class ServiceConnection < ApplicationRecord
  belongs_to :user

  # Handle the OAuth connections for the user.
end
