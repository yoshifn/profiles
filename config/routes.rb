Rails.application.routes.draw do
  get '/show' => 'application#show'
  get '/form' => 'application#form'
  get '/create_profile' => 'application#create'
  get '/profile/:id' => 'application#show'
end
