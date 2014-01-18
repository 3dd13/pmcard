require 'spec_helper'

describe Admin do
  describe "#cards" do
    it 'should return card records' do
      admin = FactoryGirl.create(:admin)
      card = FactoryGirl.create(:card, admin: admin)

      admin.cards.should eq [card]
    end
  end
end
