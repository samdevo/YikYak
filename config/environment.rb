require "bundler"
Bundler.require

configure :development do
  set :database, "sqlite3:db/database.bd"
end