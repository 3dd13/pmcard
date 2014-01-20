class HomeController < ApplicationController

  def index
    @card = Card.all.order({created_at: :desc}).limit(3)
  end

  def about
  end

  def contact
  end
end