class CardsController < ApplicationController
	before_action :set_card, only: [:show]
	layout "card"

  def create
  	card = Card.create card_param
  	redirect_to "/cards/#{card.slug}"
  end

  def show
  end

  private

  def set_card
  	@card = Card.friendly.find(params[:friendly_id])
  end

  def card_param
  	params.require(:card).permit(:sender, :receiver, :message, :template_id, :image_url)
  end
end
