require "./config/environment"
require "./app/models/tweet"
configure do
  set :public_folder, "public"
  set :views, "app/views"
end
class ApplicationController < Sinatra::Base
  configure do
  set :public_folder, "public"
  set :views, "app/views"
end