require "./config/environment"
require "./app/models/yak"

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end
  get "/" do
    @all_yaks = Yak.all
<<<<<<< HEAD
    erb :index
=======
    
    erb :signin
>>>>>>> 728666281347571645ca7d6cd3efce4ce6674a79
  end
  post "/new_yak" do
    @yak = Yak.new({:location => params[:location], :message => params[:message]})
    @yak.save
    @all_yaks = Yak.all
    erb :index
  end
  post '/delete_yak' do
#     Yak.find_by id: params = nil

  end

end

