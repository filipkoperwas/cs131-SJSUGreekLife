Rails.application.routes.draw do
  get 'club_page/index'

  get 'club_page/show'

  get 'calendar/index'

  get 'home_page/index'
  root 'home_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
