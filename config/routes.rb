Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/bienvenida', to: 'home#index' #home es el nombre del controlador y index la accion(metodo)
  get 'articles/:id', to: 'articles#show' # :id es un comodin para pasarle el articulo que queremos consultar

  get '/articles/new', to: 'articles#new'
  post '/articles', to:'articles#create'

  get 'articles/:id/edit', to: 'articles#edit'
  
end
