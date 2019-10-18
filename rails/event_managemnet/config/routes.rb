Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "events" => "event#index"
  get "events/:id" =>"event#view", as: :page
end
