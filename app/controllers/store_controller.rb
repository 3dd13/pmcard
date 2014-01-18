class StoreController < ApplicationController
  def index
    @cards = Card.order(:price)
  end
end
