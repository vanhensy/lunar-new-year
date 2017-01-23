class CardsController < ApplicationController
	before_action :set_card
	layout "card"

  def create
  	card = Card.create card_param
  	redirect_to greeting_path
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
