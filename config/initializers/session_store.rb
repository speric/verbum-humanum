# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vh_session',
  :secret      => '3c96b611576ce8e70a706fdeab2da53aab764c2f269b3ca603177e5e637f1efffcb84dd489bf70234ee91fb2bb2a7165f78b0c45d8d532bf124c090d61ca6a7a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
