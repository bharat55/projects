Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "movies" => "movies#index"
  get "movies/1" =>"movies#show"
end
