class GamesController < ApplicationController

    def create 
        game = Game.new
    end

    def show
        game = Game.find params[:id]
    end
end
