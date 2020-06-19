require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "relationships" do
    it {should have_many(baords)}
  end
end
