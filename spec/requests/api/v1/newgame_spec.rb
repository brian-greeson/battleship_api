require 'rails_helper'

RSpec.describe "when a client request a newgame" do
  describe "with valid ship locations" do
    it "responds with a game_id" do
      ship_locations = {
        'carrier': 'a1,a2,a3,a4,a5',
        'battleship': 'b1,b2,b3,b4',
        'submarine': 'c1,c2,c3',
        'cruiser': 'd1,d2,d3',
        'destroyer': 'e1,e2'
      }
      post "/api/v1/newgame"
      expect(response).to be_successful

      game_response = JSON.parse(response.body, symbolize_names: true)
      game_attributes = game_response[:data][:attributes]
      expect(game_response[:data][:type]).to eq("game")
      expect(game_attributes[:status]).to eq("waiting for client")
      expect(game_attributes[:api_board][:board_size]).to eq(5)
      expect(game_attributes[:client_board][:board_size]).to eq(5)
      expect(game_attributes[:api_board][:hits]).to eq(nil)
      expect(game_attributes[:client_board][:hits]).to eq(nil)
      expect(game_attributes[:api_board][:misses]).to eq(nil)
      expect(game_attributes[:client_board][:misses]).to eq(nil)


    end

    it "responds with an api_move if the api goes first" do

    end
  end

end
