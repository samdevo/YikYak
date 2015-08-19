require "./config/environment"
require "./app/models/yak"
configure do
  set :public_folder, "public"
  set :views, "app/views"
end
class ApplicationController < Sinatra::Base
  configure do
  set :public_folder, "public"
  set :views, "app/views"
end
  get "/" do
    @all_yaks = Tweet.all
    
    erb :index
  end
  post "/new_yak" do
    @yak = Tweet.new({:nam => params[:nam], :message => params[:message]})
    @yak.save
    @all_yaks = Tweet.all
    erb :index
  end
  post '/delete_yak' do
    Tweet.find_by id: params = nil

  end
  
end

