Rails.application.routes.draw do

  root "homes#index"
  get '/greeting', to: "homes#greeting"
  resource :cards, only: [:create, :show] do
  	collection do 
  		get "/:friendly_id", to: "cards#show"
  	end
  end
end
