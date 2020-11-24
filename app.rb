require 'sinatra/base'

class App < Sinatra::Base

    get "/newteam" do
        erb :newteam
    end

    post "/team" do
        puts params
        @teamName = params[:name]
        @coach = params[:coach]
        @pointGaurd = params[:pg]
        @shootingGaurd = params[:sg]
        @smallForward = params[:sf]
        @powerForward = params[:pf]
        @center = params[:c]
        erb :team
    end


end
