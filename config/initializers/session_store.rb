# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_quoteopediarails_session',
  :secret      => '8541b2f2bb1f4139fbf44e9751b9658a263ddcded903369806abbc6b696749428ec9f4c8f3ea40de4e8aa44d38fdda814a2d564a60747ec5ac095e2f6b44a070'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
