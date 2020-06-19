class Game < ApplicationRecord
  after_create :create_boards, :start_game
  has_one :client_board, class_name: 'Board', dependent: :destroy
  has_one :api_board, class_name: 'Board', dependent: :destroy

  has_secure_token :game_token

  private

  def create_boards
    self.api_board = Board.create(board_size: 5)
    self.client_board = Board.create(board_size: 5)
  end

  def start_game
    self.status = 'waiting for client'
  end
end
