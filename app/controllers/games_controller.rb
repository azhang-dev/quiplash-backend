class GamesController < ApplicationController

    def create 
        game = Game.new
    end

    def show
        game = Game.find params[:id]
        GamesChannel.broadcast_to
    end


    # def start_game

    # end


end
