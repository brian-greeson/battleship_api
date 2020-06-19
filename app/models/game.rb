class Game < ApplicationRecord
  has_many :game_boards
  has_one :client_board, through: :game_boards
  has_one :api_board, through: :game_boards
  
  has_secure_token :game_token
end
