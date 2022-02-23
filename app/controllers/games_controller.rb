class GamesController < ApplicationController

    def create 
        game = Game.new(game_params)
        room = Room.find(game_params[:room_id])
        if game.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(game)
          ).serializable_hash
          GamesChannel.broadcast_to room, serialized_data
          head :ok
        end

    end

  end

  def show
    game = Game.find params[:id]
    GamesChannel.broadcast_to 
  end


  private
    
  def game_params
    params.require(:game).permit(:title, :room_id)
  end



end
