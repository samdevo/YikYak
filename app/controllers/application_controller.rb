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
    @all_yaks = Yak.all
    
    erb :index
  end
  post "/new_yak" do
    @yak = Yak.new({:name => params[:name], :message => params[:message]})
    @yak.save
    @all_yaks = Yak.all
    erb :index
  end
  post '/delete_yak' do
    Yak.find_by id: params = nil

  end
  
end

