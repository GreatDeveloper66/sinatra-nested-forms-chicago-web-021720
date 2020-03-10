require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end
    post '/pirates' do
      @pirate_name = params[:pirate][:name]
      @pirate_weight = params[:pirate][:weight]
      @pirate_height = params[:pirate][:height]
      @pirate_firstship = params[:pirate][:ships][0][:name]
      @pirate_firsttype = params[:pirate][:ships][0][:type]
      @pirate_firstbooty = params[:pirate][:ships][0][:booty]
      @pirate_secondship = params[:pirate][:ships][0][:name]
      @pirate_secondtype = params[:pirate][:ships][0][:type]
      @pirate_secondbooty = params[:pirate][:ships][0][:booty]
      erb :'pirates/show'
    end
  end
end
