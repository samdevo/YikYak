require "./config/environment"
require "./app/models/yak"
require "./app/models/location"

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, "public"
    set :views, "app/views"
    enable :sessions
    set :session_secret, "flatironizcool"
  end
  get "/" do
    @yaks = Yak.all
    erb :signin
  end
  post '/signin' do
    session[:location_id] = params[:location]
    redirect '/index'
  end
  get "/index" do
    @yaks = Yak.all
    erb :index
  end
  post "/new_yak" do
    @yak = Yak.new({:location_id => session[:location_id], :message => params[:message]})
    @yak.save
    @yaks = Yak.all
    erb :index
  end
  post '/delete_yak' do
#     Yak.find_by id: params = nil

  end
  
end

