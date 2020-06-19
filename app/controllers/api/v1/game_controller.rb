class Api::V1::GameController < ApplicationController
  def create
    game = Game.create()
    render json: GameSerializer.new(game).serialized_json
  end

  private

  def ship_params
    params.permit(:carrier, :battleship, :submarine, :cruiser, :destroyer)
  end
end
