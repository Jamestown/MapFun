# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mapfun_session',
  :secret      => 'eef446c59b9fcfbbdb0b4b41febadfe257d73a28d077d97862b311a3ad874367c58055d52816bc5381445e9dfd5462f962f29aa88d6ac10b5f17960d45b85240'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
