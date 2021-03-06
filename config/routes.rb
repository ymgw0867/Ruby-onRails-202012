Rails.application.routes.draw do

  #messages
  get   'message/index'
  get   'message',            to: 'message#index'
  
  get   'message/add'
  post  'message/add',        to: 'message#create'

  get   'message/edit/:id',   to: 'message#edit'
  patch 'message/edit/:id',   to: 'message#update'

  get   'message/delete/:id', to: 'message#delete'
  get   'message/:id',        to: 'message#show'

  #cars
  get   'cards/index'
  get   'cards',            to: 'cards#index'

  get   'cards/add'
  post  'cards/add'

  get   'cards/:id',        to: 'cards#show'

  get   'cards/edit/:id',   to: 'cards#edit'
  patch 'cards/edit/:id',   to: 'cards#edit'

  get   'cards/delete/:id', to: 'cards#delete'

  #people
  get   'people/delete/:id', to: 'people#delete'
  
  get   'people/find'
  post  'people/find'

  get   'people/edit/:id',   to: 'people#edit'
  post  'people/edit/:id',   to: 'people#update'
  patch 'people/edit/:id',   to: 'people#update'

  get   'people/index'
  get   'people',            to: 'people#index'

  get   'people/add'
  post  'people/add',        to: 'people#create'

  get   'people/:id',        to: 'people#show'


  #msgboard
  get  'msgboard',           to: 'msgboard#index'
  post 'msgboard',           to: 'msgboard#index'
  get  'msgboard/index'
  post 'msgboard/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  'hello/index'
  get  'hello',              to: 'hello#index'
  get  'hello/other'
  post 'hello',              to: 'hello#index'
  post 'hello/index'
end
