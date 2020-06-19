class Game < ApplicationRecord
  has_one :client_board, class_name: 'Board', dependent: :destroy
  has_one :api_board, class_name: 'Board', dependent: :destroy

  has_secure_token :game_token
end
