class Api::V1::GameController < ApplicationController
  def create
    Game.create(ship_params)
    render json: {'something': 'here'}
  end

  private

  def ship_params
    params.permit(:carrier, :battleship, :submarine, :cruiser, :destroyer)
  end
end
