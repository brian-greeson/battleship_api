require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "relationships" do
    it { should have_one(:client_board).dependent(:destroy) }
    it { should have_one(:api_board).dependent(:destroy) }
  end
end
