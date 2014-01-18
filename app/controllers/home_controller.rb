class HomeController < ApplicationController

  def index
    @card_1 = Card.find(1)
    @card_2 = Card.find(2)
    @card_3 = Card.find(3)
  end
end