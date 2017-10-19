Rails.application.routes.draw do

  root "homes#greeting"
  # get '/greeting', to: "homes#"
  resource :cards, only: [:create, :show] do
  	collection do
  		get "/:friendly_id", to: "cards#show"
  	end
  end
end
