class Board < ApplicationRecord
  belongs_to :game
  validates_presence_of :board_size
end
