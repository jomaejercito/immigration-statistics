Rails.application.routes.draw do

root 'welcome#homepage'
get 'welcome/homepage'

resources :origins, only: [:index, :show]
resources :destinations, only: [:index, :show]

resources :facts, only: :index

namespace :charts do
  get "new-countries"
end

end
