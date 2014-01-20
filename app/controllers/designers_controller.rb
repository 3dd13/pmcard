class DesignersController < ApplicationController

  def index
    @designers = Card.select(:card_designer).distinct(:card_designer).order(:card_designer).map do |dg|
        dg.card_designer
      end
  end

  def show
    @designer_cards = Card.where(card_designer: params[:designer_name])
  end
end
