class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :status, :game_token, :created_at, :updated_at, :api_board, :client_board
end
