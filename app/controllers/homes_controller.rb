class HomesController < ApplicationController
  def index
  end

  def greeting  	
  	@desktop_templates = []
  	@mobile_templates = []
  	6.times do |index|
  		@desktop_templates << "card-#{index + 1}"
  		@mobile_templates << "mobile-card-#{index + 1}"
  	end
  end
end
