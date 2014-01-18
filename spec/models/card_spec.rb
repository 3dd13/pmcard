require 'spec_helper'

describe Card do
  context "when there is empty title" do
    it "should be invalid" do
      card = Card.new(title: "")
      card.should_not be_valid
    end
  end

  describe "#validates" do
    context "when there is title, description, and price"
      it "should be valid" do
        data = {
          title: "sth",
          description: "ajfa afdk ajdfla",
          price: 120
        }
        @card = Card.new(data)
        @card.should be_valid
      end
  end

  describe "#admin" do
    it "should return admins record" do
      card = FactoryGirl.create(:card)

      card.admin.should_not eq nil
    end
  end
end
