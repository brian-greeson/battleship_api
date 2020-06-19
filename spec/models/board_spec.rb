require 'rails_helper'

RSpec.describe Board, type: :model do
  describe "relationships" do
    it { should belong_to(:game)}
    it { should validate_presence_of(:board_size)}

  end
end
