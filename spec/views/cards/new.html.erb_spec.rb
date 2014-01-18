require 'spec_helper'

describe "cards/new" do
  before(:each) do
    assign(:card, stub_model(Card,
      :title => "MyString",
      :description => "MyText",
      :buying_quantity => 1,
      :price => "9.99",
      :admin_id => 1
    ).as_new_record)
  end

  it "renders new card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cards_path, "post" do
      assert_select "input#card_title[name=?]", "card[title]"
      assert_select "textarea#card_description[name=?]", "card[description]"
      assert_select "input#card_buying_quantity[name=?]", "card[buying_quantity]"
      assert_select "input#card_price[name=?]", "card[price]"
      assert_select "input#card_admin_id[name=?]", "card[admin_id]"
    end
  end
end
