# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_secret_session',
  :secret      => '010eb5e0bc8ca495a49c63371724b6965d1481a3b640660555cfc4e9b2ae6b491a0138078d6482d6b6b83c0e90898656087a8ded635ab612a7ca01e1f3c0d9ec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
